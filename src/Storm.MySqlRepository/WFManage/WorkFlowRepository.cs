using Storm.Code;
using Storm.Data;
using Storm.Domain.Entity.SystemManage;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Storm.MySqlRepository
{
    public class WorkFlowRepository : RepositoryBase, IWorkFlowRepository
    {
        private const string MARKCHAR = "#";
        public void Start(string workId, ref bool IsEnd)
        {
            try
            {
                string userId = string.Empty;
                var LoginInfo = OperatorProvider.Provider.GetCurrent();
                if (LoginInfo != null)
                {
                    userId = LoginInfo.UserId;
                }
                using (var db = new RepositoryBase().BeginTrans())
                {
                    WorkEntity workEntity = db.FindEntity<WorkEntity>(m => m.Id == workId);
                    if (workEntity != null && !string.IsNullOrEmpty(workEntity.Id))
                    {
                        if (workEntity.FlowStatus != (int)WorkStatus.Save)
                        {
                            throw new Exception("当前流程已进行申请，无法重复提交申请！");
                        }
                        AddStartApproProcess(workId, db);
                        workEntity.Modify(workEntity.Id);
                        workEntity.FlowStatus = (int)WorkStatus.Applying;
                        FlowNodeEntity nextNode = GetPassNextNodeId(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
                        if (nextNode == null || string.IsNullOrEmpty(nextNode.Id))
                        {
                            throw new Exception("当前审批下一流程节点不存在，请联系管理员！");
                        }
                        bool isEndNode = nextNode.IsEndNode;
                        if (!isEndNode)
                        {
                            bool isNeedSkip = false;
                            string userIds = GetCurrentUserIds(nextNode, userId, out isNeedSkip);
                            string nextNodeId = nextNode.Id;
                            if (isNeedSkip && !nextNode.IsEndNode)
                            {
                                nextNodeId = SkipNode(workId, workEntity.CurrentNodeId, nextNode, workEntity.FlowVersionId, db, out userIds, out isEndNode);
                            }
                            workEntity.CurrentNodeId = nextNodeId;
                            if (!string.IsNullOrEmpty(userIds))
                            {
                                workEntity.CurrentUsers = userIds;
                            }
                        }
                        if (isEndNode)
                        {
                            IsEnd = true;
                            workEntity.FlowStatus = (int)WorkStatus.Success;
                            AddEndApproProcess(workId, nextNode, db);
                        }
                        AddCcSuccess(workId, nextNode.Id, userId, db);
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
        private void ApplySuccess(string workId, string desc, ref bool IsEnd)
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
                                ApplySuccessOne(workId, desc, db, workEntity, currentNode, ref IsEnd);
                            }
                            else
                            {
                                string[] strUsers = workEntity.CurrentUsers.Split(',');
                                if (strUsers != null && strUsers.Length == 1)
                                {
                                    ApplySuccessOne(workId, desc, db, workEntity, currentNode, ref IsEnd);
                                }
                                else
                                {
                                    string[] strUsersNew = strUsers?.Where(m => m != applyUserId)?.ToArray();
                                    if (strUsersNew != null && strUsersNew.Length > 0)
                                    {
                                        workEntity.CurrentUsers = string.Join(",", strUsersNew.ToArray());
                                        AddApproProcess(workId, desc, ApprovalStatus.Pass, currentNode, db);

                                        AddCcSuccess(workId, workEntity.CurrentNodeId, applyUserId, db);
                                    }
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
        private void ApplySuccessOne(string workId, string desc, IRepositoryBase db, WorkEntity workEntity, FlowNodeEntity currentNode, ref bool IsEnd)
        {
            FlowNodeEntity nextNode = GetPassNextNodeId(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
            string nextNodeId = nextNode.Id;
            string currUsers = workEntity.CurrentUsers;
            bool isEndNode = nextNode.IsEndNode;
            AddApproProcess(workId, desc, ApprovalStatus.Pass, currentNode, db);
            if (!isEndNode)
            {
                bool isNeedSkip = false;
                string userIds = GetCurrentUserIds(nextNode, currUsers, out isNeedSkip);
                nextNodeId = nextNode.Id;
                if (isNeedSkip && !nextNode.IsEndNode)
                {
                    nextNodeId = SkipNode(workId, workEntity.CurrentNodeId, nextNode, workEntity.FlowVersionId, db, out userIds, out isEndNode);
                }
                if (!string.IsNullOrEmpty(userIds))
                {
                    workEntity.CurrentUsers = userIds;
                }
                if (!string.IsNullOrEmpty(nextNodeId))
                {
                    workEntity.CurrentNodeId = nextNodeId;
                }
                workEntity.FlowStatus = (int)WorkStatus.Applying;
            }
            if (isEndNode)
            {
                IsEnd = true;
                workEntity.FlowStatus = (int)WorkStatus.Success;
                AddEndApproProcess(workId, nextNode, db);
            }
            AddCcSuccess(workId, nextNodeId, currUsers, db);
        }
        private void ApplyFail(string workId, string desc)
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
                        FlowNodeEntity lastNode = GetFailNextNodeId(workId, out isFail);
                        if (isFail)
                        {
                            AddApproProcess(workId, desc, ApprovalStatus.Fail, currentNode, db);
                            workEntity.FlowStatus = (int)WorkStatus.Fail;
                            AddEndApproProcess(workId, lastNode, db);
                        }
                        else
                        {
                            if (lastNode != null && !string.IsNullOrEmpty(lastNode.Id))
                            {
                                workEntity.CurrentNodeId = lastNode.Id;
                                string lastUserId = GetApplyUserByNode(lastNode, workId);
                                bool isNeedSkip = false;
                                string userIds = GetCurrentUserIds(lastNode, lastUserId, out isNeedSkip);
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
                        AddCcFail(workId, lastNode.Id, applyUserId, db);
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
        public void Approval(string workId, int status, string desc, ref bool IsEnd)
        {
            if (status == (int)ApprovalStatus.Pass)
            {
                ApplySuccess(workId, desc, ref IsEnd);
            }
            else
                if (status == (int)ApprovalStatus.Fail)
            {
                ApplyFail(workId, desc);
                IsEnd = true;
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
        private FlowNodeEntity GetPassNextNodeId(string workId, string currentNodeId, string flowVersionId)
        {
            try
            {
                FlowNodeEntity nextNode = new FlowNodeEntity();
                using (var db = new RepositoryBase())
                {
                    if (string.IsNullOrEmpty(currentNodeId))
                    {
                        FlowNodeEntity flowNodeEntity = db.FindEntity<FlowNodeEntity>(m => m.IsStartNode == true && m.FlowVersionId == flowVersionId);
                        if (flowNodeEntity != null && !string.IsNullOrEmpty(flowNodeEntity.Id))
                        {
                            currentNodeId = flowNodeEntity.Id;
                        }
                    }
                    nextNode = GetNextNodeIdPass(workId, currentNodeId, flowVersionId);
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
                                        break;
                                    case (int)RejectType.Last:
                                        nextNode = GetNextNodeIdFail(workId, workEntity.CurrentNodeId, workEntity.FlowVersionId);
                                        break;
                                    case (int)RejectType.Specified:
                                        nextNode = db.IQueryable<FlowNodeEntity>(m => m.FlowVersionId == workEntity.FlowVersionId && m.MarkName == flowNodeEntity.RejectNode).FirstOrDefault();
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
                bool bIsSkip = IsSkipLastNode(workId, nextNode.Id);
                if (bIsSkip)
                {
                    nextNode = GetNextNodeIdFail(workId, nextNode.Id, flowVersionId);
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
        private string GetCurrentUserIds(FlowNodeEntity nextNode, string currUser, out bool isNeedSkip)
        {
            isNeedSkip = false;
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
                using (var db = new RepositoryBase())
                {
                    UserEntity userEntity = db.IQueryable<UserEntity>(m => m.Id == currUser && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                    if (userEntity != null && !string.IsNullOrWhiteSpace(userEntity.Id))
                    {
                        OrganizeEntity organizeEntity = db.IQueryable<OrganizeEntity>(m => m.Id == userEntity.DepartmentId && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                        if (organizeEntity == null
                            || string.IsNullOrWhiteSpace(organizeEntity.Id)
                            || string.IsNullOrWhiteSpace(organizeEntity.ManagerId))
                        {
                            throw new Exception("上一级审批人未配置，请联系管理员！");
                        }
                        if (organizeEntity?.ManagerId == currUser)
                        {
                            organizeEntity = db.IQueryable<OrganizeEntity>(m => m.Id == organizeEntity.ParentId && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                            if (organizeEntity == null
                            || string.IsNullOrWhiteSpace(organizeEntity.Id))
                            {
                                isNeedSkip = true;
                            }
                        }
                        userIds = organizeEntity?.ManagerId;
                    }
                }
            }
            return userIds;
        }
        private string GetCurrentCcUserIds(FlowNodeEntity nextNode, string currUser)
        {
            string userIds = string.Empty;
            if (nextNode.CcType == (int)CcType.Specified)
            {
                userIds = nextNode.CcUser;
            }
            else
                if (nextNode.CcType == (int)CcType.Post)
            {
                if (!string.IsNullOrEmpty(nextNode.CcOrg))
                {
                    List<string> orgIds = nextNode.CcOrg.Split(',').ToList();
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
            else if (nextNode.CcType == (int)CcType.Last)
            {
                using (var db = new RepositoryBase())
                {
                    UserEntity userEntity = db.IQueryable<UserEntity>(m => m.Id == currUser && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                    if (userEntity != null && !string.IsNullOrWhiteSpace(userEntity.Id))
                    {
                        OrganizeEntity organizeEntity = db.IQueryable<OrganizeEntity>(m => m.Id == userEntity.DepartmentId && m.DeleteMark != true && m.EnabledMark == true).FirstOrDefault();
                        if (organizeEntity == null
                            || string.IsNullOrWhiteSpace(organizeEntity.Id)
                            || string.IsNullOrWhiteSpace(organizeEntity.ManagerId))
                        {
                            throw new Exception("上一级审批人未配置，请联系管理员！");
                        }
                        if (organizeEntity?.ManagerId == currUser)
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
        private void AddSkipProcess(string workId, FlowNodeEntity node, IRepositoryBase db)
        {
            if (node != null && !string.IsNullOrEmpty(node.Id))
            {
                ApprovalProcessEntity appproEntity = new ApprovalProcessEntity();
                appproEntity.Create();
                appproEntity.WorkId = workId;
                appproEntity.ApprovalStatus = (int)ApprovalStatus.Pass;
                appproEntity.NodeId = node.Id;
                appproEntity.NodeName = node.Name;
                appproEntity.Description = string.Empty;
                appproEntity.IsStart = false;
                appproEntity.IsEnd = false;
                appproEntity.IsSkip = true;
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
        private string GetApplyUserByNode(FlowNodeEntity node, string workId)
        {
            string userId = string.Empty;
            if (node != null && !string.IsNullOrWhiteSpace(node.Id))
            {
                using (var db = new RepositoryBase())
                {
                    ApprovalProcessEntity approvalProcessEntity = db.IQueryable<ApprovalProcessEntity>(m => m.WorkId == workId
                     && m.DeleteMark != true
                     && m.EnabledMark == true
                     && m.NodeId == node.Id).OrderByDescending(m => m.CreatorTime).FirstOrDefault();
                    userId = approvalProcessEntity?.ApprovalUserId;
                }
            }
            return userId;
        }
        private string SkipNode(string workId, string curentUser, FlowNodeEntity selNextNode,
            string flowVersionId, IRepositoryBase db, out string userIds, out bool isEnd)
        {
            isEnd = false;
            userIds = string.Empty;
            string nextNodeId = string.Empty;
            AddSkipProcess(workId, selNextNode, db);
            FlowNodeEntity nextNode = GetPassNextNodeId(workId, selNextNode.Id, flowVersionId);
            if (nextNode == null || string.IsNullOrEmpty(nextNode.Id))
            {
                throw new Exception("当前审批下一流程节点不存在，请联系管理员！");
            }
            isEnd = nextNode.IsEndNode;
            if (!isEnd)
            {
                bool isNeedSkip = false;
                userIds = GetCurrentUserIds(nextNode, curentUser, out isNeedSkip);
                nextNodeId = nextNode.Id;
                if (isNeedSkip && !nextNode.IsEndNode)
                {
                    nextNodeId = SkipNode(workId, curentUser, nextNode, flowVersionId, db, out userIds, out isEnd);
                }
            }
            return nextNodeId;
        }
        private bool IsSkipLastNode(string workId, string lastNodeId)
        {
            bool bResult = false;
            using (var db = new RepositoryBase())
            {
                ApprovalProcessEntity approvalProcessEntity = db.IQueryable<ApprovalProcessEntity>(m => m.WorkId == workId
                && m.NodeId == lastNodeId && m.DeleteMark != true).FirstOrDefault();
                if (approvalProcessEntity != null && !string.IsNullOrWhiteSpace(approvalProcessEntity.Id))
                    bResult = approvalProcessEntity.IsSkip;
            }
            return bResult;
        }
        private void AddCcSuccess(string workId, string nodeId, string currUserId, IRepositoryBase db)
        {
            FlowNodeEntity node = db.FindEntity<FlowNodeEntity>(m => m.Id == nodeId);
            if (node != null && !string.IsNullOrWhiteSpace(node.Id))
            {
                string ccUserIds = GetCurrentCcUserIds(node, currUserId);
                if (ccUserIds != null && !string.IsNullOrWhiteSpace(ccUserIds))
                {
                    List<string> ccUserIdslst = ccUserIds.Split(',').ToList();
                    ccUserIdslst.ForEach(delegate (string ccUserId)
                    {
                        ApprovalCcsEntity appproccEntity = new ApprovalCcsEntity();
                        appproccEntity.Create();
                        appproccEntity.WorkId = workId;
                        appproccEntity.CcUserId = ccUserId;
                        appproccEntity.NodeId = nodeId;
                        appproccEntity.ApprovalUserId = currUserId;
                        appproccEntity.ApprovalStatus = (int)ApprovalStatus.Pass;
                        appproccEntity.IsViewed = false;
                        var LoginInfo = OperatorProvider.Provider.GetCurrent();
                        if (LoginInfo != null)
                        {
                            appproccEntity.CreatorUserId = LoginInfo.UserId;
                        }
                        db.Insert(appproccEntity);
                    });
                }
            }
        }
        private void AddCcFail(string workId, string nodeId, string currUserId, IRepositoryBase db)
        {
            FlowNodeEntity node = db.FindEntity<FlowNodeEntity>(m => m.Id == nodeId);
            if (node != null && !string.IsNullOrWhiteSpace(node.Id))
            {
                string ccUserIds = GetCurrentCcUserIds(node, currUserId);
                if (ccUserIds != null && !string.IsNullOrWhiteSpace(ccUserIds))
                {
                    List<string> ccUserIdslst = ccUserIds.Split(',').ToList();
                    ccUserIdslst.ForEach(delegate (string ccUserId)
                    {
                        ApprovalCcsEntity appproccEntity = new ApprovalCcsEntity();
                        appproccEntity.Create();
                        appproccEntity.WorkId = workId;
                        appproccEntity.CcUserId = ccUserId;
                        appproccEntity.NodeId = nodeId;
                        appproccEntity.ApprovalUserId = currUserId;
                        appproccEntity.ApprovalStatus = (int)ApprovalStatus.Pass;
                        appproccEntity.IsViewed = false;
                        var LoginInfo = OperatorProvider.Provider.GetCurrent();
                        if (LoginInfo != null)
                        {
                            appproccEntity.CreatorUserId = LoginInfo.UserId;
                        }
                        db.Insert(appproccEntity);
                    });
                }
            }
        }
    }
}
