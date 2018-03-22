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
    /// <summary>
    /// 消息提醒类型
    /// </summary>
    public enum FormDefaultProgram
    {
        [Description("当前步骤用户ID")]
        StepUserID = 1,
        [Description("当前步骤用户姓名")]
        StepUserName = 2,
        [Description("当前步骤用户部门ID")]
        StepUserDeptID = 3,
        [Description("当前步骤用户部门名称")]
        StepUserDeptName = 4,
        [Description("流程申请人ID")]
        ApplyUserID = 5,
        [Description("流程申请人姓名")]
        ApplyUserName = 6,
        [Description("流程申请人部门ID")]
        ApplyUserDeptID = 7,
        [Description("流程申请人部门名称")]
        ApplyUserDeptName = 8,
        [Description("短日期格式(yyyy-MM-dd)")]
        ShortDate = 9,
        [Description("长日期格式(yyyy年MM月dd日)")]
        LongDate = 10,
        [Description("短时间格式(HH:mm)")]
        ShortDateTime = 11,
        [Description("长时间格式(HH时mm分)")]
        LongDateTime = 12,
        [Description("短日期时间格式(yyyy-MM-dd HH:mm)")]
        ShortDateAndDateTime = 13,
        [Description("长日期时间格式(yyyy年MM月dd日 HH时mm分)")]
        LongDateAndDateTime = 14,
        [Description("当前流程名称")]
        FlowName = 15,
        [Description("当前步骤名称")]
        StepName = 16
    }
}
