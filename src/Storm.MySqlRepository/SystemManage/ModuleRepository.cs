using Storm.Data;
using Storm.Domain.Entity.SystemManage;
using Storm.Domain.IRepository.SystemManage;
using Storm.MySqlRepository;

namespace Storm.MySqlRepository
{
    public class ModuleRepository : RepositoryBase<ModuleEntity>, IModuleRepository
    {
    }
}
