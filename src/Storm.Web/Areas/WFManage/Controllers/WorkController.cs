using Storm.Application.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Storm.Code;

namespace Storm.Web.Areas.WFManage.Controllers
{
    public class WorkController : ControllerBase
    {
        private WorkApp workApp = new WorkApp();

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetGridJson(string keyword)
        {
            var data = workApp.GetList(keyword);
            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = workApp.GetForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormDesignJosn(string keyValue)
        {
            var data = workApp.GetFormDesign(keyValue);
            var result = new { codes = Server.HtmlDecode(data) };
            return Content(result.ToJson());
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult Apply()
        {
            return View();
        }
    }
}
