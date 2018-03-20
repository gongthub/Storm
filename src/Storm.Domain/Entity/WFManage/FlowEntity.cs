﻿using System;
using System.Collections.Generic;

namespace Storm.Domain.Entity.WFManage
{
    public class FlowEntity : IEntity<FlowEntity>, ICreationAudited, IDeleteAudited, IModificationAudited
    {
        public string Id { get; set; }
        public string EnCode { get; set; }
        public string FullName { get; set; }
        public string Codes { get; set; }
        public int? SortCode { get; set; }
        public bool? DeleteMark { get; set; }
        public bool? EnabledMark { get; set; }
        public string Description { get; set; }
        public DateTime? CreatorTime { get; set; }
        public string CreatorUserId { get; set; }
        public DateTime? LastModifyTime { get; set; }
        public string LastModifyUserId { get; set; }
        public DateTime? DeleteTime { get; set; }
        public string DeleteUserId { get; set; }
        public List<FlowNodeEntity> Nodes { set; get; }
        public List<FlowLineEntity> Lines { set; get; }
        public List<FlowAreaEntity> Areas { set; get; }
    }
}
