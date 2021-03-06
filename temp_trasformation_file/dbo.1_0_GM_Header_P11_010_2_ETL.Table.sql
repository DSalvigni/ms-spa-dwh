USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_GM_Header_P11_010_2_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_GM_Header_P11_010_2_ETL](
	[HASH_GM_HEADER] [binary](16) NULL,
	[MKPF_SYSID] [varchar](max) NULL,
	[MKPF_MANDT] [varchar](max) NULL,
	[MKPF_MBLNR] [varchar](max) NULL,
	[MKPF_MJAHR] [varchar](max) NULL,
	[MKPF_VGART] [varchar](max) NULL,
	[MKPF_BLART] [varchar](max) NULL,
	[MKPF_BLDAT] [varchar](max) NULL,
	[MKPF_BUDAT] [varchar](max) NULL,
	[MKPF_CPUDT] [varchar](max) NULL,
	[MKPF_ZZBARCODE] [varchar](max) NULL,
	[MKPF_BKTXT] [varchar](max) NULL,
	[MKPF_XBLNR] [varchar](max) NULL,
	[MKPF_USNAM] [varchar](max) NULL,
	[MKPF_AEDAT] [varchar](max) NULL,
	[MKPF_DATUM] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
