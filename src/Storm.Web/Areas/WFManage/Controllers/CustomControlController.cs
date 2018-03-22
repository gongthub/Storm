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
