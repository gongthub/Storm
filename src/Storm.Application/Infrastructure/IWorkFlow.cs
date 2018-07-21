using Storm.Domain.Entity.WFManage;
using System.Collections.Generic;
using static Storm.Application.Infrastructure.WorkFlowCommon;

namespace Storm.Application.Infrastructure
{
    public interface IWorkFlow
    {
        /// <summary>
        /// 开始一个系统表单流程
        /// </summary>
        /// <param name="systemForm">系统表单类型</param>
        /// <param name="key">外键</param>
        /// <returns></returns>
        bool Start(SystemForm systemForm, string key);
        /// <summary>
        /// 开始一个系统表单流程
        /// </summary>
        /// <param name="systemForm">系统表单类型</param>
        /// <param name="key">外键</param>
        /// <param name="prarms">需要用于条件判断的参数 参数名称、 值</param>
        /// <returns></returns>
        bool Start(SystemForm systemForm, string key, Dictionary<string, string> prarms);
        /// <summary>
        /// 注册系统表单流程审核结束函数
        /// </summary>
        /// <param name="action">函数</param>
        void RegisteredEndActive(EndFlowDelegate action);
    }
}
