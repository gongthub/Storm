using Storm.Code;
using Storm.Domain.Entity.WFManage;
using Storm.Domain.IRepository.WFManage;
using Storm.Repository.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Storm.Application.WFManage
{
    public class FlowApp
    {
        private IFlowRepository service = new FlowRepository();

        public List<FlowEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<FlowEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.FullName.Contains(keyword));
                expression = expression.Or(t => t.EnCode.Contains(keyword));
            }
            return service.IQueryable(expression).OrderBy(t => t.SortCode).ToList();
        }
        public FlowEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.Id == keyValue);
        }
        public void EnbaledForm(string keyValue)
        {
            FlowEntity flowEntity = GetForm(keyValue);
            if (flowEntity != null && !string.IsNullOrEmpty(flowEntity.Id))
            {
                flowEntity.Modify(keyValue);
                flowEntity.EnabledMark = true;
                service.Update(flowEntity);
            }
            else
            {
                throw new Exception("获取数据异常！");
            }
        }
        public void DisabledForm(string keyValue)
        {
            FlowEntity flowEntity = GetForm(keyValue);
            if (flowEntity != null && !string.IsNullOrEmpty(flowEntity.Id))
            {
                flowEntity.Modify(keyValue);
                flowEntity.EnabledMark = false;
                service.Update(flowEntity);
            }
            else
            {
                throw new Exception("获取数据异常！");
            }
        }
        public void SubmitForm(FlowEntity flowEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                flowEntity.Modify(keyValue);
                service.Update(flowEntity);
            }
            else
            {
                flowEntity.EnabledMark = true;
                flowEntity.Create();
                service.Insert(flowEntity);
            }
        }


        public void SaveDesign(string keyValue, string codes)
        {
            FlowEntity flowEntity = GetForm(keyValue);
            if (flowEntity != null && !string.IsNullOrEmpty(flowEntity.Id))
            {
                flowEntity.Modify(keyValue);
                flowEntity.Codes = codes;
                service.Update(flowEntity);
            }
            else
            {
                throw new Exception("获取数据异常！");
            }
        }
    }
}
