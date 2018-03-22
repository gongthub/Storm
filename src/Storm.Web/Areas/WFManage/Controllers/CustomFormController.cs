using Storm.Application.WFManage;
using Storm.Code;
using Storm.Domain.Entity.WFManage;
using System.Web.Mvc;

namespace Storm.Web.Areas.WFManage.Controllers
{
    public class CustomFormController : ControllerBase
    {
        private FormApp formApp = new FormApp();

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetGridJson(string keyword)
        {
            var data = formApp.GetList(keyword);
            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = formApp.GetForm(keyValue);
            return Content(data.ToJson());
        }

        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(FormEntity formEntity, string keyValue)
        {
            formApp.SubmitForm(formEntity, keyValue);
            return Success("操作成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteForm(string keyValue)
        {
            formApp.DeleteForm(keyValue);
            return Success("删除成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult EnbaledForm(string keyValue)
        {
            formApp.EnbaledForm(keyValue);
            return Success("启用成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DisabledForm(string keyValue)
        {
            formApp.DisabledForm(keyValue);
            return Success("禁用成功。");
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult Design()
        {
            return View();
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult SaveDesign(string keyValue, string codes)
        {
            //formApp.SaveDesign(keyValue, codes);
            return Success("保存成功。");
        }
    }
}
