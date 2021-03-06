USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_InfRecPOOrg]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_InfRecPOOrg](
	[EINE_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EINE_UID] [uniqueidentifier] NULL,
	[HASH_PO_INFNR] [binary](16) NULL,
	[HASH_GE_INFNR] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[EINE_SYSID] [nvarchar](255) NULL,
	[EINE_MANDT] [nvarchar](255) NULL,
	[EINE_INFNR] [nvarchar](255) NULL,
	[EINE_EKORG] [nvarchar](255) NULL,
	[EINE_ESOKZ] [nvarchar](255) NULL,
	[EINE_WERKS] [nvarchar](255) NULL,
	[EINE_ERDAT] [datetime2](7) NULL,
	[EINE_ERNAM] [nvarchar](255) NULL,
	[EINE_EKGRP] [nvarchar](255) NULL,
	[EINE_WAERS] [nvarchar](255) NULL,
	[EINE_BONUS] [nvarchar](255) NULL,
	[EINE_MGBON] [nvarchar](255) NULL,
	[EINE_MINBM] [decimal](18, 3) NULL,
	[EINE_NORBM] [decimal](18, 3) NULL,
	[EINE_BSTMA] [decimal](18, 3) NULL,
	[EINE_APLFZ] [decimal](18, 2) NULL,
	[EINE_EBELN] [nvarchar](255) NULL,
	[EINE_EBELP] [nvarchar](255) NULL,
	[EINE_DATLB] [datetime2](7) NULL,
	[EINE_ANGNR] [nvarchar](255) NULL,
	[EINE_ANGDT] [datetime2](7) NULL,
	[EINE_ANFNR] [nvarchar](255) NULL,
	[EINE_ANFPS] [nvarchar](255) NULL,
	[EINE_ABSKZ] [nvarchar](255) NULL,
	[EINE_UNTTO] [decimal](18, 2) NULL,
	[EINE_UEBTK] [nvarchar](255) NULL,
	[EINE_UEBTO] [decimal](18, 2) NULL,
	[EINE_BSTYP] [nvarchar](255) NULL,
	[EINE_BWTAR] [nvarchar](255) NULL,
	[EINE_LOEKZ] [nvarchar](255) NULL,
	[EINE_MHDRZ] [decimal](18, 3) NULL,
	[EINE_NETPR] [decimal](18, 2) NULL,
	[EINE_PEINH] [decimal](18, 2) NULL,
	[EINE_BPRME] [nvarchar](255) NULL,
	[EINE_PRDAT] [datetime2](7) NULL,
	[EINE_KZABS] [nvarchar](255) NULL,
	[EINE_BPUMZ] [decimal](18, 2) NULL,
	[EINE_BPUMN] [decimal](18, 2) NULL,
	[EINE_INCO1] [nvarchar](255) NULL,
	[EINE_INCO2] [nvarchar](255) NULL,
	[EINE_ERUSERNAME] [nvarchar](255) NULL,
	[EINE_AEUSERNAME] [nvarchar](255) NULL,
	[EINE_UDATE] [datetime2](7) NULL,
	[EINE_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PO_InfoRecord_PO] PRIMARY KEY CLUSTERED 
(
	[EINE_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_InfRecPOOrg] ADD  CONSTRAINT [DF__PO_InfRecPOOrg_SSMA___2180FB33]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
