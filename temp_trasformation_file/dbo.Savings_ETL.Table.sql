USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[Savings_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Savings_ETL](
	[SAV_SYSID] [varchar](max) NULL,
	[SAV_MANDT] [varchar](max) NULL,
	[SAV_BUKRS] [varchar](max) NULL,
	[SAV_WERKS] [varchar](max) NULL,
	[SAV_PFUID] [varchar](max) NULL,
	[SAV_CREA_DATE] [varchar](max) NULL,
	[SAV_CREA_TIME] [varchar](max) NULL,
	[SAV_PFU_CREATOR] [varchar](max) NULL,
	[SAV_UPDA_DATE] [varchar](max) NULL,
	[SAV_UPDA_TIME] [varchar](max) NULL,
	[SAV_PFU_MODIFIER] [varchar](max) NULL,
	[SAV_STATUS] [varchar](max) NULL,
	[SAV_TITLE] [varchar](max) NULL,
	[SAV_BGID] [varchar](max) NULL,
	[SAV_BGNAME] [varchar](max) NULL,
	[SAV_BUSINESS_ADMIN] [varchar](max) NULL,
	[SAV_SC1] [varchar](max) NULL,
	[SAV_SC2] [varchar](max) NULL,
	[SAV_SC3] [varchar](max) NULL,
	[SAV_SC1_DESC] [varchar](max) NULL,
	[SAV_SC2_DESC] [varchar](max) NULL,
	[SAV_SC3_DESC] [varchar](max) NULL,
	[SAV_COMM_CODE] [varchar](max) NULL,
	[SAV_SUPPLIER_ID] [varchar](max) NULL,
	[SAV_SUPPLIER_NAME] [varchar](max) NULL,
	[SAV_PROJECT_ID] [varchar](max) NULL,
	[SAV_PROJECT_NAME] [varchar](max) NULL,
	[SAV_CLASS] [varchar](max) NULL,
	[SAV_BU] [varchar](max) NULL,
	[SAV_LOB] [varchar](max) NULL,
	[SAV_YEAR] [varchar](max) NULL,
	[SAV_BUDGET_PLANNED] [varchar](max) NULL,
	[SAV_TARGET_PLANNED] [varchar](max) NULL,
	[SAV_FINAL_CONTRACT] [varchar](max) NULL,
	[SAV_SAVINGS_SECURED] [varchar](max) NULL,
	[SAV_NRC] [varchar](max) NULL,
	[SAV_NET_SAVINGS_SEC] [varchar](max) NULL,
	[SAV_NET_SAVINGS_ACT] [varchar](max) NULL,
	[SAV_COST_TO_MARKET] [varchar](max) NULL,
	[SAV_PROFIT_IMPACT] [varchar](max) NULL,
	[SAV_PROJECT_MANAGER] [varchar](max) NULL,
	[SAV_SUB_PROJECT_ID] [varchar](max) NULL,
	[SAV_SUB_PROJECT_NAME] [varchar](max) NULL,
	[SAV_REFERENCE] [varchar](max) NULL,
	[SAV_SEARCH_ITEM] [varchar](max) NULL,
	[SAV_POID] [varchar](max) NULL,
	[SAV_EXTRACT_DATE] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_savings_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Savings_ETL] ADD  CONSTRAINT [DF__savings_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[Savings_ETL] ADD  CONSTRAINT [DF__savings_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
