using Storm.Application.Infrastructure;
using Storm.Code;
using System.Web.Mvc;
using System.Web.Routing;

namespace Storm.Web
{
    public class MvcApplication : System.Web.HttpApplication
    {
        /// <summary>
        /// 启动应用程序
        /// </summary>
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            IWorkFlow workFlow = new WorkFlow();
            workFlow.AddEndActive(m1,1);
            workFlow.AddEndActive(m3, 1);
            workFlow.AddEndActive(m2,2);
            workFlow.AddEndActive(m4, 2);
            WorkFlow workFlowe = new WorkFlow();
            workFlowe.DoEndActive(1);
        }

        public void m1()
        {
        }
        public void m2()
        {
        }
        public void m3()
        {
        }
        public void m4()
        {
        }
    }
}