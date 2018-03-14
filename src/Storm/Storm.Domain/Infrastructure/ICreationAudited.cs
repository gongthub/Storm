/*******************************************************************************
 * Copyright © 2016 Storm.Framework 版权所有
 * Author: Storm
 * Description: Storm快速开发平台
 * Website：http://www.nfine.cn
*********************************************************************************/
using System;

namespace Storm.Domain
{
    public interface ICreationAudited
    {
        string Id { get; set; }
        string CreatorUserId { get; set; }
        DateTime? CreatorTime { get; set; }
    }
}