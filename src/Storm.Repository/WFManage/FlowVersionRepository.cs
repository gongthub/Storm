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
    public class FlowVersionRepository : RepositoryBase<FlowVersionEntity>, IFlowVersionRepository
    {
        public FlowVersionEntity GetNewFlowVersion(string flowId)
        {
            FlowVersionEntity entity = new FlowVersionEntity();
            entity = IQueryable(m => m.DeleteMark != true && m.FlowId == flowId).OrderByDescending(m => m.CreatorTime).FirstOrDefault();
            return entity;
        }
    }
}
