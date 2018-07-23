using Storm.Application.WFManage;
using Storm.Domain.Entity.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Storm.Application.Infrastructure.WorkFlowCommon;

namespace Storm.Application.Infrastructure
{
    public class WorkFlowActices
    {
        public static void InitRegistered()
        {
            WorkFlowApp.EndFlowEvent += EndTestFlow;
        }

        [WorkFlow(systemForm = SystemForm.Test)]
        private static void EndTestFlow(EndFlowEventArgs eventArgs)
        {

        }
    }
}
