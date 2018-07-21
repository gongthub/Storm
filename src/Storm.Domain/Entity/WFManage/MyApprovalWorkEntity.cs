using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Domain.Entity.WFManage
{
    public class MyApprovalWorkEntity
    {
        public string Id { get; set; }
        public string FullName { get; set; }
        public string ApplyUserId { get; set; }
        public int FlowStatus { get; set; }
        public string ApplyUserName { get; set; }
        public string ApplyDeptName { get; set; }
        public string ApprovalUserId { get; set; }
        public string ApprovalUserName { get; set; }
        public string ApprovalDeptName { get; set; }
        public int ApprovalStatus { get; set; }
        public DateTime? ApprovalTime { get; set; }
        public bool? DeleteMark { get; set; }
        public DateTime? CreatorTime { get; set; }
        [NotMapped]
        public string FlowStatusName { get; set; }
        [NotMapped]
        public string ApprovalStatusName { get; set; }
    }
}
