﻿using Storm.Code;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using Storm.Repository.WFManage;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Storm.Application.WFManage
{
    public class WorkApp
    {
        private static string WFFILEPATHS = Configs.GetValue("WFFilePaths");
        private IWorkRepository service = new WorkRepository();
        private FlowApp flowApp = new FlowApp();
        private FormApp formApp = new FormApp();
        public List<WorkEntity> GetAllList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            List<WorkEntity> models = service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
            if (models != null && models.Count > 0)
            {
                models.ForEach(delegate(WorkEntity model)
                {
                    string desc = Code.EnumHelp.enumHelp.GetDescription(typeof(WorkStatus), model.FlowStatus);
                    model.FlowStatusName = desc;
                });
            }
            return models;
        }
        public List<WorkEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            expression = expression.Or(t => t.DeleteMark != true);
            List<WorkEntity> models = service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
            if (models != null && models.Count > 0)
            {
                models.ForEach(delegate(WorkEntity model)
                {
                    string desc = Code.EnumHelp.enumHelp.GetDescription(typeof(WorkStatus), model.FlowStatus);
                    model.FlowStatusName = desc;
                });
            }
            return models;
        }
        public List<WorkEntity> GetEnableList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            expression = expression.Or(t => t.DeleteMark != true && t.EnabledMark == true);
            List<WorkEntity> models = service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
            if (models != null && models.Count > 0)
            {
                models.ForEach(delegate(WorkEntity model)
                {
                    string desc = Code.EnumHelp.enumHelp.GetDescription(typeof(WorkStatus), model.FlowStatus);
                    model.FlowStatusName = desc;
                });
            }
            return models;
        }
        public List<WorkEntity> GetMyWorkList(string keyword = "")
        {
            var expression = ExtLinq.True<WorkEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
            }
            var loguser = OperatorProvider.Provider.GetCurrent();
            if (loguser != null)
            {
                expression = expression.Or(t => t.ApplyUserId == loguser.UserId);
            }
            expression = expression.Or(t => t.DeleteMark != true);
            List<WorkEntity> models = service.IQueryable(expression).OrderByDescending(t => t.CreatorTime).ToList();
            if (models != null && models.Count > 0)
            {
                models.ForEach(delegate(WorkEntity model)
                {
                    string desc = Code.EnumHelp.enumHelp.GetDescription(typeof(WorkStatus), model.FlowStatus);
                    model.FlowStatusName = desc;
                });
            }
            return models;
        }
        public WorkEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.Id == keyValue);
        }
        public void SubmitForm(WorkEntity workEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                workEntity.Modify(keyValue);
                service.Update(workEntity);
            }
            else
            {
                workEntity.EnabledMark = true;
                workEntity.Create();
                service.Insert(workEntity);
            }
        }

        public void AddForm(string flowId, int status, string contents, List<WorkControlEntity> controls, List<WorkFileEntity> files)
        {
            WorkEntity workEntity = new WorkEntity();
            if (status == (int)WorkStatus.Save || status == (int)WorkStatus.Applying)
            {
                if (flowId != null)
                {
                    FlowEntity flowentity = flowApp.GetForm(flowId);
                    FlowVersionEntity flowVersionEntity = flowApp.GetDesign(flowId);
                    if (flowentity != null && !string.IsNullOrEmpty(flowentity.Id) && flowVersionEntity != null && !string.IsNullOrEmpty(flowVersionEntity.Id))
                    {
                        workEntity.Create();
                        workEntity.FullName = flowentity.FullName;
                        workEntity.FlowVersionId = flowVersionEntity.Id;
                        workEntity.FlowStatus = status;
                        if (status == (int)WorkStatus.Save)
                        {
                            workEntity.Contents = flowVersionEntity.Codes;
                        }
                        else
                            if (status == (int)WorkStatus.Applying)
                            {
                                workEntity.Contents = contents;
                            }
                        var loguser = OperatorProvider.Provider.GetCurrent();
                        if (loguser != null)
                        {
                            workEntity.ApplyUserId = loguser.UserId;
                        }
                        service.AddForm(workEntity, controls, files);
                    }
                    else
                    {
                        throw new Exception("保存失败！");
                    }
                }
                else
                {
                    throw new Exception("保存失败！");
                }
            }
            else
            {
                throw new Exception("保存失败，提交状态无效！");
            }
        }

        public List<WorkFileEntity> UploadFiles(HttpFileCollectionBase Files)
        {
            try
            {
                List<WorkFileEntity> models = new List<WorkFileEntity>();
                if (Files != null && Files.Count > 0)
                {
                    string basePath = Code.FileHelper.BasePath;
                    string upPaths = GetFilePathByDate();
                    for (int i = 0; i < Files.Count; i++)
                    {
                        string keyIds = Files.Keys[i];
                        string controlIds = string.Empty;
                        if (!string.IsNullOrEmpty(keyIds))
                        {
                            string[] strs = keyIds.Split('|');
                            if (strs != null && strs.Count() > 0)
                            {
                                controlIds = strs[0];
                            }
                        }
                        var file = Files[i];
                        string fileName = Path.GetFileName(Files[i].FileName);// 原始文件名称
                        string fileExtension = Path.GetExtension(fileName); // 文件扩展名
                        string saveName = fileName + fileExtension; // 保存文件名称
                        string fileDirPaths = upPaths + "/" + controlIds + "/";
                        string filePaths = fileDirPaths + saveName;
                        string fullPaths = basePath + fileDirPaths;
                        Code.FileHelper.CreateDirectory(fullPaths);

                        Files[i].SaveAs(fullPaths + saveName);
                        WorkFileEntity model = new WorkFileEntity();
                        model.ControlId = controlIds;
                        model.FullName = fileName;
                        model.FullName = fileName;
                        model.Paths = filePaths;
                        models.Add(model);
                    }
                }
                return models;
            }
            catch
            {
                throw new Exception("上传文件失败");
            }
        }
        private string GetFilePathByDate()
        {
            string strPath = string.Empty;
            string dates = DateTime.Now.ToString("yyyyMMdd");
            strPath = WFFILEPATHS + dates + "/";
            return strPath;
        }

        public string GetFormDesign(string flowId)
        {
            string strContents = string.Empty;
            FlowEntity flowEntity = flowApp.GetForm(flowId);
            if (flowEntity != null && !string.IsNullOrEmpty(flowEntity.Id) && !string.IsNullOrEmpty(flowEntity.FormId))
            {
                FormEntity formEntity = formApp.GetForm(flowEntity.FormId);
                strContents = formEntity.Codes;
            }
            return strContents;
        }
    }
}
