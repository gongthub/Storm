﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Domain.Entity.WFManage
{
    public class FlowVersionEntity : IEntity<FlowVersionEntity>, ICreationAudited, IDeleteAudited, IModificationAudited
    {
        public string Id { get; set; }
        public string FlowId { get; set; }
        public string EnCode { get; set; }
        public string FullName { get; set; }
        public string Codes { get; set; }
        public int InitNum { get; set; }
        public bool? DeleteMark { get; set; }
        public bool? EnabledMark { get; set; }
        public string Description { get; set; }
        public DateTime? CreatorTime { get; set; }
        public string CreatorUserId { get; set; }
        public DateTime? LastModifyTime { get; set; }
        public string LastModifyUserId { get; set; }
        public DateTime? DeleteTime { get; set; }
        public string DeleteUserId { get; set; }

        [NotMapped]
        public List<FlowNodeEntity> Nodes { set; get; }
        [NotMapped]
        public List<FlowLineEntity> Lines { set; get; }
        [NotMapped]
        public List<FlowAreaEntity> Areas { set; get; }
    }
}
