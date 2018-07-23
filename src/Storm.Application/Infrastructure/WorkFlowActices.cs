using Storm.Application.WFManage;
using Storm.Domain.Entity.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using static Storm.Application.Infrastructure.WorkFlowCommon;

namespace Storm.Application.Infrastructure
{
    public class WorkFlowActices
    {
        private const string ASSEMBLYFILES = "Storm.Web|Storm.Application";
        static IWorkFlow workFlow = new WorkFlow();
        public static void InitRegistered()
        {
            string[] strLst = ASSEMBLYFILES.Split('|');
            foreach (var item in strLst)
            {
                Assembly assembly = Assembly.Load(item);
                Type[] types = assembly.GetExportedTypes();
                if (types != null)
                {
                    foreach (var type in types)
                    {
                        InitAttrMethods(type);
                    }
                }
            }
        }
        private static void InitAttrMethods(Type type)
        {
            MethodInfo[] memberInfos = type.GetMethods();
            if (memberInfos != null)
            {
                foreach (var item in memberInfos)
                {
                    string name = item.Name;
                    bool bStatus = item.IsDefined(typeof(WorkFlowAttribute), true);
                    if (bStatus)
                    {
                        EndFlowDelegate endFlowDelegate = (EndFlowDelegate)Delegate.CreateDelegate(typeof(EndFlowDelegate), item);
                        RegisteredEndActive(endFlowDelegate);
                    }
                }
            }
        }
        public static void RegisteredEndActive(EndFlowDelegate action)
        {
            WorkFlowApp.EndFlowEvent += action;
        }
    }
}
