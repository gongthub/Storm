using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using Storm.RepositoryFactory;
using System.Collections.Generic;
using System.Linq;

namespace Storm.Application.WFManage
{
    public class WorkFlowApp
    {
        private IWorkFlowRepository service = DataAccess.CreateIWorkFlowRepository();
        private IApprovalProcessRepository approservice = DataAccess.CreateIApprovalProcessRepository();
        public void Start(string workId)
        {
            service.Start(workId);
        }
        public void Approval(string workId, int status, string desc)
        {
            service.Approval(workId, status, desc);
        }
        public List<ApprovalProcessEntity> GetApproProcessList(string workId)
        {
            List<ApprovalProcessEntity> models = new List<ApprovalProcessEntity>();
            models = approservice.IQueryable(m => m.WorkId == workId && m.DeleteMark != true
                && m.IsEnd != true && m.IsStart != true).OrderByDescending(m => m.CreatorTime).ToList();
            models?.ForEach(delegate(ApprovalProcessEntity model) {
                string desc = Code.EnumHelp.enumHelp.GetDescription(typeof(ApprovalStatus), model.ApprovalStatus);
                model.ApprovalStatusName = desc;
            });
            return models;
        }
    }
}
