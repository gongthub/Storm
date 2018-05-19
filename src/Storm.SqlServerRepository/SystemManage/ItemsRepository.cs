using Storm.Data;
using Storm.Domain.Entity.SystemManage;
using Storm.Domain.IRepository.SystemManage;
using Storm.SqlServerRepository;

namespace Storm.SqlServerRepository
{
    public class ItemsRepository : RepositoryBase<ItemsEntity>, IItemsRepository
    {

    }
}
