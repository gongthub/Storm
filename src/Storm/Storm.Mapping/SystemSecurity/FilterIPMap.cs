/*******************************************************************************
 * Copyright © 2016 Storm.Framework 版权所有
 * Author: Storm
 * Description: Storm快速开发平台
 * Website：http://www.nfine.cn
*********************************************************************************/
using Storm.Domain.Entity.SystemSecurity;
using System.Data.Entity.ModelConfiguration;

namespace Storm.Mapping.SystemSecurity
{
    public class FilterIPMap : EntityTypeConfiguration<FilterIPEntity>
    {
        public FilterIPMap()
        {
            this.ToTable("Sys_FilterIP");
            this.HasKey(t => t.Id);
        }
    }
}
