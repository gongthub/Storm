﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Domain.Entity.WFManage
{
    public class WorkEntity : IEntity<WorkEntity>, ICreationAudited, IDeleteAudited, IModificationAudited
    {
        public string Id { get; set; }
        public string FullName { get; set; }
        public string FlowVersionId { get; set; }
        public string ApplyUserId { get; set; }
        public int FlowStatus { get; set; }
        public string CurrentId { get; set; }
        public string CurrentUsers { get; set; }
        public string Contents { get; set; }
        public bool? DeleteMark { get; set; }
        public bool? EnabledMark { get; set; }
        public string Description { get; set; }
        public DateTime? CreatorTime { get; set; }
        public string CreatorUserId { get; set; }
        public DateTime? LastModifyTime { get; set; }
        public string LastModifyUserId { get; set; }
        public DateTime? DeleteTime { get; set; }
        public string DeleteUserId { get; set; }
    }
}