USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[GM_Item]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GM_Item](
	[MSEG_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[MSEG_UID] [uniqueidentifier] NULL,
	[HASH_GM_HEADER] [binary](16) NULL,
	[HASH_GM_ITEM] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[MSEG_SYSID] [nvarchar](255) NULL,
	[MSEG_MANDT] [nvarchar](255) NULL,
	[MSEG_MBLNR] [nvarchar](255) NULL,
	[MSEG_ZEILE] [nvarchar](255) NULL,
	[MSEG_MJAHR] [nvarchar](255) NULL,
	[MSEG_XAUTO] [nvarchar](255) NULL,
	[MSEG_BUKRS] [nvarchar](255) NULL,
	[MSEG_WERKS] [nvarchar](255) NULL,
	[MSEG_BUDAT_MKPF] [datetime2](7) NULL,
	[MSEG_CPUDT_MKPF] [datetime2](7) NULL,
	[MSEG_BWART] [nvarchar](255) NULL,
	[MSEG_SHKZG] [nvarchar](255) NULL,
	[MSEG_MENGE] [decimal](18, 3) NULL,
	[MSEG_MEINS] [nvarchar](255) NULL,
	[MSEG_ERFMG] [decimal](18, 3) NULL,
	[MSEG_ERFME] [nvarchar](255) NULL,
	[MSEG_BPMNG] [decimal](18, 3) NULL,
	[MSEG_BPRME] [nvarchar](255) NULL,
	[MSEG_BSTMG] [decimal](18, 3) NULL,
	[MSEG_BSTME] [nvarchar](255) NULL,
	[MSEG_EBELN] [nvarchar](255) NULL,
	[MSEG_EBELP] [nvarchar](255) NULL,
	[MSEG_SGTXT] [nvarchar](255) NULL,
	[MSEG_LIFNR] [nvarchar](255) NULL,
	[MSEG_SAKTO] [nvarchar](255) NULL,
	[MSEG_KOSTL] [nvarchar](255) NULL,
	[MSEG_POSID] [nvarchar](255) NULL,
	[MSEG_NPLNR] [nvarchar](255) NULL,
	[MSEG_PRCTR] [nvarchar](255) NULL,
	[MSEG_LGORT] [nvarchar](255) NULL,
	[MSEG_UMLGO] [nvarchar](255) NULL,
	[MSEG_LGNUM] [nvarchar](255) NULL,
	[MSEG_LGTYP] [nvarchar](255) NULL,
	[MSEG_LGPLA] [nvarchar](255) NULL,
	[MSEG_BWLVS] [nvarchar](255) NULL,
	[MSEG_TBNUM] [nvarchar](255) NULL,
	[MSEG_WEMPF] [nvarchar](255) NULL,
	[MSEG_SJAHR] [nvarchar](255) NULL,
	[MSEG_SMBLN] [nvarchar](255) NULL,
	[MSEG_SMBLP] [nvarchar](255) NULL,
	[MSEG_XWSBR] [nvarchar](255) NULL,
	[MSEG_GRUND] [nvarchar](255) NULL,
	[MSEG_USNAM_MKPF] [nvarchar](255) NULL,
	[MSEG_BEV2_ED_AEDAT] [datetime2](7) NULL,
	[MSEG_DATUM] [datetime2](7) NULL,
	[MSEG_PS_PSP_PNR] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_GM_Item] PRIMARY KEY CLUSTERED 
(
	[MSEG_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GM_Item] ADD  CONSTRAINT [DF__GM_Item__SSMA_Ti__286302EC]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
