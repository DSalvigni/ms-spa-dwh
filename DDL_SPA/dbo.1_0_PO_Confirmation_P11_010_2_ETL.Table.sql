USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_PO_Confirmation_P11_010_2_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_PO_Confirmation_P11_010_2_ETL](
	[HASH_PO_CONFIRMATION] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[EKES_SYSID] [varchar](max) NULL,
	[EKES_MANDT] [varchar](max) NULL,
	[EKES_EBELN] [varchar](max) NULL,
	[EKES_EBELP] [varchar](max) NULL,
	[EKES_ETENS] [varchar](max) NULL,
	[EKES_EBTYP] [varchar](max) NULL,
	[EKES_EINDT] [varchar](max) NULL,
	[EKES_LPEIN] [varchar](max) NULL,
	[EKES_UZEIT] [varchar](max) NULL,
	[EKES_ERDAT] [varchar](max) NULL,
	[EKES_EZEIT] [varchar](max) NULL,
	[EKES_MENGE] [varchar](max) NULL,
	[EKES_DABMG] [varchar](max) NULL,
	[EKES_ESTKZ] [varchar](max) NULL,
	[EKES_LOEKZ] [varchar](max) NULL,
	[EKES_KZDIS] [varchar](max) NULL,
	[EKES_XBLNR] [varchar](max) NULL,
	[EKES_VBELN] [varchar](max) NULL,
	[EKES_VBELP] [varchar](max) NULL,
	[EKES_MPROF] [varchar](max) NULL,
	[EKES_EMATN] [varchar](max) NULL,
	[EKES_MAHNZ] [varchar](max) NULL,
	[EKES_CHARG] [varchar](max) NULL,
	[EKES_UECHA] [varchar](max) NULL,
	[EKES_REF_ETENS] [varchar](max) NULL,
	[EKES_IMWRK] [varchar](max) NULL,
	[EKES_VBELN_ST] [varchar](max) NULL,
	[EKES_VBELP_ST] [varchar](max) NULL,
	[EKES_J_3AETENR] [varchar](max) NULL,
	[EKES_ERUSERNAME] [varchar](max) NULL,
	[EKES_AEUSERNAME] [varchar](max) NULL,
	[EKES_UDATE] [varchar](max) NULL,
	[EKES_DATUM] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
