/*******************************************************************************
 * Copyright © 2016 Storm.Framework 版权所有
 * Author: Storm
 * Description: Storm快速开发平台
 * Website：http://www.nfine.cn
*********************************************************************************/
using Storm.Code;
using System;

namespace Storm.Domain
{
    public class IEntity<TEntity>
    {
        public void Create()
        {
            var entity = this as ICreationAudited;
            entity.Id = Common.GuId();
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                entity.CreatorUserId = LoginInfo.UserId;
            }
            entity.CreatorTime = DateTime.Now;
        }
        public void Modify(string keyValue)
        {
            var entity = this as IModificationAudited;
            entity.Id = keyValue;
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                entity.LastModifyUserId = LoginInfo.UserId;
            }
            entity.LastModifyTime = DateTime.Now;
        }
        public void Remove()
        {
            var entity = this as IDeleteAudited;
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                entity.DeleteUserId = LoginInfo.UserId;
            }
            entity.DeleteTime = DateTime.Now;
            entity.DeleteMark = true;
        }
    }
}
