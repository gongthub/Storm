using Storm.Application.WFManage;
using Storm.Domain.Entity.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Application.Infrastructure
{
    public class TOne
    {
        public int key { get; set; }
        public int value { get; set; }
    }
    public class WorkFlow : IWorkFlow
    {
        private WorkApp workApp = new WorkApp();
        private FlowApp flowApp = new FlowApp();
        private static event Action MyMethodEvent;
        private static List<TOne> dic = new List<TOne>();

        public void AddEndActive(Action action, int i)
        {
            dic.Add(new TOne() { key = i, value = action.GetHashCode() });
            MyMethodEvent += action;
        }

        public bool Start(SystemForm systemForm, string key)
        {
            bool bResult = false;
            try
            {
                FlowEntity flowEntity = flowApp.GetForm(systemForm);
                workApp.StartApply(flowEntity?.Id, key);
                bResult = true;
            }
            catch
            {
                bResult = false;
            }
            return bResult;
        }

        public bool Start(SystemForm systemForm, string key, Dictionary<string, string> prarms)
        {
            bool bResult = false;
            try
            {
                List<WorkControlEntity> controls = new List<WorkControlEntity>();
                if (prarms != null && prarms.Count > 0)
                {
                    WorkControlEntity workControlEntity = new WorkControlEntity();
                    foreach (var item in prarms)
                    {
                        workControlEntity = new WorkControlEntity();
                        workControlEntity.FullName = item.Key;
                        workControlEntity.Value = item.Value;
                        controls.Add(workControlEntity);
                    }
                }
                FlowEntity flowEntity = flowApp.GetForm(systemForm);
                workApp.StartApply(flowEntity?.Id, key, controls);
                bResult = true;
            }
            catch
            {
                bResult = false;
            }
            return bResult;
        }

        public void DoEndActive(int iT)
        {
            Delegate[] delegates = MyMethodEvent.GetInvocationList();
            List<int> lst = dic.Where(m => m.key == iT).Select(m => m.value).ToList();
            for (int i = 0; i < delegates.Length; i++)
            {
                int inum = delegates[i].GetHashCode();
                if (lst.Contains(inum))
                {
                    lst.Remove(inum);
                    delegates[i].DynamicInvoke();
                }
            }
        }

    }
}
