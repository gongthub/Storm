using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Collections.Generic;

namespace Storm.Repository.WFManage
{
    public class FormRepository : RepositoryBase<FormEntity>, IFormRepository
    {
        public void SaveDesign(FormEntity formEntity, List<FormControlEntity> formControlModels)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                formEntity.Modify(formEntity.Id);
                db.Delete<FormControlEntity>(m => m.FormId == formEntity.Id);
                if (formControlModels != null && formControlModels.Count > 0)
                {
                    foreach (var item in formControlModels)
                    {
                        item.Id = Guid.NewGuid().ToString();
                        item.FormId = formEntity.Id;
                        db.Insert(item);
                    }
                }
                db.Update(formEntity);
                db.Commit();
            }
        }
        public FormControlEntity GetControl(string formId, string controlId)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                return db.FindEntity<FormControlEntity>(m => m.FormId == formId && m.ControlId == controlId);
            }
        }
    }
}
