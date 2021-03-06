USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Part]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Part](
	[MARA_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[MARA_UID] [uniqueidentifier] NULL,
	[HASH_MD_PART] [binary](16) NULL,
	[HASH_MD_PLANT] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_MD_CURRENCY] [binary](16) NULL,
	[MARA_SYSID] [nvarchar](255) NULL,
	[MARA_MANDT] [nvarchar](255) NULL,
	[MARA_WERKS] [nvarchar](255) NULL,
	[MARA_MATNR] [nvarchar](255) NULL,
	[MARA_SPRAS] [nvarchar](255) NULL,
	[MARA_MAKTX] [nvarchar](max) NULL,
	[MARA_ZZKT2] [nvarchar](255) NULL,
	[MARA_MEINS] [nvarchar](255) NULL,
	[MARA_EKGRP] [nvarchar](255) NULL,
	[MARA_MATKL] [nvarchar](255) NULL,
	[MARA_MSTAE] [nvarchar](255) NULL,
	[MARA_MTART] [nvarchar](255) NULL,
	[MARA_MTBEZ] [nvarchar](255) NULL,
	[MARA_ATTYP] [nvarchar](255) NULL,
	[MARA_DDTEXT] [nvarchar](255) NULL,
	[MARA_NORMT] [nvarchar](255) NULL,
	[MARA_PROFL] [nvarchar](255) NULL,
	[MARA_STOFF] [nvarchar](255) NULL,
	[MARA_KZUMW] [nvarchar](255) NULL,
	[MARA_ITARK] [nvarchar](255) NULL,
	[MARA_MFRNR] [nvarchar](255) NULL,
	[MARA_MFRPN] [nvarchar](255) NULL,
	[MARA_MPROF] [nvarchar](255) NULL,
	[MARA_STPRS] [decimal](18, 2) NULL,
	[MARA_WAERS] [nvarchar](255) NULL,
	[MARA_PLIFZ] [decimal](18, 2) NULL,
	[MARA_PRDHA] [nvarchar](255) NULL,
	[MARA_PRCTR] [nvarchar](255) NULL,
	[MARA_ERSDA] [datetime2](7) NULL,
	[MARA_LAEDA] [datetime2](7) NULL,
	[MARA_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Part] PRIMARY KEY CLUSTERED 
(
	[MARA_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Part] ADD  CONSTRAINT [DF__MD_Part__SSMA_Ti__5EBF139D]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
