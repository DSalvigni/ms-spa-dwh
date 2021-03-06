USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_PurchasingGroup_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_PurchasingGroup_ETL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[T024_SYSID] [varchar](max) NULL,
	[T024_MANDT] [varchar](max) NULL,
	[T024_EKORG] [varchar](max) NULL,
	[T024_EKGRP] [varchar](max) NULL,
	[T024_EKNAM] [varchar](max) NULL,
	[T024_TELFX] [varchar](max) NULL,
	[T024_TEL_NUMBER] [varchar](max) NULL,
	[T024_TEL_EXTENS] [varchar](max) NULL,
	[T024_TITLE] [varchar](max) NULL,
	[T024_ZZ_DNAME] [varchar](max) NULL,
	[T024_ZZ_TNAME] [varchar](max) NULL,
	[T024_ZZ_ABTLG] [varchar](max) NULL,
	[T024_ZZ_STBEZ] [varchar](max) NULL,
	[T024_SMTP_ADDR] [varchar](max) NULL,
	[T024_EKTEL] [varchar](max) NULL,
	[T024_DATUM] [varchar](max) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_purchasingGroup_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_PurchasingGroup_ETL] ADD  CONSTRAINT [DF__MD_purchasingGroup_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
ALTER TABLE [dbo].[MD_PurchasingGroup_ETL] ADD  CONSTRAINT [DF__MD_purchasingGroup_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
