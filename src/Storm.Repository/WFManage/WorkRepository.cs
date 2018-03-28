using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Repository.WFManage
{
    public class WorkRepository : RepositoryBase<WorkEntity>, IWorkRepository
    {
        public void AddForm(WorkEntity workEntity, List<WorkControlEntity> controls, List<WorkFileEntity> files)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                workEntity.Create();
                if (controls != null && controls.Count > 0)
                {
                    controls.ForEach(delegate(WorkControlEntity control) {
                        control.Id = Guid.NewGuid().ToString();
                        control.WorkId = workEntity.Id;
                        db.Insert(control);
                    });
                }
                if (files != null && files.Count > 0)
                {
                    files.ForEach(delegate(WorkFileEntity file)
                    {
                        file.Id = Guid.NewGuid().ToString();
                        file.WorkId = workEntity.Id;
                        db.Insert(file);
                    });
                }
                db.Insert(workEntity);
                db.Commit();
            }
        }
    }
}
