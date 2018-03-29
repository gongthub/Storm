using Storm.Domain.IRepository.WFManage;
using Storm.Repository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Application.WFManage
{
    public class WorkFlowApp
    {
        private IWorkFlowRepository service = new WorkFlowRepository();
        public void Start(string workId)
        {
            service.Start(workId);
        }
    }
}
