using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System.Collections.Generic;

namespace Storm.MySqlRepository
{
    public class WFItemRepository : RepositoryBase<WFItemEntity>, IWFItemRepository
    {
        public List<WFItemEntity> GetNotDelList()
        {
            throw new System.NotImplementedException();
        }
        public List<WFItemEntity> GetEnableList()
        {
            throw new System.NotImplementedException();
        }
    }
}
