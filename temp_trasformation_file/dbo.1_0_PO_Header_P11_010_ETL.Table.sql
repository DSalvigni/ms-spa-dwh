USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_PO_Header_P11_010_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_PO_Header_P11_010_ETL](
	[HASH_PO_HEADER] [binary](16) NULL,
	[EKKO_SYSID] [varchar](max) NULL,
	[EKKO_MANDT] [varchar](max) NULL,
	[EKKO_BUKRS] [varchar](max) NULL,
	[EKKO_EBELN] [varchar](max) NULL,
	[EKKO_LOEKZ] [varchar](max) NULL,
	[EKKO_AEDAT] [varchar](max) NULL,
	[EKKO_BEDAT] [varchar](max) NULL,
	[EKKO_WAERS] [varchar](max) NULL,
	[EKKO_WKURS] [varchar](max) NULL,
	[EKKO_KUFIX] [varchar](max) NULL,
	[EKKO_CWAERS] [varchar](max) NULL,
	[EKKO_LONGTEXT] [varchar](max) NULL,
	[EKKO_LIFNR] [varchar](max) NULL,
	[EKKO_BSTYP] [varchar](max) NULL,
	[EKKO_BSART] [varchar](max) NULL,
	[EKKO_INCO1] [varchar](max) NULL,
	[EKKO_INCO2] [varchar](max) NULL,
	[EKKO_ZTERM] [varchar](max) NULL,
	[EKKO_EKORG] [varchar](max) NULL,
	[EKKO_EKGRP] [varchar](max) NULL,
	[EKKO_IHREZ] [varchar](max) NULL,
	[EKKO_UNSEZ] [varchar](max) NULL,
	[EKKO_KDATB] [varchar](max) NULL,
	[EKKO_KDATE] [varchar](max) NULL,
	[EKKO_KONNR] [varchar](max) NULL,
	[EKKO_ANGNR] [varchar](max) NULL,
	[EKKO_IHRAN] [varchar](max) NULL,
	[EKKO_SUBMI] [varchar](max) NULL,
	[EKKO_STCEG] [varchar](max) NULL,
	[EKKO_EKGSM] [varchar](max) NULL,
	[EKKO_UEBDT] [varchar](max) NULL,
	[EKKO_ERNAM] [varchar](max) NULL,
	[EKKO_AEUSERNAME] [varchar](max) NULL,
	[EKKO_UDATE] [varchar](max) NULL,
	[EKKO_DATUM] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
