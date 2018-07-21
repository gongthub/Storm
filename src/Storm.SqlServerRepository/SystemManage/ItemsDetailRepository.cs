using Storm.Code;
using Storm.Data;
using Storm.Domain.Entity.SystemManage;
using Storm.Domain.IRepository.SystemManage;
using Storm.SqlServerRepository;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Text;

namespace Storm.SqlServerRepository
{
    public class ItemsDetailRepository : RepositoryBase<ItemsDetailEntity>, IItemsDetailRepository
    {
        public List<ItemsDetailEntity> GetItemList(string enCode)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(@"SELECT  d.Id
                                      ,d.ItemId
                                      ,d.ParentId
                                      ,d.ItemCode
                                      ,d.ItemName
                                      ,d.SimpleSpelling
                                      ,d.IsDefault
                                      ,d.Layers
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
                            FROM    Sys_ItemsDetail d
                                    INNER  JOIN Sys_Items i ON i.Id = d.ItemId
                            WHERE   1 = 1
                                    AND i.EnCode = @enCode
                                    AND d.EnabledMark = 1
                                    AND d.DeleteMark = 0
                            ORDER BY d.SortCode ASC");
            DbParameter[] parameter = 
            {
                 new SqlParameter("@enCode",enCode)
            };
            return this.FindList(strSql.ToString(), parameter);
        }
    }
}
