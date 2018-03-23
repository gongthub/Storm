using Storm.Code;
using Storm.Domain.Entity.WFManage;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Storm.Web.Areas.WFManage.Controllers
{
    public class CustomControlController : ControllerBase
    {
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult TextControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult TextAreaControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult RedioControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult CheckBoxControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult HiddenControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult LableControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult SelectControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult ComboxControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult OrgControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult DateControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult DateTimeControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult FilesControl()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult DefaultProgram()
        {
            return View();
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetDefaultProgramsJson(string keyword)
        {
            List<EnumModel> models = EnumHelp.enumHelp.EnumToList(typeof(FormDefaultProgram));
            return Content(models.ToJson());
        }
    }
}
