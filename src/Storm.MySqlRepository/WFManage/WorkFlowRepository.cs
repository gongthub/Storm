using Storm.Code;
using Storm.Data;
using Storm.Domain.Entity.SystemManage;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.MySqlRepository
{
    public class WorkFlowRepository : RepositoryBase, IWorkFlowRepository
    {
        private const string MARKCHAR = "#";
        public void Start(string workId)
        {
            try
            {
                using (var db = new RepositoryBase().BeginTrans())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        workEntity.Modify(workEntity.Id);
                        FlowNodeEntity nextNode = GetNextNodeId(workId, ApprovalStatus.Pass);
                        if (nextNode != null && !string.IsNullOrEmpty(nextNode.Id))
                        {
                            workEntity.CurrentNodeId = nextNode.Id;
                        }
                        else
                        {
                            workEntity.CurrentNodeId = string.Empty;
                        }
                        string userIds = GetCurrentUserIds(nextNode);
                        if (!string.IsNullOrEmpty(userIds))
                        {
                            workEntity.CurrentUsers = userIds;
                        }
                        workEntity.FlowStatus = (int)WorkStatus.Applying;
                        AddStartApproProcess(workId, db);
                        if (nextNode.IsEndNode)
                        {
                            workEntity.FlowStatus = (int)WorkStatus.Success;
                            AddEndApproProcess(workId, nextNode, db);
                        }
                        db.Update(workEntity);
                        db.Commit();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void ApplySuccess(string workId, string desc)
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
                using (var db = new RepositoryBase().BeginTrans())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (!workEntity.CurrentUsers.Contains(applyUserId))
                        {
                            throw new Exception("当前用户无权限审核此流程！");
                        }
                        if (workEntity.FlowStatus != (int)WorkStatus.Applying)
                        {
                            throw new Exception("当前审批状态不能进行审核！");
                        }
                        workEntity.Modify(workEntity.Id);
                        FlowNodeEntity currentNode = db.FindEntity<FlowNodeEntity>(m => m.Id == workEntity.CurrentNodeId);
                        if (currentNode != null && !string.IsNullOrEmpty(currentNode.Id))
                        {
                            if (currentNode.StepType == (int)StepType.One)
                            {
                                ApplySuccessOne(workId, desc, db, workEntity, currentNode);
                            }
                            else
                            {
                                string[] strUsers = workEntity.CurrentUsers.Split(',');
                                string[] strUsersNew = strUsers?.Where(m => m != applyUserId)?.ToArray();
                                if (strUsersNew != null && strUsersNew.Length > 0)
                                {
                                    workEntity.CurrentUsers = string.Join(",", strUsersNew.ToArray());
                                    AddApproProcess(workId, desc, ApprovalStatus.Pass, currentNode, db);
                                }
                                else
                                {
                                    ApplySuccessOne(workId, desc, db, workEntity, currentNode);
                                }
                            }
                        }
                        else
                        {
                            throw new Exception("获取当前流程节点异常！");
                        }
                        db.Update(workEntity);
                        db.Commit();
                    }
                    else
                    {
                        throw new Exception("获取当前流程信息异常！");
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void ApplySuccessOne(string workId, string desc, IRepositoryBase db, WorkEntity workEntity, FlowNodeEntity currentNode)
        {
            FlowNodeEntity nextNode = GetPassNextNodeId(workId);
            if (nextNode != null && !string.IsNullOrEmpty(nextNode.Id))
            {
                workEntity.CurrentNodeId = nextNode.Id;
            }
            else
            {
                workEntity.CurrentNodeId = string.Empty;
            }
            string userIds = GetCurrentUserIds(nextNode);
            if (!string.IsNullOrEmpty(userIds))
            {
                workEntity.CurrentUsers = userIds;
            }
            workEntity.FlowStatus = (int)WorkStatus.Applying;
            AddApproProcess(workId, desc, ApprovalStatus.Pass, currentNode, db);
            if (nextNode.IsEndNode)
            {
                workEntity.FlowStatus = (int)WorkStatus.Success;
                AddEndApproProcess(workId, nextNode, db);
            }
        }
        public void ApplyFail(string workId, string desc)
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
                using (var db = new RepositoryBase().BeginTrans())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (!workEntity.CurrentUsers.Contains(applyUserId))
                        {
                            throw new Exception("当前用户无权限审核此流程！");
                        }
                        if (workEntity.FlowStatus != (int)WorkStatus.Applying)
                        {
                            throw new Exception("当前审批状态不能进行审核！");
                        }
                        workEntity.Modify(workEntity.Id);
                        FlowNodeEntity currentNode = db.FindEntity<FlowNodeEntity>(m => m.Id == workEntity.CurrentNodeId);
                        bool isFail = false;
                        FlowNodeEntity nextNode = GetFailNextNodeId(workId, out isFail);
                        if (isFail)
                        {
                            workEntity.FlowStatus = (int)WorkStatus.Fail;
                            AddEndApproProcess(workId, nextNode, db);
                        }
                        else
                        {
                            if (nextNode != null && !string.IsNullOrEmpty(nextNode.Id))
                            {
                                workEntity.CurrentNodeId = nextNode.Id;
                                string userIds = GetCurrentUserIds(nextNode);
                                if (!string.IsNullOrEmpty(userIds))
                                {
                                    workEntity.CurrentUsers = userIds;
                                }
                                workEntity.FlowStatus = (int)WorkStatus.Applying;
                                AddApproProcess(workId, desc, ApprovalStatus.Fail, currentNode, db);
                            }
                            else
                            {
                                throw new Exception("当前节点驳回配置异常,请联系管理员！");
                            }
                        }
                        db.Update(workEntity);
                        db.Commit();
                    }
                    else
                    {
                        throw new Exception("获取当前流程信息异常！");
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void Approval(string workId, int status, string desc)
        {
            if (status == (int)ApprovalStatus.Pass)
            {
                ApplySuccess(workId, desc);
            }
            else
                if (status == (int)ApprovalStatus.Fail)
            {
                ApplyFail(workId, desc);
            }
        }
        private FlowNodeEntity GetCurrentNode(string workId)
        {
            try
            {
                FlowNodeEntity currentNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (string.IsNullOrEmpty(workEntity.CurrentNodeId))
                        {
                            currentNode = db.FindEntity<FlowNodeEntity>(m => m.FlowVersionId == workEntity.FlowVersionId && m.IsStartNode == true);
                        }
                        else
                        {
                            currentNode = db.FindEntity<FlowNodeEntity>(m => m.Id == workEntity.CurrentNodeId);
                        }
                    }
                }
                return currentNode;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private FlowNodeEntity GetPassNextNodeId(string workId)
        {
            try
            {
                FlowNodeEntity nextNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (string.IsNullOrEmpty(workEntity.CurrentNodeId))
                        {
                            FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.IsStartNode == true && m.FlowVersionId == workEntity.FlowVersionId);
                            if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                            {
                                workEntity.CurrentNodeId = flowNodeEntity.Id;
                            }
                        }
                        nextNode = GetNextNodeIdPass(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
                    }
                }
                return nextNode;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private FlowNodeEntity GetFailNextNodeId(string workId, out bool isFail)
        {
            try
            {
                isFail = false;
                FlowNodeEntity nextNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (!string.IsNullOrEmpty(workEntity.CurrentNodeId))
                        {
                            FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.Id == workEntity.CurrentNodeId);
                            if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                            {
                                switch (flowNodeEntity.RejectType)
                                {
                                    case (int)RejectType.End:
                                        isFail = true;
                                        //FlowNodeEntity startflowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.IsStartNode == true && m.FlowVersionId == workEntity.FlowVersionId);
                                        //if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                                        //{
                                        //    workEntity.CurrentNodeId = flowNodeEntity.Id;
                                        //}
                                        //nextNode = GetNextNodeIdFail(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId, ref flowLineEntity);
                                        break;
                                    case (int)RejectType.Last:
                                        nextNode = GetNextNodeIdFail(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
                                        break;
                                    case (int)RejectType.Specified:
                                        break;
                                    default:
                                        throw new Exception("当前节点驳回配置异常！");
                                }
                            }
                        }
                        else
                        {
                            throw new Exception("当前节点异常！");
                        }
                    }
                }
                return nextNode;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private FlowNodeEntity GetNextNodeId(string workId, ApprovalStatus approvalStatus)
        {
            try
            {
                FlowNodeEntity nextNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (approvalStatus == ApprovalStatus.Pass)
                        {
                            if (string.IsNullOrEmpty(workEntity.CurrentNodeId))
                            {
                                FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.IsStartNode == true && m.FlowVersionId == workEntity.FlowVersionId);
                                if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                                {
                                    workEntity.CurrentNodeId = flowNodeEntity.Id;
                                }
                            }
                            nextNode = GetNextNodeIdPass(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
                        }
                        else
                            if (approvalStatus == ApprovalStatus.Fail)
                        {
                            if (!string.IsNullOrEmpty(workEntity.CurrentNodeId))
                            {
                                FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.Id == workEntity.CurrentNodeId);
                                if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                                {
                                    switch (flowNodeEntity.RejectType)
                                    {
                                        case (int)RejectType.End:
                                            //FlowNodeEntity startflowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.IsStartNode == true && m.FlowVersionId == workEntity.FlowVersionId);
                                            //if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                                            //{
                                            //    workEntity.CurrentNodeId = flowNodeEntity.Id;
                                            //}
                                            //nextNode = GetNextNodeIdFail(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId, ref flowLineEntity);
                                            break;
                                        case (int)RejectType.Last:
                                            nextNode = GetNextNodeIdFail(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
                                            break;
                                        case (int)RejectType.Specified:
                                            break;
                                        default:
                                            throw new Exception("当前节点驳回配置异常！");
                                    }
                                }
                            }
                            else
                            {
                                throw new Exception("当前节点异常！");
                            }
                        }
                    }
                }
                return nextNode;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private FlowNodeEntity GetNextNodeIdPass(string workId, string CurrentNodeId, string flowVersionId)
        {
            try
            {
                FlowNodeEntity nextNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.Id == CurrentNodeId);
                    if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                    {
                        List<FlowLineEntity> flowLines = db.IQueryable<FlowLineEntity>(m => m.FlowVersionId == flowVersionId && m.FromNode == flowNodeEntity.MarkName).ToList();
                        if (flowLines != null && flowLines.Count > 0)
                        {
                            if (flowLines.Count == 1)
                            {
                                string markName = flowLines[0].ToNode;
                                FlowNodeEntity flowNodeEntityT = db.FindEntity<FlowNodeEntity>(m => m.FlowVersionId == flowVersionId && m.MarkName == markName);
                                if (flowNodeEntityT != null && !string.IsNullOrEmpty(flowNodeEntityT.Id))
                                {
                                    nextNode = flowNodeEntityT;
                                }
                            }
                            else
                            {
                                foreach (FlowLineEntity flowline in flowLines)
                                {
                                    bool bresult = JudgmentPlot(workId, flowline.PlotType, flowline.Plot);
                                    if (bresult)
                                    {
                                        string markName = flowline.ToNode;
                                        FlowNodeEntity flowNodeEntityT = db.FindEntity<FlowNodeEntity>(m => m.FlowVersionId == flowVersionId && m.MarkName == markName);
                                        if (flowNodeEntityT != null && !string.IsNullOrEmpty(flowNodeEntityT.Id))
                                        {
                                            nextNode = flowNodeEntityT;
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }

                return nextNode;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private FlowNodeEntity GetNextNodeIdFail(string workId, string CurrentNodeId, string flowVersionId)
        {
            try
            {
                FlowNodeEntity nextNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.Id == CurrentNodeId);
                    if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                    {
                        List<FlowLineEntity> flowLines = db.IQueryable<FlowLineEntity>(m => m.FlowVersionId == flowVersionId && m.FromNode == flowNodeEntity.MarkName).ToList();
                        if (flowLines != null && flowLines.Count > 0)
                        {
                            if (flowLines.Count == 1)
                            {
                                string markName = flowLines[0].FromNode;
                                FlowNodeEntity flowNodeEntityT = db.FindEntity<FlowNodeEntity>(m => m.FlowVersionId == flowVersionId && m.MarkName == markName);
                                if (flowNodeEntityT != null && !string.IsNullOrEmpty(flowNodeEntityT.Id))
                                {
                                    nextNode = flowNodeEntityT;
                                }
                            }
                            else
                            {
                                foreach (FlowLineEntity flowline in flowLines)
                                {
                                    bool bresult = JudgmentPlot(workId, flowline.PlotType, flowline.Plot);
                                    if (bresult)
                                    {
                                        string markName = flowline.FromNode;
                                        FlowNodeEntity flowNodeEntityT = db.FindEntity<FlowNodeEntity>(m => m.FlowVersionId == flowVersionId && m.MarkName == markName);
                                        if (flowNodeEntityT != null && !string.IsNullOrEmpty(flowNodeEntityT.Id))
                                        {
                                            nextNode = flowNodeEntityT;
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }

                return nextNode;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private bool JudgmentPlot(string workId, int plotType, string plots)
        {
            try
            {
                bool result = false;

                if (plotType == (int)StrategiesType.Sql)
                {
                    using (var db = new RepositoryBase())
                    {
                        result = FindEntity<Boolean>(plots);
                    }
                }
                else
                    if (plotType == (int)StrategiesType.Form)
                {
                    plots = GenNewPlots(workId, plots);
                    if (!string.IsNullOrEmpty(plots))
                    {
                        result = new ExpressionHelp(plots).Compute(true);
                    }
                }

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private string GenNewPlots(string workId, string plots)
        {
            List<WorkControlEntity> workControls = new List<WorkControlEntity>();

            using (var db = new RepositoryBase())
            {
                workControls = db.IQueryable<WorkControlEntity>(m => m.WorkId == workId).ToList();
            }
            int i = plots.IndexOf(MARKCHAR);
            int j = 0;
            string str = plots.Substring(i + MARKCHAR.Length, plots.Length - (i + MARKCHAR.Length));
            j = str.IndexOf(MARKCHAR);
            while (i >= 0 && j > 0)
            {
                string templetst = plots.Substring(i, j + (MARKCHAR.Length * 2));
                string newtemps = templetst.Substring(1, templetst.Length - (MARKCHAR.Length * 2));
                WorkControlEntity workControl = workControls.Find(m => m.FullName == newtemps);
                if (workControl != null)
                {
                    plots = plots.Replace(templetst, workControl.Value);
                }
                i = plots.IndexOf(MARKCHAR);
                if (i < 0)
                {
                    break;
                }
                str = plots.Substring(i + MARKCHAR.Length, plots.Length - (i + MARKCHAR.Length));
                j = str.IndexOf(MARKCHAR);
            }
            return plots;
        }
        private string GetCurrentUserIds(FlowNodeEntity nextNode)
        {
            string userIds = string.Empty;
            if (nextNode.ReviewerType == (int)ReviewerType.Specified)
            {
                userIds = nextNode.ReviewerUser;
            }
            else
                if (nextNode.ReviewerType == (int)ReviewerType.Post)
            {
                if (!string.IsNullOrEmpty(nextNode.ReviewerOrg))
                {
                    List<string> orgIds = nextNode.ReviewerOrg.Split(',').ToList();
                    if (orgIds != null && orgIds.Count > 0)
                    {
                        List<UserEntity> userModels = new List<UserEntity>();
                        using (var db = new RepositoryBase())
                        {
                            List<string> useridsTemp = new List<string>();
                            foreach (var orgId in orgIds)
                            {
                                userModels = db.IQueryable<UserEntity>(m => m.OrganizeId == orgId && m.DeleteMark != true && m.EnabledMark == true).ToList();
                                if (userModels != null && userModels.Count > 0)
                                {
                                    string[] userids = userModels.Select(m => m.Id).ToArray();
                                    string strusers = string.Join(",", userids);
                                    useridsTemp.Add(strusers);
                                }
                            }
                            if (useridsTemp != null && useridsTemp.Count > 0)
                            {
                                userIds = string.Join(",", useridsTemp.ToArray());
                            }
                        }
                    }
                }
            }
            else if (nextNode.ReviewerType == (int)ReviewerType.Last)
            {
                var LoginInfo = OperatorProvider.Provider.GetCurrent();
                if (LoginInfo != null)
                {
                    string deptId = LoginInfo.DepartmentId;
                    using (var db = new RepositoryBase())
                    {
                        OrganizeEntity organizeEntity = db.IQueryable<OrganizeEntity>(m => m.Id == deptId && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                        if (organizeEntity?.ManagerId == LoginInfo.UserId)
                        {
                            organizeEntity = db.IQueryable<OrganizeEntity>(m => m.Id == organizeEntity.ParentId && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                        }
                        userIds = organizeEntity?.ManagerId;
                    }
                }
            }
            return userIds;
        }
        private void AddStartApproProcess(string workId, IRepositoryBase db)
        {
            FlowNodeEntity currentNode = GetCurrentNode(workId);
            ApprovalProcessEntity appproEntity = new ApprovalProcessEntity();
            appproEntity.Create();
            appproEntity.WorkId = workId;
            appproEntity.ApprovalStatus = (int)ApprovalStatus.Pass;
            appproEntity.NodeId = currentNode.Id;
            appproEntity.NodeName = currentNode.Name;
            appproEntity.IsStart = true;
            appproEntity.IsEnd = false;
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                appproEntity.ApprovalUserId = LoginInfo.UserId;
                appproEntity.ApprovalUserName = LoginInfo.UserName;
            }
            db.Insert(appproEntity);
        }
        private void AddEndApproProcess(string workId, FlowNodeEntity node, IRepositoryBase db)
        {
            ApprovalProcessEntity appproEntity = new ApprovalProcessEntity();
            appproEntity.Create();
            appproEntity.WorkId = workId;
            appproEntity.ApprovalStatus = (int)ApprovalStatus.Pass;
            appproEntity.NodeId = node.Id;
            appproEntity.NodeName = node.Name;
            appproEntity.IsStart = false;
            appproEntity.IsEnd = true;
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                appproEntity.ApprovalUserId = LoginInfo.UserId;
                appproEntity.ApprovalUserName = LoginInfo.UserName;
            }
            db.Insert(appproEntity);
        }
        private void AddApproProcess(string workId, string desc, ApprovalStatus status, FlowNodeEntity node, IRepositoryBase db)
        {
            if (node != null && !string.IsNullOrEmpty(node.Id))
            {
                ApprovalProcessEntity appproEntity = new ApprovalProcessEntity();
                appproEntity.Create();
                appproEntity.WorkId = workId;
                appproEntity.ApprovalStatus = (int)status;
                appproEntity.NodeId = node.Id;
                appproEntity.NodeName = node.Name;
                appproEntity.Description = desc;
                appproEntity.IsStart = false;
                appproEntity.IsEnd = false;
                var LoginInfo = OperatorProvider.Provider.GetCurrent();
                if (LoginInfo != null)
                {
                    appproEntity.ApprovalUserId = LoginInfo.UserId;
                    appproEntity.ApprovalUserName = LoginInfo.UserName;
                }
                db.Insert(appproEntity);
            }
            else
            {
                throw new Exception("当前节点异常！");
            }
        }
    }
}
