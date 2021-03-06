USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_PurchasingGroup]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_PurchasingGroup](
	[T024_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[T024_UID] [uniqueidentifier] NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[T024_SYSID] [nvarchar](255) NULL,
	[T024_MANDT] [nvarchar](255) NULL,
	[T024_EKORG] [nvarchar](255) NULL,
	[T024_EKGRP] [nvarchar](255) NULL,
	[T024_EKNAM] [nvarchar](255) NULL,
	[T024_TELFX] [nvarchar](255) NULL,
	[T024_TEL_NUMBER] [nvarchar](255) NULL,
	[T024_TEL_EXTENS] [nvarchar](255) NULL,
	[T024_TITLE] [nvarchar](255) NULL,
	[T024_ZZ_DNAME] [nvarchar](255) NULL,
	[T024_ZZ_TNAME] [nvarchar](255) NULL,
	[T024_ZZ_ABTLG] [nvarchar](255) NULL,
	[T024_ZZ_STBEZ] [nvarchar](255) NULL,
	[T024_SMTP_ADDR] [nvarchar](255) NULL,
	[T024_EKTEL] [nvarchar](255) NULL,
	[T024_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[T024_DepartmentHarmonised] [nvarchar](255) NULL,
	[T024_ManagementUnit] [nvarchar](255) NULL,
	[T024_Non_GP] [nvarchar](255) NULL,
	[T024_CarveOut] [nvarchar](255) NULL,
	[T024_PurchasingCluster1] [nvarchar](255) NULL,
	[T024_PurchasingCluster2] [nvarchar](255) NULL,
	[T024_SupplyChain] [nvarchar](255) NULL,
	[T024_TacticalBuying] [nvarchar](255) NULL,
	[T024_identifier] [nchar](100) NULL,
	[T024_UniqueIDRoleGroup] [nvarchar](50) NULL,
 CONSTRAINT [PK_MD_PurchasingGroup] PRIMARY KEY CLUSTERED 
(
	[T024_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_PurchasingGroup] ADD  CONSTRAINT [DF__MD_Purcha__SSMA___76969D2E]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
