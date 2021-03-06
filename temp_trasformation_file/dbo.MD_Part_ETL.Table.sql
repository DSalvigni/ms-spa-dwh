USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Part_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Part_ETL](
	[MARA_SYSID] [varchar](max) NULL,
	[MARA_MANDT] [varchar](max) NULL,
	[MARA_WERKS] [varchar](max) NULL,
	[MARA_MATNR] [varchar](max) NULL,
	[MARA_SPRAS] [varchar](max) NULL,
	[MARA_MAKTX] [varchar](max) NULL,
	[MARA_ZZKT2] [varchar](max) NULL,
	[MARA_MEINS] [varchar](max) NULL,
	[MARA_EKGRP] [varchar](max) NULL,
	[MARA_MATKL] [varchar](max) NULL,
	[MARA_MSTAE] [varchar](max) NULL,
	[MARA_MTART] [varchar](max) NULL,
	[MARA_MTBEZ] [varchar](max) NULL,
	[MARA_ATTYP] [varchar](max) NULL,
	[MARA_DDTEXT] [varchar](max) NULL,
	[MARA_NORMT] [varchar](max) NULL,
	[MARA_PROFL] [varchar](max) NULL,
	[MARA_STOFF] [varchar](max) NULL,
	[MARA_KZUMW] [varchar](max) NULL,
	[MARA_ITARK] [varchar](max) NULL,
	[MARA_MFRNR] [varchar](max) NULL,
	[MARA_MFRPN] [varchar](max) NULL,
	[MARA_MPROF] [varchar](max) NULL,
	[MARA_STPRS] [varchar](max) NULL,
	[MARA_WAERS] [varchar](max) NULL,
	[MARA_PLIFZ] [varchar](max) NULL,
	[MARA_PRDHA] [varchar](max) NULL,
	[MARA_PRCTR] [varchar](max) NULL,
	[MARA_ERSDA] [varchar](max) NULL,
	[MARA_LAEDA] [varchar](max) NULL,
	[MARA_DATUM] [varchar](max) NULL,
	[HASH_MD_PART] [binary](16) NULL,
	[HASH_MD_PLANT] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_MD_CURRENCY] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_MD_Part_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Part_ETL] ADD  CONSTRAINT [DF__MD_Part_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_Part_ETL] ADD  CONSTRAINT [DF__MD_Part_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
