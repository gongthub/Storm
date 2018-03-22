using Storm.Code;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using Storm.Repository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Application.WFManage
{
    public class FormApp
    {
        private IFormRepository service = new FormRepository();

        public List<FormEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<FormEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
                expression = expression.Or(t => t.EnCode.Contains(keyword));
            }
            return service.IQueryable(expression).OrderBy(t => t.SortCode).ToList();
        }
        public FormEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.Id == keyValue);
        }
        public void EnbaledForm(string keyValue)
        {
            FormEntity formEntity = GetForm(keyValue);
            if (formEntity != null && !string.IsNullOrEmpty(formEntity.Id))
            {
                formEntity.Modify(keyValue);
                formEntity.EnabledMark = true;
                service.Update(formEntity);
            }
            else
            {
                throw new Exception("获取数据异常！");
            }
        }
        public void DisabledForm(string keyValue)
        {
            FormEntity formEntity = GetForm(keyValue);
            if (formEntity != null && !string.IsNullOrEmpty(formEntity.Id))
            {
                formEntity.Modify(keyValue);
                formEntity.EnabledMark = false;
                service.Update(formEntity);
            }
            else
            {
                throw new Exception("获取数据异常！");
            }
        }
        public void SubmitForm(FormEntity formEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                formEntity.Modify(keyValue);
                service.Update(formEntity);
            }
            else
            {
                formEntity.EnabledMark = true;
                formEntity.Create();
                service.Insert(formEntity);
            }
        }
    }
}
