using Storm.Application.WFManage;
using Storm.Domain.Entity.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Application.Infrastructure
{
    public class WorkFlow : IWorkFlow
    {
        private WorkApp workApp = new WorkApp();
        private FlowApp flowApp = new FlowApp();
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
                        workControlEntity.FullName= item.Key;
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

    }
}
