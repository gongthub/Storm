using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Domain.Entity.WFManage
{
    public class MyApprovalCcsEntity
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
        public string WorkName { get; set; }
        public int WorkStatus { get; set; }
        [NotMapped]
        public string WorkStatusName { get; set; }
        public string ApplyUserName { get; set; }
        public string ApplyDeptName { get; set; }
        public DateTime? ApplyTime { get; set; }
        public string ApprovalUserName { get; set; }
        public string ApprovalDeptName { get; set; }
        [NotMapped]
        public string ApprovalStatusName { get; set; }
        public string CcUserName { get; set; }
    }
}
