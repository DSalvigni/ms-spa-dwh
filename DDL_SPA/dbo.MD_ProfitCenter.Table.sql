USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_ProfitCenter]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_ProfitCenter](
	[CEPC_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[CEPC_UID] [uniqueidentifier] NULL,
	[HASH_MD_PROFITCENTER_UNIQUE] [binary](16) NULL,
	[HASH_MD_PROFITCENTER] [binary](16) NULL,
	[CEPC_SYSID] [nvarchar](255) NULL,
	[CEPC_MANDT] [nvarchar](255) NULL,
	[CEPC_KOKRS] [nvarchar](255) NULL,
	[CEPC_PRCTR] [nvarchar](255) NULL,
	[CEPC_SPRAS] [nvarchar](255) NULL,
	[CEPC_KTEXT] [nvarchar](255) NULL,
	[CEPC_LTEXT] [nvarchar](255) NULL,
	[CEPC_VERAK] [nvarchar](255) NULL,
	[CEPC_ABTEI] [nvarchar](255) NULL,
	[CEPC_STATUS] [nvarchar](255) NULL,
	[CEPC_KHINR] [nvarchar](255) NULL,
	[CEPC_HITXT] [nvarchar](255) NULL,
	[CEPC_DATAB] [datetime2](7) NULL,
	[CEPC_DATBI] [datetime2](7) NULL,
	[CEPC_ERSDA] [datetime2](7) NULL,
	[CEPC_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[CEPC_CarveOut] [nvarchar](255) NULL,
	[CEPC_DepartmentHarmonise] [nvarchar](255) NULL,
	[CEPC_ManagementUnit] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_ProfitCenter] PRIMARY KEY CLUSTERED 
(
	[CEPC_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_ProfitCenter] ADD  CONSTRAINT [DF__MD_Profit__SSMA___6D0D32F4]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
