using Storm.Application.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Storm.Code;
using Storm.Domain.Entity.WFManage;

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
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult MyFlow()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult ApplyForm()
        {
            return View();
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetMyFlowGridJson(string keyword)
        {
            var data = workApp.GetMyWorkList(keyword);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(string flowId, int status, string contents)
        {
            string custrols = Request["custrols"];
            var files = Request.Files;
            List<WorkFileEntity> workFiles = workApp.UploadFiles(files);
            List<WorkControlEntity> workControls = new List<WorkControlEntity>();
            if (!string.IsNullOrEmpty(custrols))
            {
                workControls = custrols.ToObject<List<WorkControlEntity>>();
            }
            workApp.AddForm(flowId, status, contents, workControls, workFiles);
            if (status == 2)
            {
                return Success("提交成功。");
            }
            else
            {
                return Success("保存成功。");
            }
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitApply(string workId)
        {
            return Success("提交成功。");
        }
    }
}
