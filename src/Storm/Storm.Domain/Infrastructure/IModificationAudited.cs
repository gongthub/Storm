/*******************************************************************************
 * Copyright © 2016 Storm.Framework 版权所有
 * Author: Storm
 * Description: Storm快速开发平台
 * Website：http://www.nfine.cn
*********************************************************************************/
using System;

namespace Storm.Domain
{
    public interface IModificationAudited
    {
        string Id { get; set; }
        string LastModifyUserId { get; set; }
        DateTime? LastModifyTime { get; set; }
    }
}