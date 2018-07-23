using Storm.Application.Infrastructure;
using Storm.Application.WFManage;
using Storm.Domain.Entity.WFManage;
using System;
using System.Web.Mvc;
using System.Web.Routing;
using static Storm.Application.Infrastructure.WorkFlowCommon;

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
            //注册系统表单流程审核结束函数
            WorkFlowActices.InitRegistered();
        }

        protected void Application_BeginRequest()
        {
           
        }
    }
}