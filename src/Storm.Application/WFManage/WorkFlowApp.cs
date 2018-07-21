using Storm.Application.Infrastructure;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using Storm.RepositoryFactory;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static Storm.Application.Infrastructure.WorkFlowCommon;

namespace Storm.Application.WFManage
{
    public class WorkFlowApp
    {
        private IWorkFlowRepository service = DataAccess.CreateIWorkFlowRepository();
        private IApprovalProcessRepository approservice = DataAccess.CreateIApprovalProcessRepository();
        public static event EndFlowDelegate EndFlowEvent;
        public void Start(string workId)
        {
            bool isEnd = false;
            service.Start(workId, ref isEnd);
            if (isEnd)
            {
                DoEndActive(workId);
            }
        }
        public void Approval(string workId, int status, string desc)
        {
            bool isEnd = false;
            service.Approval(workId, status, desc, ref isEnd);
            if (isEnd)
            {
                DoEndActive(workId);
            }
        }
        public List<ApprovalProcessEntity> GetApproProcessList(string workId)
        {
            List<ApprovalProcessEntity> models = new List<ApprovalProcessEntity>();
            models = approservice.IQueryable(m => m.WorkId == workId && m.DeleteMark != true
                && m.IsEnd != true && m.IsStart != true).OrderByDescending(m => m.CreatorTime).ToList();
            models?.ForEach(delegate (ApprovalProcessEntity model)
            {
                string desc = Code.EnumHelp.enumHelp.GetDescription(typeof(ApprovalStatus), model.ApprovalStatus);
                model.ApprovalStatusName = desc;
            });
            return models;
        }

        public void DoEndActive(string key)
        {
            int type = new WorkApp().GetSystemFormTypeByworkId(key);
            EndFlowEventArgs endFlowEventArgs = new EndFlowEventArgs();
            endFlowEventArgs.key = key;
            System.Delegate[] delegates = EndFlowEvent.GetInvocationList();
            List<int> activelst = RegisteredFormLst.Where(m => m.key == key)
                .Select(m => m.value).Distinct().ToList();
            for (int i = 0; i < delegates.Length; i++)
            {
                int inum = delegates[i].Method.GetHashCode();
                object[] attributes = delegates[i].Method.GetCustomAttributes(typeof(WorkFlowAttribute), true);
                if (attributes != null && attributes.Count() > 0)
                {
                    WorkFlowAttribute workFlowAttribute = (WorkFlowAttribute)attributes[0];
                    if ((int)workFlowAttribute.systemForm == type)
                    {
                        activelst.Remove(inum);
                        delegates[i].DynamicInvoke(endFlowEventArgs);
                    }
                }
            }
        }
    }
}
