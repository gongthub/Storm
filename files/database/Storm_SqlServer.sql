USE [Storm]
GO
/****** Object:  Table [dbo].[WF_Works]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_Works](
	[Id] [varchar](50) NOT NULL,
	[FullName] [varchar](500) NULL,
	[FlowVersionId] [varchar](50) NULL,
	[ApplyUserId] [varchar](50) NULL,
	[FlowStatus] [int] NULL,
	[CurrentNodeId] [varchar](50) NULL,
	[CurrentUsers] [varchar](5000) NULL,
	[Codes] [text] NULL,
	[Contents] [text] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [text] NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK__WF_Works__3214EC073A81B327] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_WorkFiles]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_WorkFiles](
	[Id] [varchar](50) NOT NULL,
	[WorkId] [varchar](50) NOT NULL,
	[ControlId] [varchar](50) NOT NULL,
	[FullName] [varchar](5000) NULL,
	[Paths] [varchar](5000) NULL,
 CONSTRAINT [PK__WF_WorkF__3214EC07014935CB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_WorkControls]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_WorkControls](
	[Id] [varchar](50) NOT NULL,
	[WorkId] [varchar](50) NOT NULL,
	[ControlId] [varchar](50) NOT NULL,
	[FullName] [varchar](500) NULL,
	[ControlType] [int] NULL,
	[TypeName] [varchar](500) NULL,
	[Value] [varchar](5000) NULL,
 CONSTRAINT [PK__WF_WorkC__3214EC0703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_Items]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_Items](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_ItemDetails]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ItemDetails](
	[Id] [varchar](50) NOT NULL,
	[ItemId] [varchar](50) NULL,
	[ParentId] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_Forms]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_Forms](
	[Id] [varchar](50) NOT NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Codes] [text] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_FormControls]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_FormControls](
	[Id] [varchar](50) NOT NULL,
	[FormId] [varchar](50) NOT NULL,
	[ControlId] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NULL,
	[ControlType] [int] NULL,
	[TypeName] [varchar](50) NULL,
	[DefaultType] [varchar](50) NULL,
	[DefaultValue] [varchar](5000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_FlowVersions]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_FlowVersions](
	[Id] [varchar](50) NOT NULL,
	[FlowId] [varchar](50) NOT NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Codes] [text] NULL,
	[InitNum] [int] NOT NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_Flows]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_Flows](
	[Id] [varchar](50) NOT NULL,
	[FormId] [varchar](50) NULL,
	[FormType] [int] NULL,
	[FormUrl] [varchar](500) NULL,
	[SystemFormType] [int] NULL,
	[SystemFormName] [varchar](200) NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK__WF_Flows__3214EC077F60ED59] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_FlowNodes]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_FlowNodes](
	[Id] [varchar](50) NOT NULL,
	[FlowVersionId] [varchar](50) NOT NULL,
	[MarkName] [varchar](50) NOT NULL,
	[TypeName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Marked] [bit] NULL,
	[Left] [int] NULL,
	[Top] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[StepType] [int] NULL,
	[RejectType] [int] NULL,
	[RejectType] [varchar](500) NULL,
	[ReviewerType] [int] NULL,
	[ReviewerOrg] [varchar](5000) NULL,
	[ReviewerUser] [varchar](5000) NULL,
	[CcType] [int] NULL,
	[CcOrg] [varchar](5000) NULL,
	[CcUser] [varchar](5000) NULL,
	[MessageType] [int] NULL,
	[IsStartNode] [bit] NULL,
	[IsEndNode] [bit] NULL,
 CONSTRAINT [PK__WF_FlowN__3214EC071FCDBCEB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_ApprovalCcs]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ApprovalCcs](
	[Id] [varchar](50) NOT NULL,
	[WorkId] [varchar](50) NOT NULL,
	[NodeId] [varchar](50) NOT NULL,
	[ApprovalUserId] [varchar](5000) NOT NULL,
	[CcUserId] [varchar](50) NOT NULL,
	[ApprovalStatus] [int] NULL,
	[IsViewed] [bit] NULL,
	[DeleteMark] [bit] NULL,
	[Description] [varchar](5000) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK__WF_FlowN__3214EC071FCDBCEB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_FlowLines]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_FlowLines](
	[Id] [varchar](50) NOT NULL,
	[FlowVersionId] [varchar](50) NOT NULL,
	[MarkName] [varchar](50) NOT NULL,
	[TypeName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[FromNode] [varchar](50) NULL,
	[ToNode] [varchar](50) NULL,
	[Marked] [bit] NULL,
	[PlotType] [int] NULL,
	[Plot] [varchar](5000) NULL,
	[SqlPlot] [varchar](5000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_FlowAreas]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_FlowAreas](
	[Id] [varchar](50) NOT NULL,
	[FlowVersionId] [varchar](50) NOT NULL,
	[MarkName] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Marked] [bit] NULL,
	[Left] [int] NULL,
	[Top] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WF_ApprovalProcess]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WF_ApprovalProcess](
	[Id] [varchar](50) NOT NULL,
	[WorkId] [varchar](50) NULL,
	[LastProcessId] [varchar](50) NULL,
	[ApprovalUserId] [varchar](50) NULL,
	[ApprovalUserName] [varchar](50) NULL,
	[ApprovalStatus] [int] NULL,
	[NodeId] [varchar](50) NULL,
	[NodeName] [varchar](500) NULL,
	[IsStart] [bit] NULL,
	[IsEnd] [bit] NULL,
	[IsSkip] [bit] NULL,
	[LastLineId] [varchar](50) NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](5000) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK__WF_Appro__3214EC07239E4DCF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_UserLogOn]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_UserLogOn](
	[Id] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserSecretkey] [varchar](50) NULL,
	[AllowStartTime] [datetime] NULL,
	[AllowEndTime] [datetime] NULL,
	[LockStartDate] [datetime] NULL,
	[LockEndDate] [datetime] NULL,
	[FirstVisitTime] [datetime] NULL,
	[PreviousVisitTime] [datetime] NULL,
	[LastVisitTime] [datetime] NULL,
	[ChangePasswordDate] [datetime] NULL,
	[MultiUserLogin] [bit] NULL,
	[LogOnCount] [int] NULL,
	[UserOnLine] [bit] NULL,
	[Question] [varchar](50) NULL,
	[AnswerQuestion] [varchar](500) NULL,
	[CheckIPAddress] [bit] NULL,
	[Language] [varchar](50) NULL,
	[Theme] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_USERLOGON] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户登录主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'UserPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户秘钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'UserSecretkey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许登录时间开始' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'AllowStartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许登录时间结束' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'AllowEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暂停用户开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'LockStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暂停用户结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'LockEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一次访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'FirstVisitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一次访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'PreviousVisitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'LastVisitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改密码日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'ChangePasswordDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许同时有多用户登录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'MultiUserLogin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'LogOnCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'UserOnLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码提示问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码提示答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'AnswerQuestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否访问限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'CheckIPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统语言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'Language'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'Theme'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户登录信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn'
GO
INSERT [dbo].[Sys_UserLogOn] ([Id], [UserId], [UserPassword], [UserSecretkey], [AllowStartTime], [AllowEndTime], [LockStartDate], [LockEndDate], [FirstVisitTime], [PreviousVisitTime], [LastVisitTime], [ChangePasswordDate], [MultiUserLogin], [LogOnCount], [UserOnLine], [Question], [AnswerQuestion], [CheckIPAddress], [Language], [Theme]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'44c35ab35cb0603e90d168642ca51fb6', N'57d3031d6fc4a34d', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A8E500E6ED94 AS DateTime), CAST(0x0000A8E500E83265 AS DateTime), NULL, NULL, 193, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_User]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_User](
	[Id] [varchar](50) NOT NULL,
	[Account] [varchar](50) NULL,
	[RealName] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[HeadIcon] [varchar](50) NULL,
	[Gender] [bit] NULL,
	[Birthday] [datetime] NULL,
	[MobilePhone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[WeChat] [varchar](50) NULL,
	[ManagerId] [varchar](50) NULL,
	[SecurityLevel] [int] NULL,
	[Signature] [varchar](500) NULL,
	[OrganizeId] [varchar](50) NULL,
	[DepartmentId] [varchar](500) NULL,
	[RoleId] [varchar](500) NULL,
	[DutyId] [varchar](500) NULL,
	[IsAdministrator] [bit] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_USER] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呢称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'HeadIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主管主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'SecurityLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个性签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Signature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DutyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'IsAdministrator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User'
GO
INSERT [dbo].[Sys_User] ([Id], [Account], [RealName], [NickName], [HeadIcon], [Gender], [Birthday], [MobilePhone], [Email], [WeChat], [ManagerId], [SecurityLevel], [Signature], [OrganizeId], [DepartmentId], [RoleId], [DutyId], [IsAdministrator], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'admin', N'超级管理员', N'超级管理员', NULL, 1, NULL, N'13600000000', NULL, NULL, NULL, NULL, NULL, N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', NULL, NULL, 0, NULL, 0, 1, N'系统内置账户', CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_RoleAuthorize]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_RoleAuthorize](
	[Id] [varchar](50) NOT NULL,
	[ItemType] [int] NULL,
	[ItemId] [varchar](50) NULL,
	[ObjectType] [int] NULL,
	[ObjectId] [varchar](50) NULL,
	[SortCode] [int] NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ROLEAUTHORIZE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色授权主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型1-模块2-按钮3-列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'ItemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象分类1-角色2-部门-3用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'ObjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'ObjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色授权表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize'
GO
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'01f23b86-e5e6-4f9b-a564-6b6270137957', 2, N'53421218-b186-46cf-828a-910e10e08ddc', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'021a7b39-5a01-48b7-8388-4f1e00831a52', 1, N'9F56840F-DF92-4936-A48C-8F65A39291A2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'031209d6-c844-461d-94f2-6903ec484c8d', 1, N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'03cfca73-c4e9-456c-bd5c-db616b35d7f3', 2, N'f93763ff-51a1-478d-9585-3c86084c54f3', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'074782fe-1bd0-4bce-8855-ee8f36696156', 1, N'822E2523-5105-4AE0-BF48-62459D3641F6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'0a9ce058-9b7c-4f08-8ab9-4c24dec470fa', 2, N'709a4a7b-4d98-462d-b47c-351ef11db06f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'0af88369-83c0-4d51-b93a-73f304e56b95', 2, N'0c548df3-c573-4f6f-b073-1d8c79ddc6d1', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'0bfe9d1a-5654-4425-816c-772f13a2d9a8', 1, N'7858E329-16FC-49F4-93A1-11E2E7EF2998', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'0c6d0e22-8f1c-4a8a-9652-efe9b54449e2', 2, N'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'0e115ab4-50ac-48a6-bbac-688760f5f671', 2, N'85F5212F-E321-4124-B155-9374AA5D9C10', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'113baf9f-de5f-45a7-805d-f1131378a0fb', 2, N'13c9a15f-c50d-4f09-8344-fd0050f70086', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'12bcc6e1-effe-4b03-8317-22bdc7e91e8d', 1, N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'12e582c2-f7ac-4a45-960e-6a6393b6892b', 2, N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1671dfbd-7eb3-4144-a125-5ab1da4a3052', 1, N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'180e8ac6-86d1-412a-86e3-a61742f7a8f2', 1, N'6BBC3562-1051-4246-98B0-9F37CAC40DC8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1a34e192-fb99-4f48-9e36-6c292a0a77a7', 2, N'd9f92389-8d32-4ce2-8b86-98e3306aa8c0', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1a912dfc-8be3-4826-a59f-f95b83a99999', 2, N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1b0d087b-ea06-471d-809f-ede5577deff9', 2, N'd4074121-0d4f-465e-ad37-409bbe15bf8a', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1b5f01f2-b241-4250-9716-c88c335d38f2', 2, N'104bcc01-0cfd-433f-87f4-29a8a3efb313', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1c1e3ebe-7f68-48f0-be33-e8f39827bb12', 2, N'bdf741e8-d1fa-46bc-9222-94d79b5137da', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1c96b537-36de-4c56-98fe-f4d7f599391b', 1, N'337A4661-99A5-4E5E-B028-861CACAF9917', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2454eeb7-4882-478e-8fb8-4de493b060ae', 1, N'163DA347-887C-4C91-8298-EB00FFBFEC84', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'24cb4d25-be32-49aa-8c03-02e4f8f1ec46', 2, N'41862743-f703-4b6d-be54-08d253eb0ebc', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'29f41a23-4a70-43e7-b8ea-aea8b0d74d8b', 2, N'8379135e-5b13-4236-bfb1-9289e6129034', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2b0048de-2f87-4156-a815-6e3573865d63', 2, N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2b8654cb-a369-4aaa-b80d-abc94183998c', 2, N'b0d81444-6b44-4809-a263-94ec1319e730', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2c5deed6-47d7-41ce-8715-1e5f030b0308', 2, N'82f162cb-beb9-4a79-8924-cd1860e26e2e', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2d4683b1-4b2f-43ac-9dec-aadfbf80c758', 2, N'74eecdfb-3bee-405d-be07-27a78219c179', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2f89ce5e-a39c-4927-9eef-118594082764', 2, N'88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'2fd0561d-0a59-4a91-b7e8-43df4959a282', 2, N'f5e3b561-88f7-4c59-8c01-dbfd3312f295', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'305ba3ce-21a1-439a-b77c-749febaede12', 2, N'239077ff-13e1-4720-84e1-67b6f0276979', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'30d67d5b-211a-420c-90c9-4a2962941c20', 1, N'A33ADBFC-089B-4981-BFAB-08178052EE36', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'31081b04-d681-4b07-aea0-9ee2e50c6eb6', 2, N'8c7013a9-3682-4367-8bc6-c77ca89f346b', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'330f82e8-f34b-4140-b7f0-91ea8d783d89', 1, N'AF34B824-439E-4365-99CC-C1D30514D869', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'331b7a63-eb2a-4076-af17-33bb9a9a8132', 2, N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'374b3b57-80cb-4dd4-a990-5e212b832053', 2, N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'396d751b-20ba-4c1a-9215-522bc7f0ec73', 1, N'39E97B05-7B6F-4069-9972-6F9643BC3042', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'3e33a930-19ea-458b-9c0a-4e4c1f1fee06', 1, N'2c9d1684-46db-4572-9882-f37569d1cff0', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'41689f24-64b1-4c9a-81f3-8b8f37c08b01', 2, N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'423eece4-a4b3-4a3d-a899-b4a670b32dee', 2, N'dfdf1a70-5373-4e44-b767-d5270da5ee8c', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'44aa9d2f-d080-41d6-9300-2fff2a59495c', 2, N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'49b38ac0-c82e-4b2b-a7eb-60402bbd383b', 2, N'91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'4d3251c8-02b5-4835-9081-3e2336453b45', 2, N'b9823e63-5675-479b-b7bf-c2998d4b9288', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'588ae7a0-d3a2-4a92-9da5-0e7d6d4d5052', 2, N'1f857c9d-5d2c-45ad-97da-50e76c47369f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'608cdaa7-401b-4db9-85e9-99c92d2ec7c2', 1, N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'62fc85b9-7177-432e-a124-10a20c6b3c2f', 2, N'329c0326-ce68-4a24-904d-aade67a90fc7', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'63ad4fe5-f775-465a-bd52-be8a8cc544f8', 1, N'54E9D12D-C039-4F01-A6FE-810A147D31D5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'6472f530-ab62-446f-bbd8-b3c51fe8de7b', 2, N'aa2f27a3-13d0-409e-8bdf-4977645ea380', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'64bf45e9-0a6f-486d-8e04-60a2ac12088b', 2, N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'64d52f42-c9b9-4a32-9bc8-5fe68b9ed80a', 2, N'dc8f9bf4-43da-460c-9541-d3631bbb6675', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'6664fe75-91b9-40f8-a86f-1190a8c8f5d5', 2, N'797b2758-faf9-41d1-a446-7e34c3ddde8c', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'6eccd099-8f0b-4d00-859c-1c8a61d36e10', 2, N'1ceac6db-f99c-4f31-a50a-63cd91a527cf', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'6f711542-739c-49b9-bf44-5cbad0a8970c', 1, N'35818fe3-8a75-4413-b832-0dbfdad985f9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'6fa583dd-ba8f-4325-8d49-e6609f857fff', 2, N'0f1a1049-51dc-4896-bb10-585e9beebd10', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'74f090bc-0617-4b28-acb1-0fd11575736f', 2, N'3a35c662-a356-45e4-953d-00ebd981cad6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'7bc9070f-11b3-4974-8769-463e5bcfd187', 1, N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'7f5ed389-9b84-406c-90bd-bd02d0a98b5c', 2, N'33812b2f-6a5c-4c19-bc56-c4171969333e', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'82205655-fb01-4a84-b6f6-7ce5dd572b08', 1, N'D2ECB516-4CB7-49B1-B536-504382115DD2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'8439004f-5dea-409f-8c33-4932c51ea091', 2, N'15362a59-b242-494a-bc6e-413b4a63580e', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'1a4cea67-96f2-4fb1-841f-e9d643229a0e', 1, N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'8647b29a-9831-46b0-b969-10d2e685e352', 2, N'4727adf7-5525-4c8c-9de5-39e49c268349', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'87c9c853-836f-493b-938f-dec460a69d84', 1, N'e72c75d0-3a69-41ad-b220-13c9a62ec788', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'8a9b9d81-a404-4223-b581-070d94dbd7c5', 2, N'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'8c469f8a-a5de-41a0-a986-f70edd660b0b', 1, N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'8d94895c-6dd1-44c7-b427-69bcb6a7dfa8', 2, N'0d777b07-041a-4205-a393-d1a009aaafc7', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'8e6287f4-e653-4230-8795-e2149ac9d3e0', 2, N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'90693887-617d-4abb-a769-f2bf2807a018', 1, N'7B959522-BE45-4747-B89D-592C7F3987A5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'910d55fc-44dd-4587-ac0d-4f9c9abe669c', 1, N'73FD1267-79BA-4E23-A152-744AF73117E9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'955b8643-24a8-4ae1-add7-cc59a81f9885', 1, N'ccde059f-0908-48a6-8270-141433fa007a', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'9777189f-51e0-4a22-9b15-36b42b9fa366', 1, N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'98107c16-373d-43ce-97da-461512ecb281', 1, N'91425AF9-F762-43AF-B784-107D23FFDC85', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'99c2be16-c9a2-40ef-9a4d-a098165324b8', 2, N'aed66cfb-d78e-43d4-9987-c714546be7eb', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'9b62564d-1a3d-40f1-b392-c9f7e1bddabb', 1, N'bfb9c6a3-ca1b-4e1f-9bd9-28c43f7fd5b2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'9b9132ab-d1c8-46fa-bd54-73ca02105033', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'9d736d53-17ea-4222-bc9a-cb422c72e42e', 2, N'8c96c519-c4b8-4e6d-a197-40260afc8bb1', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'a2532d2d-47ce-4e98-998a-b885b9cd07c5', 1, N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'a6789ddf-33a1-4f69-8c51-af306069b6a5', 1, N'a3a4742d-ca39-42ec-b95a-8552a6fae579', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'a884916e-ea59-4cb3-bfef-a4a67f1e6262', 2, N'4b876abc-1b85-47b0-abc7-96e313b18ed8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'ac4a7d88-7584-4824-9fe3-afc31a507ba8', 2, N'04963e4d-f693-4eda-a1f6-b68ced0323de', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'ada1857c-a5f3-46e8-ba29-286604e6f48c', 2, N'6b9977e2-bd6e-426e-968c-36a7b1f47e55', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'af80b4bc-49d9-4ea6-b4cd-7ff37ddc73de', 2, N'e75e4efc-d461-4334-a764-56992fec38e6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'b0cbe3b4-0b25-4446-9bac-64623ee54cf5', 1, N'F2DAD50B-95DF-48F7-8638-BA503B539143', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'b0d82ea6-da21-4520-9afb-95bc89e4bc95', 2, N'a8a4c9ac-e9ae-44d0-8a0b-56de71a67d59', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'b3b22a9c-3e38-4e8c-8bf3-2da746aa4312', 1, N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'bb282edf-bd9a-4ae3-80de-f3b62667b7df', 2, N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'bbed8de3-2318-44d1-ba57-0e5b76184420', 2, N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'bc88e7fb-93d3-419b-91c4-37118db2bbc3', 1, N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'c1c53503-23b4-4b10-bfff-4f31257474af', 2, N'38e39592-6e86-42fb-8f72-adea0c82cbc1', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'c65eba52-8a80-4790-b8bd-db7780a015b6', 2, N'6853ab67-2d83-45bf-aac9-09d3e470ab22', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'c80da185-f105-43d0-ae55-b0fa341052a1', 2, N'e74187af-a22a-4477-be1a-11ab8c0bc76f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'c8311d1c-4415-4aa3-983e-a2e10cc017c9', 1, N'C3D12056-D906-4D8B-8B9C-954942742BDE', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'd3c05709-0065-4f7b-877e-d270f509defe', 2, N'e82a8bb7-d913-4492-bfb1-ab1d3db9844f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'da4289a4-8cfe-411c-bc06-5eed3bfc45b5', 1, N'F298F868-B689-4982-8C8B-9268CBF0308D', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'dae7b29b-2cb6-4d90-976b-691fd6f63a8e', 1, N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'db7aa771-2685-4e9e-93b6-d99b2bd7bf15', 1, N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'ddf14c64-dc9f-4586-9348-cd1d71848e43', 1, N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'df17209a-9efa-4f6d-bc54-0f649bdb6d1f', 2, N'abfdff21-8ebf-4024-8555-401b4df6acd9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'e7a3b98d-aec4-4975-b334-cbbd928a0f5f', 1, N'df9920e0-ba33-4e36-a911-ef08c6ea77ea', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'e99ed573-4d93-4587-b839-51f2abebb0df', 2, N'1ee1c46b-e767-4532-8636-936ea4c12003', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'ed22b6e7-1557-44db-a861-7133e6ad96bf', 2, N'8a9993af-69b2-4d8a-85b3-337745a1f428', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'f5e3e2f8-1aef-4859-8b52-690681b45527', 1, N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'f9711536-637d-4e55-b638-f5fc4b3a60ee', 2, N'89d7a69d-b953-4ce2-9294-db4f50f2a157', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'fadb4019-a0bf-4d7e-bdd1-26e6f8fed90f', 1, N'38CA5A66-C993-4410-AF95-50489B22939C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
INSERT [dbo].[Sys_RoleAuthorize] ([Id], [ItemType], [ItemId], [ObjectType], [ObjectId], [SortCode], [CreatorTime], [CreatorUserId]) VALUES (N'fce935b2-362d-4954-9d2c-aec5da0a1a04', 2, N'bca253a4-db31-4d6f-a27e-494c64c4dc28', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Id] [varchar](50) NOT NULL,
	[OrganizeId] [varchar](50) NULL,
	[Category] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[AllowEdit] [bit] NULL,
	[AllowDelete] [bit] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类:1-角色2-岗位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role'
GO
INSERT [dbo].[Sys_Role] ([Id], [OrganizeId], [Category], [EnCode], [FullName], [Type], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'administrators', N'超级管理员', N'1', 1, 1, 1, 0, 1, NULL, CAST(0x0000A63F00000000 AS DateTime), NULL, CAST(0x0000A64D00011946 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_Organize]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Organize](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[ShortName] [varchar](50) NULL,
	[CategoryId] [varchar](50) NULL,
	[ManagerId] [varchar](50) NULL,
	[TelePhone] [varchar](20) NULL,
	[MobilePhone] [varchar](20) NULL,
	[WeChat] [varchar](50) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[AreaId] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[AllowEdit] [bit] NULL,
	[AllowDelete] [bit] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_ORGANIZE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'ShortName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'TelePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'归属区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize'
GO
INSERT [dbo].[Sys_Organize] ([Id], [ParentId], [Layers], [EnCode], [FullName], [ShortName], [CategoryId], [ManagerId], [TelePhone], [MobilePhone], [WeChat], [Fax], [Email], [AreaId], [Address], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'0', 1, N'Company', N'GongTaoHub', NULL, N'Company', N'GT', NULL, NULL, NULL, NULL, NULL, NULL, N'上海市宝山区', NULL, NULL, 1, 0, 1, NULL, CAST(0x0000A62100000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_ModuleButton]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleButton](
	[Id] [varchar](50) NOT NULL,
	[ModuleId] [varchar](50) NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Icon] [varchar](50) NULL,
	[Location] [int] NULL,
	[JsEvent] [varchar](50) NULL,
	[UrlAddress] [varchar](500) NULL,
	[Split] [bit] NULL,
	[IsPublic] [bit] NULL,
	[AllowEdit] [bit] NULL,
	[AllowDelete] [bit] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_MODULEBUTTON] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'JsEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分开线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Split'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton'
GO
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-add', N'新增菜单', NULL, 1, N'btn_add()', N'/SystemManage/Module/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01027E86 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-edit', N'修改菜单', NULL, 2, N'btn_edit()', N'/SystemManage/Module/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01027772 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'85F5212F-E321-4124-B155-9374AA5D9C10', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-delete', N'删除菜单', NULL, 2, N'btn_delete()', N'/SystemManage/Module/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0102867A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D4FCAFED-7640-449E-80B7-622DDACD5012', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-Details', N'查看菜单', NULL, 2, N'btn_details()', N'/SystemManage/Module/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0102946D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-modulebutton', N'按钮管理', NULL, 2, N'btn_modulebutton()', N'/SystemManage/ModuleButton/Index', 0, 0, NULL, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-delete', N'删除机构', NULL, 2, N'btn_delete()', N'/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'709a4a7b-4d98-462d-b47c-351ef11db06f', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-Details', N'查看机构', NULL, 2, N'btn_details()', N'/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-edit', N'修改机构', NULL, 2, N'btn_edit()', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-add', N'新建机构', NULL, 1, N'btn_add()', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'239077ff-13e1-4720-84e1-67b6f0276979', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-delete', N'删除角色', NULL, 2, N'btn_delete()', N'/SystemManage/Role/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-add', N'新建角色', NULL, 1, N'btn_add()', N'/SystemManage/Role/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'f93763ff-51a1-478d-9585-3c86084c54f3', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-Details', N'查看角色', NULL, 2, N'btn_details()', N'/SystemManage/Role/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ffffe7f8-900c-413a-9970-bee7d6599cce', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-edit', N'修改角色', NULL, 2, N'btn_edit()', N'/SystemManage/Role/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'13c9a15f-c50d-4f09-8344-fd0050f70086', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-add', N'新建岗位', NULL, 1, N'btn_add()', N'/SystemManage/Duty/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'88f7b3a8-fd6d-4f8e-a861-11405f434868', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-Details', N'查看岗位', NULL, 2, N'btn_details()', N'/SystemManage/Duty/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8a9993af-69b2-4d8a-85b3-337745a1f428', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-delete', N'删除岗位', NULL, 2, N'btn_delete()', N'/SystemManage/Duty/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e75e4efc-d461-4334-a764-56992fec38e6', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-edit', N'修改岗位', NULL, 2, N'btn_edit()', N'/SystemManage/Duty/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-delete', N'删除用户', NULL, 2, N'btn_delete()', N'/SystemManage/User/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00EB2BC2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'4727adf7-5525-4c8c-9de5-39e49c268349', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-edit', N'修改用户', NULL, 2, N'btn_edit()', N'/SystemManage/User/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00EB1D4C AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'74eecdfb-3bee-405d-be07-27a78219c179', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-add', N'新建用户', NULL, 1, N'btn_add()', N'/SystemManage/User/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00EB0788 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'abfdff21-8ebf-4024-8555-401b4df6acd9', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-Details', N'查看用户', NULL, 2, N'btn_details()', N'/SystemManage/User/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E00FF345D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'38e39592-6e86-42fb-8f72-adea0c82cbc1', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-revisepassword', N'密码重置', NULL, 2, N'btn_revisepassword()', N'/SystemManage/User/RevisePassword', 1, 0, 0, 0, 5, NULL, 1, NULL, CAST(0x0000A64E00EBBF7E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'15362a59-b242-494a-bc6e-413b4a63580e', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-disabled', N'禁用', NULL, 2, N'btn_disabled()', N'/SystemManage/User/DisabledAccount', 0, 0, 0, 0, 6, NULL, 1, NULL, CAST(0x0000A64E00FE4EE8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A64E00FF08B4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-enabled', N'启用', NULL, 2, N'btn_enabled()', N'/SystemManage/User/EnabledAccount', 0, 0, 0, 0, 7, NULL, 1, NULL, CAST(0x0000A64E00FEEC37 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-add', N'新建区域', NULL, 1, N'btn_add()', N'/SystemManage/Area/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01001A9F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'89d7a69d-b953-4ce2-9294-db4f50f2a157', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-edit', N'修改区域', NULL, 2, N'btn_edit()', N'/SystemManage/Area/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01002C82 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8c7013a9-3682-4367-8bc6-c77ca89f346b', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-delete', N'删除区域', NULL, 2, N'btn_delete()', N'/SystemManage/Area/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01003A73 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0d777b07-041a-4205-a393-d1a009aaafc7', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-edit', N'修改字典', NULL, 2, N'btn_edit()', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01018CE3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'104bcc01-0cfd-433f-87f4-29a8a3efb313', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-add', N'新建字典', NULL, 1, N'btn_add()', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010183EE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'1ee1c46b-e767-4532-8636-936ea4c12003', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-delete', N'删除字典', NULL, 2, N'btn_delete()', N'/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0101991F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'82f162cb-beb9-4a79-8924-cd1860e26e2e', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-Details', N'查看字典', NULL, 2, N'btn_details()', N'/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0101A11D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'4b876abc-1b85-47b0-abc7-96e313b18ed8', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', NULL, N'NF-itemstype', N'分类管理', NULL, 1, N'btn_itemstype()', N'/SystemManage/ItemsType/Index', 0, 0, 0, 0, 2, NULL, 1, NULL, CAST(0x0000A64E01012D73 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-delete', N'删除备份', NULL, 2, N'btn_delete()', N'/SystemSecurity/DbBackup/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01045132 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'41862743-f703-4b6d-be54-08d253eb0ebc', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-add', N'新建备份', NULL, 1, N'btn_add()', N'/SystemSecurity/DbBackup/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010312F0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'aed66cfb-d78e-43d4-9987-c714546be7eb', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-download', N'下载备份', NULL, 2, N'btn_download()', N'/SystemSecurity/DbBackup/DownloadBackup', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0104743B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'329c0326-ce68-4a24-904d-aade67a90fc7', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-Details', N'查看策略', NULL, 2, N'btn_details()', N'/SystemSecurity/FilterIP/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E0107245F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8379135e-5b13-4236-bfb1-9289e6129034', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-delete', N'删除策略', NULL, 2, N'btn_delete()', N'/SystemSecurity/FilterIP/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01071C1E AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-edit', N'修改策略', NULL, 2, N'btn_edit()', N'/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01071360 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'd4074121-0d4f-465e-ad37-409bbe15bf8a', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-add', N'新建策略', NULL, 1, N'btn_add()', N'/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E010708F8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'3a35c662-a356-45e4-953d-00ebd981cad6', N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', N'0', 1, N'NF-removelog', N'清空日志', NULL, 1, N'btn_removeLog()', N'/SystemSecurity/Log/RemoveLog', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64E01088E16 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'1f857c9d-5d2c-45ad-97da-50e76c47369f', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', 1, N'NF-delete', N'删除流程', NULL, 2, N'btn_delete()', N'/WFManage/Flow/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A8A8017F73DC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'33812b2f-6a5c-4c19-bc56-c4171969333e', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', 1, N'NF-edit', N'修改流程', NULL, 2, N'btn_edit()', N'/WFManage/Flow/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A8A8017F6E38 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'aa2f27a3-13d0-409e-8bdf-4977645ea380', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', 1, N'NF-Details', N'查看流程', NULL, 2, N'btn_details()', N'/WFManage/Flow/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A8A8017F7B22 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'dc8f9bf4-43da-460c-9541-d3631bbb6675', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', 1, N'NF-add', N'新建流程', NULL, 1, N'btn_add()', N'/WFManage/Flow/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A8A8017F691F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'6b9977e2-bd6e-426e-968c-36a7b1f47e55', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', 1, N'NF-Design', N'流程设计', NULL, 2, N'btn_design()', N'/WFManage/Flow/Design', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A8A8017FA983 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0c548df3-c573-4f6f-b073-1d8c79ddc6d1', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', NULL, N'NF-disabled', N'禁用', NULL, 2, N'btn_disabled()', N'/WFManage/Flow/DisabledForm', 0, 0, 0, 0, 6, NULL, 1, NULL, CAST(0x0000A64E00FE4EE8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8A80183C734 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8c96c519-c4b8-4e6d-a197-40260afc8bb1', N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'0', NULL, N'NF-enabled', N'启用', NULL, 2, N'btn_enabled()', N'/WFManage/Flow/EnabledForm', 0, 0, 0, 0, 7, NULL, 1, NULL, CAST(0x0000A64E00FEEC37 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8A80183F80F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0f1a1049-51dc-4896-bb10-585e9beebd10', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', 1, N'NF-add', N'新建表单', NULL, 1, N'btn_add()', N'/WFManage/CustomForm/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AB00C17C16 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'1ceac6db-f99c-4f31-a50a-63cd91a527cf', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', 1, N'NF-Details', N'查看表单', NULL, 2, N'btn_details()', N'/WFManage/CustomForm/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AB00C19A1A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'53421218-b186-46cf-828a-910e10e08ddc', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', 1, N'NF-Design', N'流程表单', NULL, 2, N'btn_design()', N'/WFManage/CustomForm/Design', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AB00C1A2B6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a8a4c9ac-e9ae-44d0-8a0b-56de71a67d59', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', 1, N'NF-delete', N'删除表单', NULL, 2, N'btn_delete()', N'/WFManage/CustomForm/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AB00C19070 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'bca253a4-db31-4d6f-a27e-494c64c4dc28', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', NULL, N'NF-enabled', N'启用', NULL, 2, N'btn_enabled()', N'/WFManage/CustomForm/EnabledForm', 0, 0, 0, 0, 7, NULL, 1, NULL, CAST(0x0000A64E00FEEC37 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8AB00C1AEBA AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e74187af-a22a-4477-be1a-11ab8c0bc76f', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', NULL, N'NF-disabled', N'禁用', NULL, 2, N'btn_disabled()', N'/WFManage/CustomForm/DisabledForm', 0, 0, 0, 0, 6, NULL, 1, NULL, CAST(0x0000A64E00FE4EE8 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8AB00C1A9A0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e82a8bb7-d913-4492-bfb1-ab1d3db9844f', N'ccde059f-0908-48a6-8270-141433fa007a', N'0', 1, N'NF-edit', N'修改表单', NULL, 2, N'btn_edit()', N'/WFManage/CustomForm/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AB00C1870D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'04963e4d-f693-4eda-a1f6-b68ced0323de', N'2c9d1684-46db-4572-9882-f37569d1cff0', N'0', NULL, N'NF-itemstype', N'分类管理', NULL, 1, N'btn_itemstype()', N'/WFManage/FlowDictionary/Index', 0, 0, 0, 0, 2, NULL, 1, NULL, CAST(0x0000A64E01012D73 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8AC00DAFFCE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'b0d81444-6b44-4809-a263-94ec1319e730', N'2c9d1684-46db-4572-9882-f37569d1cff0', N'0', 1, N'NF-add', N'新建字典', NULL, 1, N'btn_add()', N'/WFManage/FlowDictionaryDetail/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AC00DAF5A2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'b9823e63-5675-479b-b7bf-c2998d4b9288', N'2c9d1684-46db-4572-9882-f37569d1cff0', N'0', 1, N'NF-delete', N'删除字典', NULL, 2, N'btn_delete()', N'/WFManage/FlowDictionaryDetail/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AC00DB1577 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'bdf741e8-d1fa-46bc-9222-94d79b5137da', N'2c9d1684-46db-4572-9882-f37569d1cff0', N'0', 1, N'NF-Details', N'查看字典', NULL, 2, N'btn_details()', N'/WFManage/FlowDictionaryDetail/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AC00DB1C78 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'dfdf1a70-5373-4e44-b767-d5270da5ee8c', N'2c9d1684-46db-4572-9882-f37569d1cff0', N'0', 1, N'NF-edit', N'修改字典', NULL, 2, N'btn_edit()', N'/WFManage/FlowDictionaryDetail/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A8AC00DB09A3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'797b2758-faf9-41d1-a446-7e34c3ddde8c', N'bfb9c6a3-ca1b-4e1f-9bd9-28c43f7fd5b2', N'0', 1, N'NF-apply', N'工作申请', NULL, 1, N'btn_apply()', N'/WFManage/Work/Apply', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A8B00107E8F4 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'6853ab67-2d83-45bf-aac9-09d3e470ab22', N'35818fe3-8a75-4413-b832-0dbfdad985f9', N'0', 1, N'NF-edit', N'修改申请', NULL, 2, N'btn_edit()', N'/WFManage/Work/ApplyForm', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A8B100F5CD40 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'f5e3b561-88f7-4c59-8c01-dbfd3312f295', N'35818fe3-8a75-4413-b832-0dbfdad985f9', N'0', 1, N'NF-submit', N'提交申请', NULL, 2, N'btn_submit()', N'/WFManage/Work/SubmitApply', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A8B100F62CD6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'd9f92389-8d32-4ce2-8b86-98e3306aa8c0', N'35818fe3-8a75-4413-b832-0dbfdad985f9', N'0', 1, N'NF-details', N'查看申请', NULL, 2, N'btn_detail()', N'/WFManage/Work/ApplyDetails', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A8B2009BAA52 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'b8faee9d-f063-4983-894f-7e31e71eea79', N'0bdfa7a5-ec75-418c-b69a-fbcf1e00da12', N'0', 1, N'NF-appro', N'审核', NULL, 2, N'btn_appro()', N'/WFManage/Work/ApplyApproval', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A8B3017537D2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_ModuleButton] ([Id], [ModuleId], [ParentId], [Layers], [EnCode], [FullName], [Icon], [Location], [JsEvent], [UrlAddress], [Split], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'72842fdf-be62-4cb8-896f-18f6e82c9795', N'0bdfa7a5-ec75-418c-b69a-fbcf1e00da12', N'0', 1, N'NF-details', N'查看申请', NULL, 2, N'btn_detail()', N'/WFManage/Work/ApplyDetails', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A8B301753D5F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Module](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Icon] [varchar](50) NULL,
	[UrlAddress] [varchar](500) NULL,
	[Target] [varchar](50) NULL,
	[IsMenu] [bit] NULL,
	[IsExpand] [bit] NULL,
	[IsPublic] [bit] NULL,
	[AllowEdit] [bit] NULL,
	[AllowDelete] [bit] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'IsMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'IsExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module'
GO
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'73FD1267-79BA-4E23-A152-744AF73117E9', NULL, NULL, N'数据备份', NULL, N'/SystemSecurity/DbBackup/Index', N'iframe', 1, 0, 0, 0, 0, 1, NULL, 1, NULL, CAST(0x0000A646016BF4C7 AS DateTime), NULL, CAST(0x0000A649010BFA69 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'462027E0-0848-41DD-BCC3-025DCAE65555', N'0', 1, NULL, N'系统管理', N'fa fa-gears', NULL, N'expand', 0, 1, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B010409F6 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'73FD1267-79BA-4E23-A152-744AF73117E9', N'0', 1, NULL, N'系统安全', N'fa fa-desktop', NULL, N'expand', 0, 1, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B0104154A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', N'0', 1, NULL, N'统计报表', N'fa fa-bar-chart-o', N'fa fa-bar-chart-o', N'expand', 0, 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B010425ED AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9F56840F-DF92-4936-A48C-8F65A39291A2', N'0', 1, NULL, N'常用示例', N'fa fa-tags', NULL, N'expand', 0, 1, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B01043548 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'73FD1267-79BA-4E23-A152-744AF73117E9', NULL, NULL, N'访问控制', NULL, N'/SystemSecurity/FilterIP/Index', N'iframe', 1, 0, 0, 0, 0, 2, NULL, 1, NULL, CAST(0x0000A646016C3EB0 AS DateTime), NULL, CAST(0x0000A649010C141D AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'系统菜单', NULL, N'/SystemManage/Module/Index', N'iframe', 1, 0, 0, 0, 0, 7, 0, 1, N'测试', NULL, NULL, CAST(0x0000A65000B291CC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'38CA5A66-C993-4410-AF95-50489B22939C', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'用户管理', NULL, N'/SystemManage/User/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A643010DEE59 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'机构管理', NULL, N'/SystemManage/Organize/Index', N'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64401705686 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'角色管理', NULL, N'/SystemManage/Role/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A643010DE052 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'337A4661-99A5-4E5E-B028-861CACAF9917', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'区域管理', NULL, N'/SystemManage/Area/Index', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000A643010DA7EE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'数据字典', NULL, N'/SystemManage/ItemsData/Index', N'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, CAST(0x0000A6440171B901 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'F298F868-B689-4982-8C8B-9268CBF0308D', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'岗位管理', NULL, N'/SystemManage/Duty/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A643010DE701 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, NULL, N'系统日志', NULL, N'/SystemSecurity/Log/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A649010C27B8 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'df9920e0-ba33-4e36-a911-ef08c6ea77ea', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'饼图', NULL, N'/ReportManage/Highcharts/Sample7', N'iframe', 1, 0, 0, 0, 0, 12, NULL, 1, NULL, CAST(0x0000A649011BDF34 AS DateTime), NULL, CAST(0x0000A64B0103B959 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'3A95BBC6-CB5B-4438-869F-5F7B738E2568', NULL, NULL, NULL, N'散点图', NULL, NULL, N'iframe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, NULL, N'服务器监控', NULL, N'/SystemSecurity/ServerMonitoring/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A649010C3DD5 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'F2DAD50B-95DF-48F7-8638-BA503B539143', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'折线图', NULL, N'/ReportManage/Highcharts/Sample1', N'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B01044D25 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'曲线图', NULL, N'/ReportManage/Highcharts/Sample2', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B010395A3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'AD4BC418-B66E-48C7-BC13-81590056CD15', NULL, NULL, NULL, N'气泡图', NULL, NULL, N'iframe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'C3D12056-D906-4D8B-8B9C-954942742BDE', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'面积图', NULL, N'/ReportManage/Highcharts/Sample3', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B01039C70 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'柱状图', NULL, N'/ReportManage/Highcharts/Sample4', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B0103A3C1 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'综合报表1', NULL, N'/ReportManage/Highcharts/Sample14', N'iframe', 1, 0, 0, 0, 0, 21, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B0103EDAE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'6BBC3562-1051-4246-98B0-9F37CAC40DC8', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'综合报表2', NULL, N'/ReportManage/Highcharts/Sample15', N'iframe', 1, 0, 0, 0, 0, 22, 0, 1, NULL, NULL, NULL, CAST(0x0000A64B01046635 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'822E2523-5105-4AE0-BF48-62459D3641F6', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'外部邮件', NULL, N'/ExampleManage/SendMail/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(0x0000A655012FB531 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7B959522-BE45-4747-B89D-592C7F3987A5', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'短信工具', NULL, N'/ExampleManage/SendMessages/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(0x0000A655017D63D3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'AF34B824-439E-4365-99CC-C1D30514D869', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'二维码生成', NULL, N'/ExampleManage/BarCode/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(0x0000A65501805B13 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D2ECB516-4CB7-49B1-B536-504382115DD2', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'打印测试', NULL, N'/ExampleManage/Print/Index', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(0x0000A65700ED716B AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'39E97B05-7B6F-4069-9972-6F9643BC3042', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'电子签章', NULL, N'/ExampleManage/Signet/Index', N'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, CAST(0x0000A6560176406A AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'91425AF9-F762-43AF-B784-107D23FFDC85', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'模拟时钟', NULL, N'/ReportManage/Highcharts/Sample5', N'iframe', 1, 0, 0, 0, 0, 11, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103AB64 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7858E329-16FC-49F4-93A1-11E2E7EF2998', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'仪表盘', NULL, N'/ReportManage/Highcharts/Sample6', N'iframe', 1, 0, 0, 0, 0, 12, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103B289 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'163DA347-887C-4C91-8298-EB00FFBFEC84', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'雷达图', NULL, N'/ReportManage/Highcharts/Sample8', N'iframe', 1, 0, 0, 0, 0, 13, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103C036 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'蛛网图', NULL, N'/ReportManage/Highcharts/Sample9', N'iframe', 1, 0, 0, 0, 0, 14, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103C810 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'玫瑰图', NULL, N'/ReportManage/Highcharts/Sample10', N'iframe', 1, 0, 0, 0, 0, 15, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103CFCE AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'54E9D12D-C039-4F01-A6FE-810A147D31D5', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'漏斗图', NULL, N'/ReportManage/Highcharts/Sample11', N'iframe', 1, 0, 0, 0, 0, 16, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103D7E2 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'蜡烛图', NULL, N'/ReportManage/Highcharts/Sample12', N'iframe', 1, 0, 0, 0, 0, 17, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103DE93 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'A33ADBFC-089B-4981-BFAB-08178052EE36', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'流程图', NULL, N'/ReportManage/Highcharts/Sample13', N'iframe', 1, 0, 0, 0, 0, 18, NULL, 0, NULL, NULL, NULL, CAST(0x0000A64B0103E601 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', N'0', NULL, NULL, N'工作流管理', N'fa fa-sitemap', NULL, N'expand', 0, 0, 0, 0, 0, 3, NULL, 1, NULL, CAST(0x0000A8A8016C4480 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'c1c8158e-bdf0-434c-825a-ae1bc73ccbc5', N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', NULL, NULL, N'流程管理', NULL, N'/WFManage/Flow/Index', N'iframe', 0, 0, 0, 0, 0, 40, NULL, 1, NULL, CAST(0x0000A8A8017C978F AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8AF016E6BAC AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ccde059f-0908-48a6-8270-141433fa007a', N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', NULL, NULL, N'自定义表单', NULL, N'/WFManage/CustomForm/Index', N'iframe', 0, 0, 0, 0, 0, 50, NULL, 1, NULL, CAST(0x0000A8AB00A673F3 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8AF016E6457 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2c9d1684-46db-4572-9882-f37569d1cff0', N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', NULL, NULL, N'字典管理', NULL, N'/WFManage/FlowDictionaryDetail/Index', N'iframe', 0, 0, 0, 0, 0, 60, NULL, 1, NULL, CAST(0x0000A8AC00DAA3E0 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8AF016E5B8D AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'bfb9c6a3-ca1b-4e1f-9bd9-28c43f7fd5b2', N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', NULL, NULL, N'工作申请', NULL, N'/WFManage/Work/Index', N'iframe', 0, 0, 0, 0, 0, 30, NULL, 1, NULL, CAST(0x0000A8AF016EBBED AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'35818fe3-8a75-4413-b832-0dbfdad985f9', N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', NULL, NULL, N'我的申请', NULL, N'/WFManage/Work/MyFlow', N'iframe', 0, 0, 0, 0, 0, 20, NULL, 1, NULL, CAST(0x0000A8B100F586D7 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Module] ([Id], [ParentId], [Layers], [EnCode], [FullName], [Icon], [UrlAddress], [Target], [IsMenu], [IsExpand], [IsPublic], [AllowEdit], [AllowDelete], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0bdfa7a5-ec75-418c-b69a-fbcf1e00da12', N'bc8c1ca9-9585-46b5-9f39-3c38f0e7ba41', NULL, NULL, N'我的待办', NULL, N'/WFManage/Work/MyPending', N'iframe', 0, 0, 0, 0, 0, 25, NULL, 1, NULL, CAST(0x0000A8B201569818 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(0x0000A8B20156B661 AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL)
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[Id] [varchar](50) NOT NULL,
	[Date] [datetime] NULL,
	[Account] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[IPAddressName] [varchar](50) NULL,
	[ModuleId] [varchar](50) NULL,
	[ModuleName] [varchar](50) NULL,
	[Result] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_LOG] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP所在城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'IPAddressName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'ModuleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log'
GO
/****** Object:  Table [dbo].[Sys_ItemsDetail]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ItemsDetail](
	[Id] [varchar](50) NOT NULL,
	[ItemId] [varchar](50) NULL,
	[ParentId] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[SimpleSpelling] [varchar](500) NULL,
	[IsDefault] [bit] NULL,
	[Layers] [int] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ITEMDETAIL] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'明细主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简拼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'SimpleSpelling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail'
GO
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Group', N'集团', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2C3715AC-16F7-48FC-AB40-B0931DB1E729', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Area', N'区域', NULL, NULL, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Company', N'公司', NULL, NULL, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2B540AC5-6E64-4688-BB60-E0C01DFA982C', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'SubCompany', N'子公司', NULL, NULL, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Department', N'部门', NULL, NULL, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D1F439B9-D80E-4547-9EF0-163391854AB5', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'SubDepartment', N'子部门', NULL, NULL, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'19EE595A-E775-409D-A48F-B33CF9F262C7', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'WorkGroup', N'小组', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'1', N'系统角色', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'04aba88d-f09b-46c6-bd90-a38471399b0e', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'2', N'业务角色', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'3', N'其他角色', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'1', N'草稿', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ce340c73-5048-4940-b86e-e3b3d53fdb2c', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'2', N'提交', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'41053517-215d-4e11-81cd-367c0e9578d7', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'3', N'通过', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'4', N'待审', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'63acf96d-6115-4d76-a994-438f59419aad', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'5', N'退回', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8b7b38bf-07c5-4f71-a853-41c5add4a94e', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'6', N'完成', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'49b68663-ad01-4c43-b084-f98e3e23fee8', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'7', N'废弃', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'fa6c1873-888c-4b70-a2cc-59fccbb22078', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'SqlServer', N'SqlServer', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'27e85cb8-04e7-447b-911d-dd1e97dfab83', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'Oracle', N'Oracle', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'34a642b2-44d4-485f-b3fc-6cce24f68b0f', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'MySql', N'MySql', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'1950efdf-8685-4341-8d2c-ac85ac7addd0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'1', N'小学', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'433511a9-78bd-41a0-ab25-e4d4b3423055', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'2', N'初中', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'3', N'高中', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a4974810-d88d-4d54-82cc-fd779875478f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'4', N'中专', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'486a82e3-1950-425e-b2ce-b5d98f33016a', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'5', N'大专', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'34222d46-e0c6-446e-8150-dbefc47a1d5f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'6', N'本科', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'7', N'硕士', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'930b8de2-049f-4753-b9fd-87f484911ee4', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'8', N'博士', NULL, 0, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'9', N'其他', NULL, 0, NULL, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, N'1', N'男', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'822baf7c-abdb-4257-9b78-1f550806f544', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, N'0', N'女', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'738edf2a-d59f-4992-97ef-d847db23bcb8', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'1', N'已婚', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a7c4aba2-a891-4558-9b0a-bd7a1100a645', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'2', N'未婚', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'f9609400-7caf-49af-ae3c-7671a9292fb3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'3', N'离异', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'4', N'丧偶', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7c1135be-0148-43eb-ae49-62a1e16ebbe3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'5', N'其他', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'1', N'已育', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'2', N'未育', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'3', N'其他', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'49300258-1227-4b85-b6a2-e948dbbe57a4', N'15023A4E-4856-44EB-BE71-36A106E2AA59', NULL, N'汉族', N'汉族', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'd69cb819-2bb3-4e1d-9917-33b9a439233d', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'1', N'身份证', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'4c2f2428-2e00-4336-b9ce-5a61f24193f6', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'2', N'士兵证', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'48c4e0f5-f570-4601-8946-6078762db3bf', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'3', N'军官证', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0096ad81-4317-486e-9144-a6a02999ff19', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'4', N'护照', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ace2d5e8-56d4-4c8b-8409-34bc272df404', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'5', N'其它', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'795f2695-497a-4f5e-ab1d-706095c1edb9', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Other', N'其他', NULL, 0, NULL, 0, NULL, 1, NULL, CAST(0x0000A648011B0C8E AS DateTime), NULL, CAST(0x0000A648012E2B34 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'643209c8-931b-4641-9e04-b8bdd11800af', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Login', N'登录', NULL, 0, NULL, 1, NULL, 1, NULL, CAST(0x0000A648011B14AF AS DateTime), NULL, CAST(0x0000A648012E33AC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'3c884a03-4f34-4150-b134-966387f1de2a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Exit', N'退出', NULL, 0, NULL, 2, NULL, 1, NULL, CAST(0x0000A648011B2048 AS DateTime), NULL, CAST(0x0000A648012E3AB9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ccc8e274-75da-4eb8-bed0-69008ab7c41c', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Visit', N'访问', NULL, 0, NULL, 3, NULL, 1, NULL, CAST(0x0000A648011B2679 AS DateTime), NULL, CAST(0x0000A648012E4214 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'e545061c-93fd-4ca2-ab29-b43db9db798b', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Create', N'新增', NULL, 0, NULL, 4, NULL, 1, NULL, CAST(0x0000A648011B302B AS DateTime), NULL, CAST(0x0000A648012E49D1 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Delete', N'删除', NULL, 0, NULL, 5, NULL, 1, NULL, CAST(0x0000A648011B36F0 AS DateTime), NULL, CAST(0x0000A648012E5239 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'392f88a8-02c2-49eb-8aed-b2acf474272a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Update', N'修改', NULL, 0, NULL, 6, NULL, 1, NULL, CAST(0x0000A648011B3D12 AS DateTime), NULL, CAST(0x0000A648012E5939 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'24e39617-f04e-4f6f-9209-ad71e870e7c6', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Submit', N'提交', NULL, 0, NULL, 7, NULL, 1, NULL, CAST(0x0000A648011B4316 AS DateTime), NULL, CAST(0x0000A648012E5FDD AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Sys_ItemsDetail] ([Id], [ItemId], [ParentId], [ItemCode], [ItemName], [SimpleSpelling], [IsDefault], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'7fc8fa11-4acf-409a-a771-aaf1eb81e814', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Exception', N'异常', NULL, 0, NULL, 8, NULL, 1, NULL, CAST(0x0000A648011B49F4 AS DateTime), NULL, CAST(0x0000A648012E67C1 AS DateTime), NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Items]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Items](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[IsTree] [bit] NULL,
	[Layers] [int] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ITEMS] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'树型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'IsTree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项主表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items'
GO
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'0', N'Sys_Items', N'通用字典', 0, 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'OrganizeCategory', N'机构分类', 0, 2, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'RoleType', N'角色类型', 0, 2, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbType', N'数据库类型', 0, 2, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbLogType', N'系统日志', NULL, NULL, 16, NULL, 1, NULL, CAST(0x0000A648011AD571 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'AuditState', N'审核状态', 0, 2, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'2748F35F-4EE2-417C-A907-3453146AAF67', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Certificate', N'证件名称', 0, 2, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Education', N'学历', 0, 2, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'FA7537E2-1C64-4431-84BF-66158DD63269', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'101', N'婚姻', 0, 2, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'102', N'生育', 0, 2, 13, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'15023A4E-4856-44EB-BE71-36A106E2AA59', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'103', N'民族', 0, 2, 14, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Items] ([Id], [ParentId], [EnCode], [FullName], [IsTree], [Layers], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'104', N'性别', 0, 2, 15, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_FilterIP]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_FilterIP](
	[Id] [varchar](50) NOT NULL,
	[Type] [bit] NULL,
	[StartIP] [varchar](50) NULL,
	[EndIP] [varchar](50) NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_FILTERIP] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'StartIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'EndIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP'
GO
/****** Object:  Table [dbo].[Sys_DbBackup]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_DbBackup](
	[Id] [varchar](50) NOT NULL,
	[BackupType] [varchar](50) NULL,
	[DbName] [varchar](50) NULL,
	[FileName] [varchar](50) NULL,
	[FileSize] [varchar](50) NULL,
	[FilePath] [varchar](500) NULL,
	[BackupTime] [datetime] NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_DBBACKUP] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备份主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备份类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'BackupType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'DbName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'FilePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备份时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'BackupTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库备份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup'
GO
INSERT [dbo].[Sys_DbBackup] ([Id], [BackupType], [DbName], [FileName], [FileSize], [FilePath], [BackupTime], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'8b3fb1ff-07ab-46bb-a12a-85e65a9a748d', N'1', N'NFineBase', N'201607190929504502.bak', N'2.81 MB', N'/Resource/DbBackup/201607190929504502.bak', CAST(0x0000A648009C85B1 AS DateTime), NULL, NULL, 1, NULL, CAST(0x0000A648009C85E8 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_DbBackup] ([Id], [BackupType], [DbName], [FileName], [FileSize], [FilePath], [BackupTime], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'ddbbfaf3-44b7-4e34-b0c5-c79e21aba83a', N'1', N'NFineBase', N'201607181640402083.bak', N'2.81 MB', N'/Resource/DbBackup/201607181640402083.bak', CAST(0x0000A6470112D98C AS DateTime), NULL, NULL, 1, NULL, CAST(0x0000A6470112D9B5 AS DateTime), NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Sys_Area]    Script Date: 05/19/2018 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Area](
	[Id] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[Layers] [int] NULL,
	[EnCode] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[SimpleSpelling] [varchar](50) NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NULL,
	[EnabledMark] [bit] NULL,
	[Description] [varchar](500) NULL,
	[CreatorTime] [datetime] NULL,
	[CreatorUserId] [varchar](50) NULL,
	[LastModifyTime] [datetime] NULL,
	[LastModifyUserId] [varchar](50) NULL,
	[DeleteTime] [datetime] NULL,
	[DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_AREA] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简拼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'SimpleSpelling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区域表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area'
GO
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'120100', N'120000', 2, N'120100', N'天津市', N'tjs', 120100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130100', N'130000', 2, N'130100', N'石家庄市', N'sjzs', 130100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130200', N'130000', 2, N'130200', N'唐山市', N'tss', 130200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130300', N'130000', 2, N'130300', N'秦皇岛市', N'qhds', 130300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130400', N'130000', 2, N'130400', N'邯郸市', N'hds', 130400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130500', N'130000', 2, N'130500', N'邢台市', N'xts', 130500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130600', N'130000', 2, N'130600', N'保定市', N'bds', 130600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130700', N'130000', 2, N'130700', N'张家口市', N'zjks', 130700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130800', N'130000', 2, N'130800', N'承德市', N'cds', 130800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130900', N'130000', 2, N'130900', N'沧州市', N'czs', 130900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'131000', N'130000', 2, N'131000', N'廊坊市', N'lfs', 131000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'131100', N'130000', 2, N'131100', N'衡水市', N'hss', 131100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140100', N'140000', 2, N'140100', N'太原市', N'tys', 140100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140200', N'140000', 2, N'140200', N'大同市', N'dts', 140200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140300', N'140000', 2, N'140300', N'阳泉市', N'yqs', 140300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140400', N'140000', 2, N'140400', N'长治市', N'czs', 140400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140500', N'140000', 2, N'140500', N'晋城市', N'jcs', 140500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140600', N'140000', 2, N'140600', N'朔州市', N'szs', 140600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140700', N'140000', 2, N'140700', N'晋中市', N'jzs', 140700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140800', N'140000', 2, N'140800', N'运城市', N'ycs', 140800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140900', N'140000', 2, N'140900', N'忻州市', N'xzs', 140900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'141000', N'140000', 2, N'141000', N'临汾市', N'lfs', 141000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'141100', N'140000', 2, N'141100', N'吕梁市', N'lls', 141100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150100', N'150000', 2, N'150100', N'呼和浩特市', N'hhhts', 150100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150200', N'150000', 2, N'150200', N'包头市', N'bts', 150200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150300', N'150000', 2, N'150300', N'乌海市', N'whs', 150300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150400', N'150000', 2, N'150400', N'赤峰市', N'cfs', 150400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150500', N'150000', 2, N'150500', N'通辽市', N'tls', 150500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150600', N'150000', 2, N'150600', N'鄂尔多斯市', N'eedss', 150600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150700', N'150000', 2, N'150700', N'呼伦贝尔市', N'hlbes', 150700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150800', N'150000', 2, N'150800', N'巴彦淖尔市', N'bynes', 150800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340400', N'340000', 2, N'340400', N'淮南市', N'hns', 340400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340500', N'340000', 2, N'340500', N'马鞍山市', N'mass', 340500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340600', N'340000', 2, N'340600', N'淮北市', N'hbs', 340600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340700', N'340000', 2, N'340700', N'铜陵市', N'tls', 340700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340800', N'340000', 2, N'340800', N'安庆市', N'aqs', 340800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341000', N'340000', 2, N'341000', N'黄山市', N'hss', 341000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341100', N'340000', 2, N'341100', N'滁州市', N'czs', 341100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341200', N'340000', 2, N'341200', N'阜阳市', N'fys', 341200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341300', N'340000', 2, N'341300', N'宿州市', N'szs', 341300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341500', N'340000', 2, N'341500', N'六安市', N'las', 341500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341600', N'340000', 2, N'341600', N'亳州市', N'bzs', 341600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341700', N'340000', 2, N'341700', N'池州市', N'czs', 341700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'341800', N'340000', 2, N'341800', N'宣城市', N'xcs', 341800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350100', N'350000', 2, N'350100', N'福州市', N'fzs', 350100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350200', N'350000', 2, N'350200', N'厦门市', N'xms', 350200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350300', N'350000', 2, N'350300', N'莆田市', N'pts', 350300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350400', N'350000', 2, N'350400', N'三明市', N'sms', 350400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350500', N'350000', 2, N'350500', N'泉州市', N'qzs', 350500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350600', N'350000', 2, N'350600', N'漳州市', N'zzs', 350600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350700', N'350000', 2, N'350700', N'南平市', N'nps', 350700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350800', N'350000', 2, N'350800', N'龙岩市', N'lys', 350800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350900', N'350000', 2, N'350900', N'宁德市', N'nds', 350900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360100', N'360000', 2, N'360100', N'南昌市', N'ncs', 360100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360200', N'360000', 2, N'360200', N'景德镇市', N'jdzs', 360200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360300', N'360000', 2, N'360300', N'萍乡市', N'pxs', 360300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360400', N'360000', 2, N'360400', N'九江市', N'jjs', 360400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360500', N'360000', 2, N'360500', N'新余市', N'xys', 360500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360600', N'360000', 2, N'360600', N'鹰潭市', N'yts', 360600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360700', N'360000', 2, N'360700', N'赣州市', N'gzs', 360700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360800', N'360000', 2, N'360800', N'吉安市', N'jas', 360800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360900', N'360000', 2, N'360900', N'宜春市', N'ycs', 360900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'361000', N'360000', 2, N'361000', N'抚州市', N'fzs', 361000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'361100', N'360000', 2, N'361100', N'上饶市', N'srs', 361100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370100', N'370000', 2, N'370100', N'济南市', N'jns', 370100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370200', N'370000', 2, N'370200', N'青岛市', N'qds', 370200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370300', N'370000', 2, N'370300', N'淄博市', N'zbs', 370300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370400', N'370000', 2, N'370400', N'枣庄市', N'zzs', 370400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370500', N'370000', 2, N'370500', N'东营市', N'dys', 370500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370600', N'370000', 2, N'370600', N'烟台市', N'yts', 370600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370700', N'370000', 2, N'370700', N'潍坊市', N'wfs', 370700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370800', N'370000', 2, N'370800', N'济宁市', N'jns', 370800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370900', N'370000', 2, N'370900', N'泰安市', N'tas', 370900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371000', N'370000', 2, N'371000', N'威海市', N'whs', 371000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371100', N'370000', 2, N'371100', N'日照市', N'rzs', 371100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371200', N'370000', 2, N'371200', N'莱芜市', N'lws', 371200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371300', N'370000', 2, N'371300', N'临沂市', N'lys', 371300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371400', N'370000', 2, N'371400', N'德州市', N'dzs', 371400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371500', N'370000', 2, N'371500', N'聊城市', N'lcs', 371500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371600', N'370000', 2, N'371600', N'滨州市', N'bzs', 371600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'371700', N'370000', 2, N'371700', N'菏泽市', N'hzs', 371700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410100', N'410000', 2, N'410100', N'郑州市', N'zzs', 410100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410200', N'410000', 2, N'410200', N'开封市', N'kfs', 410200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410300', N'410000', 2, N'410300', N'洛阳市', N'lys', 410300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410400', N'410000', 2, N'410400', N'平顶山市', N'pdss', 410400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410500', N'410000', 2, N'410500', N'安阳市', N'ays', 410500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410600', N'410000', 2, N'410600', N'鹤壁市', N'hbs', 410600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410700', N'410000', 2, N'410700', N'新乡市', N'xxs', 410700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410800', N'410000', 2, N'410800', N'焦作市', N'jzs', 410800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410881', N'410000', 2, N'410881', N'济源市', N'jys', 410881, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410900', N'410000', 2, N'410900', N'濮阳市', N'pys', 410900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411000', N'410000', 2, N'411000', N'许昌市', N'xcs', 411000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411100', N'410000', 2, N'411100', N'漯河市', N'lhs', 411100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411200', N'410000', 2, N'411200', N'三门峡市', N'smxs', 411200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411300', N'410000', 2, N'411300', N'南阳市', N'nys', 411300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411400', N'410000', 2, N'411400', N'商丘市', N'sqs', 411400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411500', N'410000', 2, N'411500', N'信阳市', N'xys', 411500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411600', N'410000', 2, N'411600', N'周口市', N'zks', 411600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'152200', N'150000', 2, N'152200', N'兴安盟', N'xam', 152200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'152500', N'150000', 2, N'152500', N'锡林郭勒盟', N'xlglm', 152500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'152900', N'150000', 2, N'152900', N'阿拉善盟', N'alsm', 152900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210100', N'210000', 2, N'210100', N'沈阳市', N'sys', 210100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210200', N'210000', 2, N'210200', N'大连市', N'dls', 210200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210300', N'210000', 2, N'210300', N'鞍山市', N'ass', 210300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210400', N'210000', 2, N'210400', N'抚顺市', N'fss', 210400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210500', N'210000', 2, N'210500', N'本溪市', N'bxs', 210500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210600', N'210000', 2, N'210600', N'丹东市', N'dds', 210600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210700', N'210000', 2, N'210700', N'锦州市', N'jzs', 210700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210800', N'210000', 2, N'210800', N'营口市', N'yks', 210800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210900', N'210000', 2, N'210900', N'阜新市', N'fxs', 210900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'211000', N'210000', 2, N'211000', N'辽阳市', N'lys', 211000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'211100', N'210000', 2, N'211100', N'盘锦市', N'pjs', 211100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'211200', N'210000', 2, N'211200', N'铁岭市', N'tls', 211200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'211300', N'210000', 2, N'211300', N'朝阳市', N'zys', 211300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'211400', N'210000', 2, N'211400', N'葫芦岛市', N'hlds', 211400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220100', N'220000', 2, N'220100', N'长春市', N'zcs', 220100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220200', N'220000', 2, N'220200', N'吉林市', N'jls', 220200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220300', N'220000', 2, N'220300', N'四平市', N'sps', 220300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220400', N'220000', 2, N'220400', N'辽源市', N'lys', 220400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220500', N'220000', 2, N'220500', N'通化市', N'ths', 220500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220600', N'220000', 2, N'220600', N'白山市', N'bss', 220600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220700', N'220000', 2, N'220700', N'松原市', N'sys', 220700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220800', N'220000', 2, N'220800', N'白城市', N'bcs', 220800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'222400', N'220000', 2, N'222400', N'延边朝鲜族自治州', N'ybzxzzzz', 222400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230100', N'230000', 2, N'230100', N'哈尔滨市', N'hebs', 230100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230200', N'230000', 2, N'230200', N'齐齐哈尔市', N'qqhes', 230200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230300', N'230000', 2, N'230300', N'鸡西市', N'jxs', 230300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230400', N'230000', 2, N'230400', N'鹤岗市', N'hgs', 230400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230500', N'230000', 2, N'230500', N'双鸭山市', N'syss', 230500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230600', N'230000', 2, N'230600', N'大庆市', N'dqs', 230600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230700', N'230000', 2, N'230700', N'伊春市', N'ycs', 230700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230800', N'230000', 2, N'230800', N'佳木斯市', N'jmss', 230800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230900', N'230000', 2, N'230900', N'七台河市', N'qths', 230900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'231000', N'230000', 2, N'231000', N'牡丹江市', N'mdjs', 231000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'231100', N'230000', 2, N'231100', N'黑河市', N'hhs', 231100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'231200', N'230000', 2, N'231200', N'绥化市', N'shs', 231200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'232700', N'230000', 2, N'232700', N'大兴安岭地区', N'dxaldq', 232700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'310100', N'310000', 2, N'310100', N'上海市', N'shs', 310100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320100', N'320000', 2, N'320100', N'南京市', N'njs', 320100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320200', N'320000', 2, N'320200', N'无锡市', N'wxs', 320200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320300', N'320000', 2, N'320300', N'徐州市', N'xzs', 320300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320400', N'320000', 2, N'320400', N'常州市', N'czs', 320400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320500', N'320000', 2, N'320500', N'苏州市', N'szs', 320500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320600', N'320000', 2, N'320600', N'南通市', N'nts', 320600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320700', N'320000', 2, N'320700', N'连云港市', N'lygs', 320700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320800', N'320000', 2, N'320800', N'淮安市', N'has', 320800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320900', N'320000', 2, N'320900', N'盐城市', N'ycs', 320900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'321000', N'320000', 2, N'321000', N'扬州市', N'yzs', 321000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'321100', N'320000', 2, N'321100', N'镇江市', N'zjs', 321100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'321200', N'320000', 2, N'321200', N'泰州市', N'tzs', 321200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'321300', N'320000', 2, N'321300', N'宿迁市', N'sqs', 321300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330100', N'330000', 2, N'330100', N'杭州市', N'hzs', 330100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330200', N'330000', 2, N'330200', N'宁波市', N'nbs', 330200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330300', N'330000', 2, N'330300', N'温州市', N'wzs', 330300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330400', N'330000', 2, N'330400', N'嘉兴市', N'jxs', 330400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330500', N'330000', 2, N'330500', N'湖州市', N'hzs', 330500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330600', N'330000', 2, N'330600', N'绍兴市', N'sxs', 330600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330700', N'330000', 2, N'330700', N'金华市', N'jhs', 330700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330800', N'330000', 2, N'330800', N'衢州市', N'qzs', 330800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330900', N'330000', 2, N'330900', N'舟山市', N'zss', 330900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'331000', N'330000', 2, N'331000', N'台州市', N'tzs', 331000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'331100', N'330000', 2, N'331100', N'丽水市', N'lss', 331100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340100', N'340000', 2, N'340100', N'合肥市', N'hfs', 340100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340200', N'340000', 2, N'340200', N'芜湖市', N'whs', 340200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420100', N'420000', 2, N'420100', N'武汉市', N'whs', 420100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420200', N'420000', 2, N'420200', N'黄石市', N'hss', 420200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420300', N'420000', 2, N'420300', N'十堰市', N'sys', 420300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420500', N'420000', 2, N'420500', N'宜昌市', N'ycs', 420500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420600', N'420000', 2, N'420600', N'襄阳市', N'xys', 420600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420700', N'420000', 2, N'420700', N'鄂州市', N'ezs', 420700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420800', N'420000', 2, N'420800', N'荆门市', N'jms', 420800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420900', N'420000', 2, N'420900', N'孝感市', N'xgs', 420900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'421000', N'420000', 2, N'421000', N'荆州市', N'jzs', 421000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'421100', N'420000', 2, N'421100', N'黄冈市', N'hgs', 421100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'421200', N'420000', 2, N'421200', N'咸宁市', N'xns', 421200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'421300', N'420000', 2, N'421300', N'随州市', N'szs', 421300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'422800', N'420000', 2, N'422800', N'恩施土家族苗族自治州', N'estjzmzzzz', 422800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430100', N'430000', 2, N'430100', N'长沙市', N'zss', 430100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430200', N'430000', 2, N'430200', N'株洲市', N'zzs', 430200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430300', N'430000', 2, N'430300', N'湘潭市', N'xts', 430300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430400', N'430000', 2, N'430400', N'衡阳市', N'hys', 430400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430500', N'430000', 2, N'430500', N'邵阳市', N'sys', 430500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430600', N'430000', 2, N'430600', N'岳阳市', N'yys', 430600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430700', N'430000', 2, N'430700', N'常德市', N'cds', 430700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430800', N'430000', 2, N'430800', N'张家界市', N'zjjs', 430800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430900', N'430000', 2, N'430900', N'益阳市', N'yys', 430900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'431000', N'430000', 2, N'431000', N'郴州市', N'czs', 431000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'431100', N'430000', 2, N'431100', N'永州市', N'yzs', 431100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'431200', N'430000', 2, N'431200', N'怀化市', N'hhs', 431200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'431300', N'430000', 2, N'431300', N'娄底市', N'lds', 431300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'433100', N'430000', 2, N'433100', N'湘西土家族苗族自治州', N'xxtjzmzzzz', 433100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440100', N'440000', 2, N'440100', N'广州市', N'gzs', 440100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440200', N'440000', 2, N'440200', N'韶关市', N'sgs', 440200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440300', N'440000', 2, N'440300', N'深圳市', N'szs', 440300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440400', N'440000', 2, N'440400', N'珠海市', N'zhs', 440400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440500', N'440000', 2, N'440500', N'汕头市', N'sts', 440500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440600', N'440000', 2, N'440600', N'佛山市', N'fss', 440600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440700', N'440000', 2, N'440700', N'江门市', N'jms', 440700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440800', N'440000', 2, N'440800', N'湛江市', N'zjs', 440800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440900', N'440000', 2, N'440900', N'茂名市', N'mms', 440900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441200', N'440000', 2, N'441200', N'肇庆市', N'zqs', 441200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441300', N'440000', 2, N'441300', N'惠州市', N'hzs', 441300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441400', N'440000', 2, N'441400', N'梅州市', N'mzs', 441400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441500', N'440000', 2, N'441500', N'汕尾市', N'sws', 441500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441600', N'440000', 2, N'441600', N'河源市', N'hys', 441600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441700', N'440000', 2, N'441700', N'阳江市', N'yjs', 441700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'441800', N'440000', 2, N'441800', N'清远市', N'qys', 441800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'445100', N'440000', 2, N'445100', N'潮州市', N'czs', 445100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'445200', N'440000', 2, N'445200', N'揭阳市', N'jys', 445200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'445300', N'440000', 2, N'445300', N'云浮市', N'yfs', 445300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450100', N'450000', 2, N'450100', N'南宁市', N'nns', 450100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450200', N'450000', 2, N'450200', N'柳州市', N'lzs', 450200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450300', N'450000', 2, N'450300', N'桂林市', N'gls', 450300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450400', N'450000', 2, N'450400', N'梧州市', N'wzs', 450400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450500', N'450000', 2, N'450500', N'北海市', N'bhs', 450500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450600', N'450000', 2, N'450600', N'防城港市', N'fcgs', 450600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450700', N'450000', 2, N'450700', N'钦州市', N'qzs', 450700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450800', N'450000', 2, N'450800', N'贵港市', N'ggs', 450800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450900', N'450000', 2, N'450900', N'玉林市', N'yls', 450900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'451000', N'450000', 2, N'451000', N'百色市', N'bss', 451000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'451100', N'450000', 2, N'451100', N'贺州市', N'hzs', 451100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'451200', N'450000', 2, N'451200', N'河池市', N'hcs', 451200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'451300', N'450000', 2, N'451300', N'来宾市', N'lbs', 451300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'451400', N'450000', 2, N'451400', N'崇左市', N'czs', 451400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'460100', N'460000', 2, N'460100', N'海口市', N'hks', 460100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'500100', N'500000', 2, N'500100', N'重庆市', N'zqs', 500100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510100', N'510000', 2, N'510100', N'成都市', N'cds', 510100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510300', N'510000', 2, N'510300', N'自贡市', N'zgs', 510300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510400', N'510000', 2, N'510400', N'攀枝花市', N'pzhs', 510400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510500', N'510000', 2, N'510500', N'泸州市', N'lzs', 510500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510700', N'510000', 2, N'510700', N'绵阳市', N'mys', 510700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510800', N'510000', 2, N'510800', N'广元市', N'gys', 510800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510900', N'510000', 2, N'510900', N'遂宁市', N'sns', 510900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511000', N'510000', 2, N'511000', N'内江市', N'njs', 511000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511100', N'510000', 2, N'511100', N'乐山市', N'yss', 511100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511300', N'510000', 2, N'511300', N'南充市', N'ncs', 511300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511400', N'510000', 2, N'511400', N'眉山市', N'mss', 511400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511500', N'510000', 2, N'511500', N'宜宾市', N'ybs', 511500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511600', N'510000', 2, N'511600', N'广安市', N'gas', 511600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511700', N'510000', 2, N'511700', N'达州市', N'dzs', 511700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511800', N'510000', 2, N'511800', N'雅安市', N'yas', 511800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'511900', N'510000', 2, N'511900', N'巴中市', N'bzs', 511900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'512000', N'510000', 2, N'512000', N'资阳市', N'zys', 512000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'513200', N'510000', 2, N'513200', N'阿坝藏族羌族自治州', N'abzzqzzzz', 513200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'513300', N'510000', 2, N'513300', N'甘孜藏族自治州', N'gzzzzzz', 513300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'513400', N'510000', 2, N'513400', N'凉山彝族自治州', N'lsyzzzz', 513400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'520100', N'520000', 2, N'520100', N'贵阳市', N'gys', 520100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'520200', N'520000', 2, N'520200', N'六盘水市', N'lpss', 520200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'520300', N'520000', 2, N'520300', N'遵义市', N'zys', 520300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'520400', N'520000', 2, N'520400', N'安顺市', N'ass', 520400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'522200', N'520000', 2, N'522200', N'铜仁市', N'trs', 522200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'522300', N'520000', 2, N'522300', N'黔西南布依族苗族自治州', N'qxnbyzmzzzz', 522300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'522400', N'520000', 2, N'522400', N'毕节市', N'bjs', 522400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'522600', N'520000', 2, N'522600', N'黔东南苗族侗族自治州', N'qdnmztzzzz', 522600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'522700', N'520000', 2, N'522700', N'黔南布依族苗族自治州', N'qnbyzmzzzz', 522700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530100', N'530000', 2, N'530100', N'昆明市', N'kms', 530100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530300', N'530000', 2, N'530300', N'曲靖市', N'qjs', 530300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530400', N'530000', 2, N'530400', N'玉溪市', N'yxs', 530400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530500', N'530000', 2, N'530500', N'保山市', N'bss', 530500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530600', N'530000', 2, N'530600', N'昭通市', N'zts', 530600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530700', N'530000', 2, N'530700', N'丽江市', N'ljs', 530700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530800', N'530000', 2, N'530800', N'普洱市', N'pes', 530800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530900', N'530000', 2, N'530900', N'临沧市', N'lcs', 530900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'532300', N'530000', 2, N'532300', N'楚雄彝族自治州', N'cxyzzzz', 532300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'532500', N'530000', 2, N'532500', N'红河哈尼族彝族自治州', N'hhhnzyzzzz', 532500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'532600', N'530000', 2, N'532600', N'文山壮族苗族自治州', N'wszzmzzzz', 532600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'532800', N'530000', 2, N'532800', N'西双版纳傣族自治州', N'xsbndzzzz', 532800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'532900', N'530000', 2, N'532900', N'大理白族自治州', N'dlbzzzz', 532900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'533100', N'530000', 2, N'533100', N'德宏傣族景颇族自治州', N'dhdzjpzzzz', 533100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'533300', N'530000', 2, N'533300', N'怒江傈僳族自治州', N'njlszzzz', 533300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'533400', N'530000', 2, N'533400', N'迪庆藏族自治州', N'dqzzzzz', 533400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'540100', N'540000', 2, N'540100', N'拉萨市', N'lss', 540100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'542100', N'540000', 2, N'542100', N'昌都地区', N'cddq', 542100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'542200', N'540000', 2, N'542200', N'山南地区', N'sndq', 542200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'542300', N'540000', 2, N'542300', N'日喀则地区', N'rkzdq', 542300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'542400', N'540000', 2, N'542400', N'那曲地区', N'nqdq', 542400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'542500', N'540000', 2, N'542500', N'阿里地区', N'aldq', 542500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'542600', N'540000', 2, N'542600', N'林芝地区', N'lzdq', 542600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610100', N'610000', 2, N'610100', N'西安市', N'xas', 610100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610200', N'610000', 2, N'610200', N'铜川市', N'tcs', 610200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610300', N'610000', 2, N'610300', N'宝鸡市', N'bjs', 610300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610400', N'610000', 2, N'610400', N'咸阳市', N'xys', 610400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610500', N'610000', 2, N'610500', N'渭南市', N'wns', 610500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610600', N'610000', 2, N'610600', N'延安市', N'yas', 610600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610700', N'610000', 2, N'610700', N'汉中市', N'hzs', 610700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610800', N'610000', 2, N'610800', N'榆林市', N'yls', 610800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610900', N'610000', 2, N'610900', N'安康市', N'aks', 610900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'611000', N'610000', 2, N'611000', N'商洛市', N'sls', 611000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620100', N'620000', 2, N'620100', N'兰州市', N'lzs', 620100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620200', N'620000', 2, N'620200', N'嘉峪关市', N'jygs', 620200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620300', N'620000', 2, N'620300', N'金昌市', N'jcs', 620300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620400', N'620000', 2, N'620400', N'白银市', N'bys', 620400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620500', N'620000', 2, N'620500', N'天水市', N'tss', 620500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'110000', N'0', 1, N'110000', N'北京', N'bj', 110000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'120000', N'0', 1, N'120000', N'天津', N'tj', 120000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'130000', N'0', 1, N'130000', N'河北省', N'hbs', 130000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'140000', N'0', 1, N'140000', N'山西省', N'sxs', 140000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150000', N'0', 1, N'150000', N'内蒙古自治区', N'nmgzzq', 150000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'210000', N'0', 1, N'210000', N'辽宁省', N'lns', 210000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'220000', N'0', 1, N'220000', N'吉林省', N'jls', 220000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'230000', N'0', 1, N'230000', N'黑龙江省', N'hljs', 230000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'310000', N'0', 1, N'310000', N'上海', N'sh', 310000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'320000', N'0', 1, N'320000', N'江苏省', N'jss', 320000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'330000', N'0', 1, N'330000', N'浙江省', N'zjs', 330000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340000', N'0', 1, N'340000', N'安徽省', N'ahs', 340000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'350000', N'0', 1, N'350000', N'福建省', N'fjs', 350000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'360000', N'0', 1, N'360000', N'江西省', N'jxs', 360000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'370000', N'0', 1, N'370000', N'山东省', N'sds', 370000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'410000', N'0', 1, N'410000', N'河南省', N'hns', 410000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'420000', N'0', 1, N'420000', N'湖北省', N'hbs', 420000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'430000', N'0', 1, N'430000', N'湖南省', N'hns', 430000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'440000', N'0', 1, N'440000', N'广东省', N'gds', 440000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'450000', N'0', 1, N'450000', N'广西壮族自治区', N'gxzzzzq', 450000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'460000', N'0', 1, N'460000', N'海南省', N'hns', 460000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'500000', N'0', 1, N'500000', N'重庆', N'zq', 500000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510000', N'0', 1, N'510000', N'四川省', N'scs', 510000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'520000', N'0', 1, N'520000', N'贵州省', N'gzs', 520000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'530000', N'0', 1, N'530000', N'云南省', N'yns', 530000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'540000', N'0', 1, N'540000', N'西藏自治区', N'xzzzq', 540000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'610000', N'0', 1, N'610000', N'陕西省', N'sxs', 610000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620000', N'0', 1, N'620000', N'甘肃省', N'gss', 620000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'630000', N'0', 1, N'630000', N'青海省', N'qhs', 630000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'640000', N'0', 1, N'640000', N'宁夏回族自治区', N'nxhzzzq', 640000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'650000', N'0', 1, N'650000', N'新疆维吾尔自治区', N'xjwwezzq', 650000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'810000', N'0', 1, N'810000', N'香港特别行政区', N'xgtbxzq', 810000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'820000', N'0', 1, N'820000', N'澳门特别行政区', N'amtbxzq', 820000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830000', N'0', 1, N'830000', N'台湾省', N'tws', 830000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'150900', N'150000', 2, N'150900', N'乌兰察布市', N'wlcbs', 150900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'340300', N'340000', 2, N'340300', N'蚌埠市', N'bbs', 340300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'411700', N'410000', 2, N'411700', N'驻马店市', N'zmds', 411700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'510600', N'510000', 2, N'510600', N'德阳市', N'dys', 510600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620600', N'620000', 2, N'620600', N'武威市', N'wws', 620600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620700', N'620000', 2, N'620700', N'张掖市', N'zys', 620700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620800', N'620000', 2, N'620800', N'平凉市', N'pls', 620800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'620900', N'620000', 2, N'620900', N'酒泉市', N'jqs', 620900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'621000', N'620000', 2, N'621000', N'庆阳市', N'qys', 621000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'621100', N'620000', 2, N'621100', N'定西市', N'dxs', 621100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'621200', N'620000', 2, N'621200', N'陇南市', N'lns', 621200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'622900', N'620000', 2, N'622900', N'临夏回族自治州', N'lxhzzzz', 622900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'623000', N'620000', 2, N'623000', N'甘南藏族自治州', N'gnzzzzz', 623000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'630100', N'630000', 2, N'630100', N'西宁市', N'xns', 630100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632100', N'630000', 2, N'632100', N'海东市', N'hds', 632100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632200', N'630000', 2, N'632200', N'海北藏族自治州', N'hbzzzzz', 632200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632300', N'630000', 2, N'632300', N'黄南藏族自治州', N'hnzzzzz', 632300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632500', N'630000', 2, N'632500', N'海南藏族自治州', N'hnzzzzz', 632500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632600', N'630000', 2, N'632600', N'果洛藏族自治州', N'glzzzzz', 632600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632700', N'630000', 2, N'632700', N'玉树藏族自治州', N'yszzzzz', 632700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'632800', N'630000', 2, N'632800', N'海西蒙古族藏族自治州', N'hxmgzzzzzz', 632800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'640100', N'640000', 2, N'640100', N'银川市', N'ycs', 640100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'640200', N'640000', 2, N'640200', N'石嘴山市', N'szss', 640200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'640300', N'640000', 2, N'640300', N'吴忠市', N'wzs', 640300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'640400', N'640000', 2, N'640400', N'固原市', N'gys', 640400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'640500', N'640000', 2, N'640500', N'中卫市', N'zws', 640500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'650100', N'650000', 2, N'650100', N'乌鲁木齐市', N'wlmqs', 650100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'650200', N'650000', 2, N'650200', N'克拉玛依市', N'klmys', 650200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'652100', N'650000', 2, N'652100', N'吐鲁番地区', N'tlfdq', 652100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'652200', N'650000', 2, N'652200', N'哈密地区', N'hmdq', 652200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'652300', N'650000', 2, N'652300', N'昌吉回族自治州', N'cjhzzzz', 652300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'652700', N'650000', 2, N'652700', N'博尔塔拉蒙古自治州', N'betlmgzzz', 652700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'652800', N'650000', 2, N'652800', N'巴音郭楞蒙古自治州', N'byglmgzzz', 652800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'652900', N'650000', 2, N'652900', N'阿克苏地区', N'aksdq', 652900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'653000', N'650000', 2, N'653000', N'克孜勒苏柯尔克孜自治州', N'kzlskekzzzz', 653000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'653100', N'650000', 2, N'653100', N'喀什地区', N'ksdq', 653100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'653200', N'650000', 2, N'653200', N'和田地区', N'htdq', 653200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'654000', N'650000', 2, N'654000', N'伊犁哈萨克自治州', N'ylhskzzz', 654000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'654200', N'650000', 2, N'654200', N'塔城地区', N'tcdq', 654200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'654300', N'650000', 2, N'654300', N'阿勒泰地区', N'altdq', 654300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'810100', N'810000', 2, N'810100', N'香港岛', N'xgd', 810100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'810200', N'810000', 2, N'810200', N'九龙', N'jl', 810200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'810300', N'810000', 2, N'810300', N'新界', N'xj', 810300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'820100', N'820000', 2, N'820100', N'澳门半岛', N'ambd', 820100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'820300', N'820000', 2, N'820300', N'路环岛', N'lhd', 820300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'820400', N'820000', 2, N'820400', N'凼仔岛', N'dzd', 820400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830100', N'830000', 2, N'830100', N'台北市', N'tbs', 830100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830200', N'830000', 2, N'830200', N'高雄市', N'gxs', 830200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830300', N'830000', 2, N'830300', N'台南市', N'tns', 830300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830400', N'830000', 2, N'830400', N'台中市', N'tzs', 830400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830500', N'830000', 2, N'830500', N'南投县', N'ntx', 830500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830600', N'830000', 2, N'830600', N'基隆市', N'jls', 830600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830700', N'830000', 2, N'830700', N'新竹市', N'xzs', 830700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830800', N'830000', 2, N'830800', N'嘉义市', N'jys', 830800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'830900', N'830000', 2, N'830900', N'宜兰县', N'ylx', 830900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831000', N'830000', 2, N'831000', N'新竹县', N'xzx', 831000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831100', N'830000', 2, N'831100', N'桃园县', N'tyx', 831100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831200', N'830000', 2, N'831200', N'苗栗县', N'mlx', 831200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831300', N'830000', 2, N'831300', N'彰化县', N'zhx', 831300, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831400', N'830000', 2, N'831400', N'嘉义县', N'jyx', 831400, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831500', N'830000', 2, N'831500', N'云林县', N'ylx', 831500, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831600', N'830000', 2, N'831600', N'屏东县', N'pdx', 831600, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831700', N'830000', 2, N'831700', N'台东县', N'tdx', 831700, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831800', N'830000', 2, N'831800', N'花莲县', N'hlx', 831800, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'831900', N'830000', 2, N'831900', N'澎湖县', N'phx', 831900, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'832000', N'830000', 2, N'832000', N'新北市', N'xbs', 832000, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'832100', N'830000', 2, N'832100', N'台中县', N'tzx', 832100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'832200', N'830000', 2, N'832200', N'连江县', N'ljx', 832200, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sys_Area] ([Id], [ParentId], [Layers], [EnCode], [FullName], [SimpleSpelling], [SortCode], [DeleteMark], [EnabledMark], [Description], [CreatorTime], [CreatorUserId], [LastModifyTime], [LastModifyUserId], [DeleteTime], [DeleteUserId]) VALUES (N'110100', N'110000', 2, N'110100', N'北京市', N'bjs', 110100, NULL, 1, NULL, CAST(0x0000A64900000000 AS DateTime), NULL, NULL, NULL, NULL, NULL)
