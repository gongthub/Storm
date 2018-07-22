using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Storm.Domain.Entity.WFManage
{
    public class ApprovalCcsEntity : IEntity<ApprovalCcsEntity>, ICreationAudited, IDeleteAudited, IModificationAudited
    {
        public string Id { get; set; }
        public string WorkId { get; set; }
        public string NodeId { get; set; }
        public string ApprovalUserId { get; set; }
        public string CcUserId { get; set; }
        public int ApprovalStatus { get; set; }
        public bool IsViewed { get; set; }
        public bool? DeleteMark { get; set; }
        public string Description { get; set; }
        public DateTime? CreatorTime { get; set; }
        public string CreatorUserId { get; set; }
        public DateTime? LastModifyTime { get; set; }
        public string LastModifyUserId { get; set; }
        public DateTime? DeleteTime { get; set; }
        public string DeleteUserId { get; set; }
        [NotMapped]
        public string WorkName { get; set; }
        [NotMapped]
        public int WorkStatus { get; set; }
        [NotMapped]
        public string WorkStatusName { get; set; }
        [NotMapped]
        public int ApplyUserName { get; set; }
        [NotMapped]
        public string ApplyDeptName { get; set; }
        [NotMapped]
        public DateTime? ApplyTime { get; set; }
        [NotMapped]
        public string ApprovalUserName { get; set; }
        [NotMapped]
        public string ApprovalDeptName { get; set; }
        [NotMapped]
        public string ApprovalStatusName { get; set; }
        [NotMapped]
        public string CcUserName { get; set; }
    }
}
