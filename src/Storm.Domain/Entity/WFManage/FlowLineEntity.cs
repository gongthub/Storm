using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Domain.Entity.WFManage
{
    public class FlowLineEntity
    {
        public string Id { set; get; }
        public string FlowId { set; get; }
        public string MarkName { set; get; }
        public string Name { set; get; }
        public string From { set; get; }
        public string To { set; get; }
        public bool Marked { set; get; }
    }
}
