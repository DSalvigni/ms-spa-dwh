USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_User]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_User](
	[USR03_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[USR03_UID] [uniqueidentifier] NULL,
	[HASH_MD_USER] [binary](16) NULL,
	[USR03_SYSID] [nvarchar](255) NULL,
	[USR03_MANDT] [nvarchar](255) NULL,
	[USR03_BNAME] [nvarchar](255) NULL,
	[USR03_NAME1] [nvarchar](255) NULL,
	[USR03_NAME2] [nvarchar](255) NULL,
	[USR03_NAME_TEXT] [nvarchar](255) NULL,
	[USR03_ABTLG] [nvarchar](255) NULL,
	[USR03_DEPARTMENT] [nvarchar](255) NULL,
	[USR03_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[USR03_DepartmentHarmonised] [nvarchar](255) NULL,
	[USR03_UserGroup] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_User] PRIMARY KEY CLUSTERED 
(
	[USR03_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_User] ADD  CONSTRAINT [DF__MD_User__SSMA_Ti__0E6E26BF]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
