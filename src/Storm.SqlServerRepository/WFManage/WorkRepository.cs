using Storm.Code;
using Storm.Data;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.SqlServerRepository
{
    public class WorkRepository : RepositoryBase<WorkEntity>, IWorkRepository
    {
        public void AddForm(WorkEntity workEntity, List<WorkControlEntity> controls, List<WorkFileEntity> files)
        {
            try
            {
                using (var db = new RepositoryBase().BeginTrans())
                {
                    if (controls != null && controls.Count > 0)
                    {
                        controls.ForEach(delegate (WorkControlEntity control)
                        {
                            control.Id = Guid.NewGuid().ToString();
                            control.WorkId = workEntity.Id;
                            db.Insert(control);
                        });
                    }
                    if (files != null && files.Count > 0)
                    {
                        files.ForEach(delegate (WorkFileEntity file)
                        {
                            file.Id = Guid.NewGuid().ToString();
                            file.WorkId = workEntity.Id;
                            db.Insert(file);
                        });
                    }
                    db.Insert(workEntity);
                    db.Commit();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateForm(WorkEntity workEntity, List<WorkControlEntity> controls, List<WorkFileEntity> files, List<string> RemoveFileIds)
        {
            try
            {
                using (var db = new RepositoryBase().BeginTrans())
                {
                    workEntity.Modify(workEntity.Id);
                    db.Delete<WorkControlEntity>(m => m.WorkId == workEntity.Id);
                    if (controls != null && controls.Count > 0)
                    {
                        controls.ForEach(delegate (WorkControlEntity control)
                        {
                            control.Id = Guid.NewGuid().ToString();
                            control.WorkId = workEntity.Id;
                            db.Insert(control);
                        });
                    }
                    if (RemoveFileIds != null && RemoveFileIds.Count > 0)
                    {
                        db.Delete<WorkFileEntity>(m => RemoveFileIds.Contains(m.Id));
                    }
                    if (files != null && files.Count > 0)
                    {
                        files.ForEach(delegate (WorkFileEntity file)
                        {
                            file.Id = Guid.NewGuid().ToString();
                            file.WorkId = workEntity.Id;
                            db.Insert(file);
                        });
                    }
                    db.Update(workEntity);
                    db.Commit();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public List<WorkControlEntity> GetWorkControls(string workIds)
        {
            List<WorkControlEntity> models = new List<WorkControlEntity>();
            using (var db = new RepositoryBase())
            {
                models = db.IQueryable<WorkControlEntity>(m => m.WorkId == workIds).ToList();
            }
            return models;
        }

        public List<WorkFileEntity> GetWorkFiles(string workIds)
        {
            List<WorkFileEntity> models = new List<WorkFileEntity>();
            using (var db = new RepositoryBase())
            {
                models = db.IQueryable<WorkFileEntity>(m => m.WorkId == workIds).ToList();
            }
            return models;
        }


        public List<MyPendingWorkEntity> GetMyPendingList(string keyword = "")
        {
            try
            {
                string applyUserId = string.Empty;
                var loguser = OperatorProvider.Provider.GetCurrent();
                if (loguser != null)
                {
                    applyUserId = loguser.UserId;
                }
                else
                {
                    throw new Exception("当前用户信息异常！");
                }
                List<MyPendingWorkEntity> models = new List<MyPendingWorkEntity>();
                using (var db = new RepositoryBase())
                {
                    string strSql = @"SELECT
	                                            *
                                            FROM
	                                            (
		                                            SELECT
			                                            A.Id,
			                                            A.FullName,
			                                            A.FlowVersionId,
			                                            A.ApplyUserId,
			                                            A.FlowStatus,
			                                            A.CurrentNodeId,
			                                            A.CurrentUsers,
			                                            A.Codes,
			                                            A.Contents,
			                                            A.DeleteMark,
			                                            A.EnabledMark,
			                                            A.Description,
			                                            A.CreatorTime,
			                                            A.CreatorUserId,
			                                            A.LastModifyTime,
			                                            A.LastModifyUserId,
			                                            A.DeleteTime,
			                                            A.DeleteUserId,
			                                            B.RealName UserName,
			                                            C.FullName DeptName
		                                            FROM
			                                            WF_Works A
		                                            LEFT JOIN Sys_User B ON A.ApplyUserId = B.Id
		                                            LEFT JOIN Sys_Organize C ON B.DepartmentId = C.Id
	                                            ) A
                                            WHERE
	                                            A.CurrentUsers LIKE @appuserId
                                            AND (
	                                            A.DeleteMark IS NULL
	                                            OR A.DeleteMark != 1
                                            )
                                            AND A.FlowStatus = 2";

                    if (!string.IsNullOrEmpty(keyword))
                    {
                        strSql += " and (A.UserName like @userName or A.DeptName like @deptName or A.FullName like @name)";
                        DbParameter[] parameter =
                            {
                                 new SqlParameter("@userName","%" + keyword+ "%"),
                                 new SqlParameter("@deptName","%" + keyword+ "%"),
                                 new SqlParameter("@name","%" + keyword+ "%"),
                                 new SqlParameter("@appuserId", "%" + applyUserId+ "%")
                            };
                        models = db.FindList<MyPendingWorkEntity>(strSql.ToString(), parameter);
                    }
                    else
                    {

                        DbParameter[] parameter =
                            {
                                 new SqlParameter("@appuserId", "%" + applyUserId+ "%")
                            };
                        models = db.FindList<MyPendingWorkEntity>(strSql.ToString(), parameter);
                    }
                }
                models = models.OrderByDescending(m => m.CreatorTime).ToList();
                return models;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<MyApprovalWorkEntity> GetMyApprovalList(string keyword = "")
        {
            try
            {
                string approvalUserId = string.Empty;
                var loguser = OperatorProvider.Provider.GetCurrent();
                if (loguser != null)
                {
                    approvalUserId = loguser.UserId;
                }
                else
                {
                    throw new Exception("当前用户信息异常！");
                }
                List<MyApprovalWorkEntity> models = new List<MyApprovalWorkEntity>();
                using (var db = new RepositoryBase())
                {
                    string strSql = @"SELECT DISTINCT
	                                        *
                                        FROM
	                                        (
		                                        SELECT
			                                        A.Id,
			                                        A.FullName,
			                                        A.ApplyUserId,
			                                        A.FlowStatus,
			                                        A.CreatorTime,
			                                        A.DeleteMark,
			                                        D.RealName ApplyUserName,
			                                        E.FullName ApplyDeptName,
			                                        B.Id ApprovalUserId,
			                                        B.RealName ApprovalUserName,
			                                        C.FullName ApprovalDeptName,
			                                        wfap.ApprovalStatus,
			                                        wfap.CreatorTime ApprovalTime
		                                        FROM
			                                        WF_Works A
		                                        LEFT JOIN wf_approvalprocess wfap ON A.Id = wfap.WorkId
		                                        AND wfap.IsStart != 1
		                                        AND wfap.IsEnd != 1
		                                        LEFT JOIN Sys_User B ON wfap.ApprovalUserId = B.Id
		                                        LEFT JOIN Sys_Organize C ON B.DepartmentId = C.Id
		                                        LEFT JOIN Sys_User D ON A.ApplyUserId = D.Id
		                                        LEFT JOIN Sys_Organize E ON D.DepartmentId = E.Id
	                                        ) A
                                        WHERE
	                                        A.ApprovalUserId = @approvalUser
                                        AND (
	                                        A.DeleteMark IS NULL
	                                        OR A.DeleteMark != 1
                                        )";

                    if (!string.IsNullOrEmpty(keyword))
                    {
                        strSql += " and (A.FullName like @FullName or A.ApplyUserName like @ApplyUserName or A.ApplyDeptName like @ApplyDeptName or A.ApprovalUserName like @ApprovalUserName or A.ApprovalDeptName like @ApprovalDeptName) ";
                        DbParameter[] parameter =
                            {
                                 new SqlParameter("@FullName","%" + keyword+ "%"),
                                 new SqlParameter("@ApplyUserName","%" + keyword+ "%"),
                                 new SqlParameter("@ApplyDeptName","%" + keyword+ "%"),
                                 new SqlParameter("@ApprovalUserName","%" + keyword+ "%"),
                                 new SqlParameter("@ApprovalDeptName","%" + keyword+ "%"),
                                 new SqlParameter("@approvalUser",approvalUserId)
                            };
                        models = db.FindList<MyApprovalWorkEntity>(strSql.ToString(), parameter);
                    }
                    else
                    {

                        DbParameter[] parameter =
                            {
                                 new SqlParameter("@approvalUser",approvalUserId)
                            };
                        models = db.FindList<MyApprovalWorkEntity>(strSql.ToString(), parameter);
                    }
                }
                models = models.OrderByDescending(m => m.ApprovalTime).ToList();
                return models;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<MyApprovalCcsEntity> GetWorkCcList(string keyword = "")
        {
            try
            {
                string approvalUserId = string.Empty;
                var loguser = OperatorProvider.Provider.GetCurrent();
                if (loguser != null)
                {
                    approvalUserId = loguser.UserId;
                }
                else
                {
                    throw new Exception("当前用户信息异常！");
                }
                List<MyApprovalCcsEntity> models = new List<MyApprovalCcsEntity>();
                using (var db = new RepositoryBase())
                {
                    string strSql = @"SELECT
	                                                *
                                                FROM
	                                                (
		                                                SELECT
			                                                A.Id,
			                                                A.WorkId,
			                                                A.NodeId,
			                                                A.ApprovalUserId,
			                                                A.CcUserId,
			                                                A.ApprovalStatus,
			                                                A.IsViewed,
			                                                A.DeleteMark,
			                                                A.Description,
			                                                A.CreatorTime,
			                                                A.CreatorUserId,
			                                                A.LastModifyTime,
			                                                A.LastModifyUserId,
			                                                A.DeleteTime,
			                                                A.DeleteUserId,
			                                                B.FullName WorkName,
			                                                B.FlowStatus WorkStatus,
			                                                E.RealName ApplyUserName,
			                                                F.FullName ApplyDeptName,
			                                                B.CreatorTime ApplyTime,
			                                                C.RealName ApprovalUserName,
			                                                G.FullName ApprovalDeptName,
			                                                D.RealName CcUserName
		                                                FROM
			                                                wf_approvalccs A
		                                                LEFT JOIN wf_works B ON A.WorkId = B.Id
		                                                LEFT JOIN sys_user C ON A.ApprovalUserId = C.Id
		                                                LEFT JOIN sys_user D ON A.CcUserId = D.Id
		                                                LEFT JOIN sys_user E ON B.ApplyUserId = E.Id
		                                                LEFT JOIN sys_organize F ON E.DepartmentId = F.Id
		                                                LEFT JOIN sys_organize G ON C.DepartmentId = G.Id
		                                                WHERE
			                                                (
				                                                A.DeleteMark IS NULL
				                                                OR A.DeleteMark != 1
			                                                )
		                                                AND (
			                                                B.DeleteMark IS NULL
			                                                OR B.DeleteMark != 1
		                                                )
	                                                ) A 
                                                WHERE  A.CcUserId =@ccUserId
                                                ORDER BY A.IsViewed,A.CreatorTime desc";

                    if (!string.IsNullOrEmpty(keyword))
                    {
                        strSql += " and (A.WorkName like @WorkName or A.ApplyUserName like @ApplyUserName or A.ApplyDeptName like @ApplyDeptName or A.ApprovalUserName like @ApprovalUserName or A.ApprovalDeptName like @ApprovalDeptName) ";
                        DbParameter[] parameter =
                            {
                                 new SqlParameter("@WorkName","%" + keyword+ "%"),
                                 new SqlParameter("@ApplyUserName","%" + keyword+ "%"),
                                 new SqlParameter("@ApplyDeptName","%" + keyword+ "%"),
                                 new SqlParameter("@ApprovalUserName","%" + keyword+ "%"),
                                 new SqlParameter("@ApprovalDeptName","%" + keyword+ "%"),
                                 new SqlParameter("@ccUserId",approvalUserId)
                            };
                        models = db.FindList<MyApprovalCcsEntity>(strSql.ToString(), parameter);
                    }
                    else
                    {

                        DbParameter[] parameter =
                            {
                                 new SqlParameter("@ccUserId",approvalUserId)
                            };
                        models = db.FindList<MyApprovalCcsEntity>(strSql.ToString(), parameter);
                    }
                }
                return models;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<WorkEntity> GetSystemFormApplyings()
        {
            List<WorkEntity> models = new List<WorkEntity>();
            using (var db = new RepositoryBase())
            {
                string strSql = @"SELECT
	                                        wfwk.Id,
	                                        wfwk.FullName,
	                                        wfwk.FlowVersionId,
	                                        wfwk.ApplyUserId,
	                                        wfwk.FlowStatus,
	                                        wfwk.CurrentNodeId,
	                                        wfwk.CurrentUsers,
	                                        wfwk.Codes,
	                                        wfwk.Contents,
	                                        wfwk.DeleteMark,
	                                        wfwk.EnabledMark,
	                                        wfwk.Description,
	                                        wfwk.CreatorTime,
	                                        wfwk.CreatorUserId,
	                                        wfwk.LastModifyTime,
	                                        wfwk.LastModifyUserId,
	                                        wfwk.DeleteTime,
	                                        wfwk.DeleteUserId
                                        FROM
	                                        wf_works wfwk
                                        JOIN wf_flowversions wffv ON wfwk.FlowVersionId = wffv.Id
                                        JOIN wf_flows wffw ON wffw.Id = wffv.FlowId
                                        AND wffw.FormType = 2
                                        WHERE
	                                        wfwk.FlowStatus = 2
                                        AND (
	                                        wfwk.DeleteMark IS NULL
	                                        OR wfwk.DeleteMark != 1
                                        )";

                models = db.FindList<WorkEntity>(strSql.ToString());
                return models;
            }
        }

        public int GetSystemFormTypeByworkId(string workId)
        {
            int type = -1;
            List<WorkEntity> models = new List<WorkEntity>();
            using (var db = new RepositoryBase())
            {
                string strSql = @"SELECT
	                                    wffw.SystemFormType
                                    FROM
	                                    wf_works wfwk
                                    JOIN wf_flowversions wffv ON wfwk.FlowVersionId = wffv.Id
                                    JOIN wf_flows wffw ON wffw.Id = wffv.FlowId
                                    AND wffw.FormType = 2
                                    WHERE
	                                    wfwk.Id =@workId";

                DbParameter[] parameter =
                    {
                                 new SqlParameter("@workId",workId)
                            };
                string strType = db.FindEntity<string>(strSql.ToString(), parameter);
                int.TryParse(strType, out type);
                return type;
            }
        }
        public void IsViewed(string keyValue)
        {
            try
            {
                using (var db = new RepositoryBase().BeginTrans())
                {
                    ApprovalCcsEntity approvalCcsEntity = db.FindEntity<ApprovalCcsEntity>(m => m.Id == keyValue);
                    if (approvalCcsEntity != null && !string.IsNullOrWhiteSpace(approvalCcsEntity.Id))
                    {
                        approvalCcsEntity.Modify(approvalCcsEntity.Id);
                        approvalCcsEntity.IsViewed = true;
                        db.Update(approvalCcsEntity);
                        db.Commit();
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
