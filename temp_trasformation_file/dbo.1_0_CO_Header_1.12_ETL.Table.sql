USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_CO_Header_1.12_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_CO_Header_1.12_ETL](
	[HASH_PO_HEADER] [binary](16) NULL,
	[EKKOK_SYSID] [varchar](max) NULL,
	[EKKOK_MANDT] [varchar](max) NULL,
	[EKKOK_BUKRS] [varchar](max) NULL,
	[EKKOK_EBELN] [varchar](max) NULL,
	[EKKOK_LOEKZ] [varchar](max) NULL,
	[EKKOK_AEDAT] [varchar](max) NULL,
	[EKKOK_BEDAT] [varchar](max) NULL,
	[EKKOK_WAERS] [varchar](max) NULL,
	[EKKOK_WKURS] [varchar](max) NULL,
	[EKKOK_KUFIX] [varchar](max) NULL,
	[EKKOK_CWAERS] [varchar](max) NULL,
	[EKKOK_LONGTEXT] [text] NULL,
	[EKKOK_LIFNR] [varchar](max) NULL,
	[EKKOK_BSTYP] [varchar](max) NULL,
	[EKKOK_BSART] [varchar](max) NULL,
	[EKKOK_INCO1] [varchar](max) NULL,
	[EKKOK_INCO2] [varchar](max) NULL,
	[EKKOK_ZTERM] [varchar](max) NULL,
	[EKKOK_EKORG] [varchar](max) NULL,
	[EKKOK_EKGRP] [varchar](max) NULL,
	[EKKOK_IHREZ] [varchar](max) NULL,
	[EKKOK_UNSEZ] [varchar](max) NULL,
	[EKKOK_KDATB] [varchar](max) NULL,
	[EKKOK_KDATE] [varchar](max) NULL,
	[EKKOK_KONNR] [varchar](max) NULL,
	[EKKOK_ANGNR] [varchar](max) NULL,
	[EKKOK_IHRAN] [varchar](max) NULL,
	[EKKOK_SUBMI] [varchar](max) NULL,
	[EKKOK_STCEG] [varchar](max) NULL,
	[EKKOK_EKGSM] [varchar](max) NULL,
	[EKKOK_UEBDT] [varchar](max) NULL,
	[EKKOK_ERNAM] [varchar](max) NULL,
	[EKKOK_AEUSERNAME] [varchar](max) NULL,
	[EKKOK_UDATE] [varchar](max) NULL,
	[EKKOK_DATUM] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
