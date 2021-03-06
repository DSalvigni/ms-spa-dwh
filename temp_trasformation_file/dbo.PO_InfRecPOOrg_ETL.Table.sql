USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_InfRecPOOrg_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_InfRecPOOrg_ETL](
	[EINE_SYSID] [varchar](max) NULL,
	[EINE_MANDT] [varchar](max) NULL,
	[EINE_INFNR] [varchar](max) NULL,
	[EINE_EKORG] [varchar](max) NULL,
	[EINE_ESOKZ] [varchar](max) NULL,
	[EINE_WERKS] [varchar](max) NULL,
	[EINE_ERDAT] [varchar](max) NULL,
	[EINE_ERNAM] [varchar](max) NULL,
	[EINE_EKGRP] [varchar](max) NULL,
	[EINE_WAERS] [varchar](max) NULL,
	[EINE_BONUS] [varchar](max) NULL,
	[EINE_MGBON] [varchar](max) NULL,
	[EINE_MINBM] [varchar](max) NULL,
	[EINE_NORBM] [varchar](max) NULL,
	[EINE_BSTMA] [varchar](max) NULL,
	[EINE_APLFZ] [varchar](max) NULL,
	[EINE_EBELN] [varchar](max) NULL,
	[EINE_EBELP] [varchar](max) NULL,
	[EINE_DATLB] [varchar](max) NULL,
	[EINE_ANGNR] [varchar](max) NULL,
	[EINE_ANGDT] [varchar](max) NULL,
	[EINE_ANFNR] [varchar](max) NULL,
	[EINE_ANFPS] [varchar](max) NULL,
	[EINE_ABSKZ] [varchar](max) NULL,
	[EINE_UNTTO] [varchar](max) NULL,
	[EINE_UEBTK] [varchar](max) NULL,
	[EINE_UEBTO] [varchar](max) NULL,
	[EINE_BSTYP] [varchar](max) NULL,
	[EINE_BWTAR] [varchar](max) NULL,
	[EINE_LOEKZ] [varchar](max) NULL,
	[EINE_MHDRZ] [varchar](max) NULL,
	[EINE_NETPR] [varchar](max) NULL,
	[EINE_PEINH] [varchar](max) NULL,
	[EINE_BPRME] [varchar](max) NULL,
	[EINE_PRDAT] [varchar](max) NULL,
	[EINE_KZABS] [varchar](max) NULL,
	[EINE_BPUMZ] [varchar](max) NULL,
	[EINE_BPUMN] [varchar](max) NULL,
	[EINE_INCO1] [varchar](max) NULL,
	[EINE_INCO2] [varchar](max) NULL,
	[EINE_ERUSERNAME] [varchar](max) NULL,
	[EINE_AEUSERNAME] [varchar](max) NULL,
	[EINE_UDATE] [varchar](max) NULL,
	[EINE_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_infoRecord_PO_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_InfRecPOOrg_ETL] ADD  CONSTRAINT [DF__PO_InfRecPOOrg_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_InfRecPOOrg_ETL] ADD  CONSTRAINT [DF__PO_InfRecPOOrg_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
