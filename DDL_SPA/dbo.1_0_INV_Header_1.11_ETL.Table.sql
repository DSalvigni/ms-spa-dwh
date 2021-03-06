USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_INV_Header_1.11_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_INV_Header_1.11_ETL](
	[HASH_INV_HEADER_UNIQUE] [binary](16) NULL,
	[HASH_INV_HEADER] [binary](16) NULL,
	[BKPF_SYSID] [varchar](max) NULL,
	[BKPF_MANDT] [varchar](max) NULL,
	[BKPF_GJAHR] [varchar](max) NULL,
	[BKPF_BELNR] [varchar](max) NULL,
	[BKPF_BUKRS] [varchar](max) NULL,
	[BKPF_BUDAT] [varchar](max) NULL,
	[BKPF_CPUDT] [varchar](max) NULL,
	[BKPF_BLDAT] [varchar](max) NULL,
	[BKPF_WAERS] [varchar](max) NULL,
	[BKPF_KURSF] [varchar](max) NULL,
	[BKPF_WWERT] [varchar](max) NULL,
	[BKPF_HWAER] [varchar](max) NULL,
	[BKPF_BKTXT] [varchar](max) NULL,
	[BKPF_BLART] [varchar](max) NULL,
	[BKPF_XBLNR] [varchar](max) NULL,
	[BKPF_BSTAT] [varchar](max) NULL,
	[BKPF_STJAH] [varchar](max) NULL,
	[BKPF_STBLG] [varchar](max) NULL,
	[BKPF_XREVERSAL] [varchar](max) NULL,
	[BKPF_ERUSERNAME] [varchar](max) NULL,
	[BKPF_AEUSERNAME] [varchar](max) NULL,
	[BKPF_AEDAT] [varchar](max) NULL,
	[BKPF_DATUM] [varchar](max) NULL,
	[BKPF_AUSBK] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
