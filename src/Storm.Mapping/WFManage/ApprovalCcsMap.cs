using Storm.Domain.Entity.WFManage;
using System.Data.Entity.ModelConfiguration;

namespace Storm.Mapping.WFManage
{
    public class ApprovalCcsMap : EntityTypeConfiguration<ApprovalCcsEntity>
    {
        public ApprovalCcsMap()
        {
            this.ToTable("WF_ApprovalCcs");
            this.HasKey(t => t.Id);
        }
    }
}
