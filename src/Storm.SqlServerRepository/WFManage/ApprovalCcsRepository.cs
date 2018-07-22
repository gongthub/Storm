using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;

namespace Storm.SqlServerRepository.WFManage
{
    public class ApprovalCcsRepository : RepositoryBase<ApprovalCcsEntity>, IApprovalCcsRepository
    {
    }
}
