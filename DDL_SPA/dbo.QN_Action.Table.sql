USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Action]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Action](
	[QMMA_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[QMMA_UID] [uniqueidentifier] NULL,
	[HASH_QN_ACTION] [binary](16) NULL,
	[HASH_QN_ITEM] [binary](16) NULL,
	[HASH_QN_HEADER] [binary](16) NULL,
	[QMMA_SYSID] [nvarchar](255) NULL,
	[QMMA_MANDT] [nvarchar](255) NULL,
	[QMMA_QMNUM] [nvarchar](255) NULL,
	[QMMA_FENUM] [nvarchar](255) NULL,
	[QMMA_AEDAT] [datetime2](7) NULL,
	[QMMA_AENAM] [nvarchar](255) NULL,
	[QMMA_AEZEIT] [datetime2](7) NULL,
	[QMMA_AUTKZ] [nvarchar](255) NULL,
	[QMMA_ERDAT] [datetime2](7) NULL,
	[QMMA_ERNAM] [nvarchar](255) NULL,
	[QMMA_ERZEIT] [datetime2](7) NULL,
	[QMMA_FUNKTION] [nvarchar](255) NULL,
	[QMMA_INDTX] [nvarchar](255) NULL,
	[QMMA_KLAKZ] [nvarchar](255) NULL,
	[QMMA_KZACTIONBOX] [nvarchar](255) NULL,
	[QMMA_KZLOESCH] [nvarchar](255) NULL,
	[QMMA_KZMLA] [nvarchar](255) NULL,
	[QMMA_MAKLS] [nvarchar](255) NULL,
	[QMMA_MANUM] [nvarchar](255) NULL,
	[QMMA_MATXT] [nvarchar](255) NULL,
	[QMMA_MNCOD] [nvarchar](255) NULL,
	[QMMA_MNGFA] [nvarchar](255) NULL,
	[QMMA_MNGRP] [nvarchar](255) NULL,
	[QMMA_MNKAT] [nvarchar](255) NULL,
	[QMMA_MNVER] [nvarchar](255) NULL,
	[QMMA_PETER] [datetime2](7) NULL,
	[QMMA_PETUR] [datetime2](7) NULL,
	[QMMA_PSTER] [datetime2](7) NULL,
	[QMMA_PSTUR] [datetime2](7) NULL,
	[QMMA_QMANUM] [nvarchar](255) NULL,
	[QMMA_URNUM] [nvarchar](255) NULL,
	[QMMA_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_QN_Action] PRIMARY KEY CLUSTERED 
(
	[QMMA_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Action] ADD  CONSTRAINT [DF__QN_Action__SSMA___47A6A41B]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
