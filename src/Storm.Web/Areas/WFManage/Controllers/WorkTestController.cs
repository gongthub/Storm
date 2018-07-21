using Storm.Application.Infrastructure;
using Storm.Domain.Entity.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static Storm.Application.Infrastructure.WorkFlowCommon;

namespace Storm.Web.Areas.WFManage.Controllers
{
    public class WorkTestController : ControllerBase
    {
        IWorkFlow workFlow = new WorkFlow();

        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DoTest()
        {
            //提交系统表单流程申请
            workFlow.Start(SystemForm.Test, Guid.NewGuid().ToString());
            //注册流程审核结束处理函数
            workFlow.RegisteredEndActive(EndTestFlow);
            return Success("操作成功。");
        }

        [WorkFlow(systemForm = SystemForm.Test)]
        public void EndTestFlow(EndFlowEventArgs eventArgs)
        {

        }
    }
}