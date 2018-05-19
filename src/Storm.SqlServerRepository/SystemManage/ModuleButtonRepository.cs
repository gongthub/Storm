using Storm.Data;
using Storm.Domain.Entity.SystemManage;
using Storm.Domain.IRepository.SystemManage;
using Storm.SqlServerRepository;
using System.Collections.Generic;

namespace Storm.SqlServerRepository
{
    public class ModuleButtonRepository : RepositoryBase<ModuleButtonEntity>, IModuleButtonRepository
    {
        public void SubmitCloneButton(List<ModuleButtonEntity> entitys)
        {
            using (var db = new RepositoryBase().BeginTrans())
            {
                foreach (var item in entitys)
                {
                    db.Insert(item);
                }
                db.Commit();
            }
        }
    }
}
