﻿using MySql.Data.MySqlClient;
using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;

namespace Storm.MySqlRepository
{
    public class WFItemDetailRepository : RepositoryBase<WFItemDetailEntity>, IWFItemDetailRepository
    {
        public List<WFItemDetailEntity> GetItemDetailList(string enCode)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(@"SELECT     d.Id
                                      ,d.ItemId
                                      ,d.ParentId
                                      ,d.ItemCode
                                      ,d.ItemName
                                      ,d.SortCode
                                      ,d.DeleteMark
                                      ,d.EnabledMark
                                      ,d.Description
                                      ,d.CreatorTime
                                      ,d.CreatorUserId
                                      ,d.LastModifyTime
                                      ,d.LastModifyUserId
                                      ,d.DeleteTime
                                      ,d.DeleteUserId
                            FROM    WF_ItemDetails d
                                    INNER  JOIN WF_Items i ON i.Id = d.ItemId
                            WHERE   1 = 1
                                    AND i.EnCode = @enCode
                                    AND d.EnabledMark = 1
                            ORDER BY d.SortCode ASC");
            DbParameter[] parameter = 
            {
                 new MySqlParameter("@enCode",enCode)
            };
            List < WFItemDetailEntity > models= this.FindList(strSql.ToString(), parameter);
            if (models != null)
            {
                models = models.Where(m => m.DeleteMark != true).ToList();
            }
            return models;
        }
        public List<WFItemDetailEntity> GetItemDetailByItemIdList(string itemId)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(@"SELECT     d.Id
                                      ,d.ItemId
                                      ,d.ParentId
                                      ,d.ItemCode
                                      ,d.ItemName
                                      ,d.SortCode
                                      ,d.DeleteMark
                                      ,d.EnabledMark
                                      ,d.Description
                                      ,d.CreatorTime
                                      ,d.CreatorUserId
                                      ,d.LastModifyTime
                                      ,d.LastModifyUserId
                                      ,d.DeleteTime
                                      ,d.DeleteUserId
                            FROM    WF_ItemDetails d
                                    INNER  JOIN WF_Items i ON i.Id = d.ItemId
                            WHERE   1 = 1
                                    AND i.Id = @Id
                                    AND d.EnabledMark = 1
                            ORDER BY d.SortCode ASC");
            DbParameter[] parameter = 
            {
                 new MySqlParameter("@Id",itemId)
            };
            List<WFItemDetailEntity> models = this.FindList(strSql.ToString(), parameter);
            if (models != null)
            {
                models = models.Where(m => m.DeleteMark != true).ToList();
            }
            return models;
        }
    }
}
