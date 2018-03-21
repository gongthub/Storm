using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Domain.Entity.WFManage
{
    /// <summary>
    /// 步骤类型
    /// </summary>
    public enum StepType
    {
        [Description("一人通过")]
        One = 1,
        [Description("所有通过")]
        All = 2
    }
    /// <summary>
    /// 驳回类型
    /// </summary>
    public enum RejectType
    {
        [Description("驳回申请人")]
        Reviewer = 1,
        [Description("驳回上一节点")]
        Last = 2,
        [Description("驳回指定节点")]
        Specified = 3,
        [Description("结束")]
        End = 4
    }
    /// <summary>
    /// 审核人类型
    /// </summary>
    public enum ReviewerType
    {
        [Description("岗位")]
        Post = 1,
        [Description("指定人")]
        Last = 2,
        [Description("上一级领导")]
        Specified = 3
    }
    /// <summary>
    /// 消息提醒类型
    /// </summary>
    public enum MessageType
    {
        [Description("系统提醒")]
        System = 1,
        [Description("邮件提醒")]
        Email = 2,
        [Description("短信提醒")]
        Msg = 3
    }
    /// <summary>
    /// 策略类型
    /// </summary>
    public enum StrategiesType
    {
        [Description("表单策略")]
        Form = 1,
        [Description("SQL脚本")]
        Sql = 2
    }
}
