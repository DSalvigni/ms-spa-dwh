USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_GM_Item_SP1_530_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_GM_Item_SP1_530_ETL](
	[HASH_GM_ITEM] [binary](16) NULL,
	[MSEG_SYSID] [varchar](max) NULL,
	[MSEG_MANDT] [varchar](max) NULL,
	[MSEG_MBLNR] [varchar](max) NULL,
	[MSEG_ZEILE] [varchar](max) NULL,
	[MSEG_MJAHR] [varchar](max) NULL,
	[MSEG_XAUTO] [varchar](max) NULL,
	[MSEG_BUKRS] [varchar](max) NULL,
	[MSEG_WERKS] [varchar](max) NULL,
	[MSEG_BUDAT_MKPF] [varchar](max) NULL,
	[MSEG_CPUDT_MKPF] [varchar](max) NULL,
	[MSEG_BWART] [varchar](max) NULL,
	[MSEG_SHKZG] [varchar](max) NULL,
	[MSEG_MENGE] [varchar](max) NULL,
	[MSEG_MEINS] [varchar](max) NULL,
	[MSEG_ERFMG] [varchar](max) NULL,
	[MSEG_ERFME] [varchar](max) NULL,
	[MSEG_BPMNG] [varchar](max) NULL,
	[MSEG_BPRME] [varchar](max) NULL,
	[MSEG_BSTMG] [varchar](max) NULL,
	[MSEG_BSTME] [varchar](max) NULL,
	[MSEG_EBELN] [varchar](max) NULL,
	[MSEG_EBELP] [varchar](max) NULL,
	[MSEG_SGTXT] [varchar](max) NULL,
	[MSEG_LIFNR] [varchar](max) NULL,
	[MSEG_SAKTO] [varchar](max) NULL,
	[MSEG_KOSTL] [varchar](max) NULL,
	[MSEG_POSID] [varchar](max) NULL,
	[MSEG_NPLNR] [varchar](max) NULL,
	[MSEG_PRCTR] [varchar](max) NULL,
	[MSEG_LGORT] [varchar](max) NULL,
	[MSEG_UMLGO] [varchar](max) NULL,
	[MSEG_LGNUM] [varchar](max) NULL,
	[MSEG_LGTYP] [varchar](max) NULL,
	[MSEG_LGPLA] [varchar](max) NULL,
	[MSEG_BWLVS] [varchar](max) NULL,
	[MSEG_TBNUM] [varchar](max) NULL,
	[MSEG_WEMPF] [varchar](max) NULL,
	[MSEG_SJAHR] [varchar](max) NULL,
	[MSEG_SMBLN] [varchar](max) NULL,
	[MSEG_SMBLP] [varchar](max) NULL,
	[MSEG_XWSBR] [varchar](max) NULL,
	[MSEG_GRUND] [varchar](max) NULL,
	[MSEG_USNAM_MKPF] [varchar](max) NULL,
	[MSEG_BEV2_ED_AEDAT] [varchar](max) NULL,
	[MSEG_DATUM] [varchar](max) NULL,
	[MSEG_PS_PSP_PNR] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
