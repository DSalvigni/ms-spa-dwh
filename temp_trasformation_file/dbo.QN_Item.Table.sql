USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Item]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Item](
	[QMFE_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[QMFE_UID] [uniqueidentifier] NULL,
	[HASH_QN_ITEM] [binary](16) NULL,
	[HASH_QN_HEADER] [binary](16) NULL,
	[QMFE_SYSID] [nvarchar](255) NULL,
	[QMFE_MANDT] [nvarchar](255) NULL,
	[QMFE_QMNUM] [nvarchar](255) NULL,
	[QMFE_FENUM] [nvarchar](255) NULL,
	[QMFE_AEDAT] [datetime2](7) NULL,
	[QMFE_AENAM] [nvarchar](255) NULL,
	[QMFE_AEZEIT] [datetime2](7) NULL,
	[QMFE_ANZFEHLER] [decimal](18, 2) NULL,
	[QMFE_ARBPL] [nvarchar](255) NULL,
	[QMFE_ARBPLWERK] [nvarchar](255) NULL,
	[QMFE_AUTKZ] [nvarchar](255) NULL,
	[QMFE_BAUTL] [nvarchar](255) NULL,
	[QMFE_CROBJTY] [nvarchar](255) NULL,
	[QMFE_EBORT] [nvarchar](255) NULL,
	[QMFE_EKORG] [nvarchar](255) NULL,
	[QMFE_EQUNR] [nvarchar](255) NULL,
	[QMFE_ERDAT] [datetime2](7) NULL,
	[QMFE_ERNAM] [nvarchar](255) NULL,
	[QMFE_ERZEIT] [datetime2](7) NULL,
	[QMFE_FCOAUFNR] [nvarchar](255) NULL,
	[QMFE_FEART] [nvarchar](255) NULL,
	[QMFE_FECOD] [nvarchar](255) NULL,
	[QMFE_FEGRP] [nvarchar](255) NULL,
	[QMFE_FEHLBEW] [decimal](18, 16) NULL,
	[QMFE_FEKAT] [nvarchar](255) NULL,
	[QMFE_FENUMORG] [nvarchar](255) NULL,
	[QMFE_FEQKLAS] [nvarchar](255) NULL,
	[QMFE_FETXT] [nvarchar](255) NULL,
	[QMFE_FEVER] [nvarchar](255) NULL,
	[QMFE_FMGEIG] [decimal](18, 3) NULL,
	[QMFE_FMGEIN] [nvarchar](255) NULL,
	[QMFE_FMGFRD] [decimal](18, 3) NULL,
	[QMFE_HERPOS] [nvarchar](255) NULL,
	[QMFE_INDTX] [nvarchar](255) NULL,
	[QMFE_INFNR] [nvarchar](255) NULL,
	[QMFE_KOSTL] [nvarchar](255) NULL,
	[QMFE_KZLOESCH] [nvarchar](255) NULL,
	[QMFE_KZMLA] [nvarchar](255) NULL,
	[QMFE_KZORG] [nvarchar](255) NULL,
	[QMFE_KZSYSFE] [nvarchar](255) NULL,
	[QMFE_LSTAR] [nvarchar](255) NULL,
	[QMFE_MATNR] [nvarchar](255) NULL,
	[QMFE_MENGE] [decimal](18, 3) NULL,
	[QMFE_MERKNR] [nvarchar](255) NULL,
	[QMFE_OTEIL] [nvarchar](255) NULL,
	[QMFE_OTGRP] [nvarchar](255) NULL,
	[QMFE_OTKAT] [nvarchar](255) NULL,
	[QMFE_OTVER] [nvarchar](255) NULL,
	[QMFE_PHYNR] [nvarchar](255) NULL,
	[QMFE_PNLKN] [nvarchar](255) NULL,
	[QMFE_POSNR] [nvarchar](255) NULL,
	[QMFE_PROBENR] [nvarchar](255) NULL,
	[QMFE_PRUEFLINR] [nvarchar](255) NULL,
	[QMFE_PRZNR] [nvarchar](255) NULL,
	[QMFE_TPLNR] [nvarchar](255) NULL,
	[QMFE_UNITFLBEW] [nvarchar](255) NULL,
	[QMFE_WDFEH] [nvarchar](255) NULL,
	[QMFE_WERKS] [nvarchar](255) NULL,
	[QMFE_ZZ_MVA] [nvarchar](255) NULL,
	[QMFE_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_QN_Item] PRIMARY KEY CLUSTERED 
(
	[QMFE_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Item] ADD  CONSTRAINT [DF__QN_Item__SSMA_Ti__5224328E]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
