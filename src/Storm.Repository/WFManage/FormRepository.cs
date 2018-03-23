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
    }
}
