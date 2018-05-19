using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.MySqlRepository
{
    public class ApprovalProcessRepository : RepositoryBase<ApprovalProcessEntity>, IApprovalProcessRepository
    {
    }
}
