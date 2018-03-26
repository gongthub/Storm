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
    public class WorkApp
    {
        private IWorkRepository service = new WorkRepository();
        public List<WorkEntity> GetAllList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            return service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
        }
        public List<WorkEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            expression = expression.Or(t => t.DeleteMark != true);
            return service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
        }
        public List<WorkEntity> GetEnableList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            expression = expression.Or(t => t.DeleteMark != true && t.EnabledMark == true);
            return service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
        }
        public WorkEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.Id == keyValue);
        }
        public void SubmitForm(WorkEntity workEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                workEntity.Modify(keyValue);
                service.Update(workEntity);
            }
            else
            {
                workEntity.EnabledMark = true;
                workEntity.Create();
                service.Insert(workEntity);
            }
        }
    }
}
