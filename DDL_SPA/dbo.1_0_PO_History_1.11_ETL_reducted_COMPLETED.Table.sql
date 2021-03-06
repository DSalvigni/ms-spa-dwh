USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[1_0_PO_History_1.11_ETL_reducted_COMPLETED]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[1_0_PO_History_1.11_ETL_reducted_COMPLETED](
	[HASH_PO_HISTORY] [binary](16) NULL,
	[EKBE_SYSID] [varchar](max) NULL,
	[EKBE_MANDT] [varchar](max) NULL,
	[EKBE_EBELN] [varchar](max) NULL,
	[EKBE_EBELP] [varchar](max) NULL,
	[EKBE_BAMNG] [varchar](max) NULL,
	[EKBE_BELNR] [varchar](max) NULL,
	[EKBE_BLDAT] [varchar](max) NULL,
	[EKBE_BUDAT] [varchar](max) NULL,
	[EKBE_BUZEI] [varchar](max) NULL,
	[EKBE_CPUDT] [varchar](max) NULL,
	[EKBE_ETENS] [varchar](max) NULL,
	[EKBE_GJAHR] [varchar](max) NULL,
	[EKBE_VGABE] [varchar](max) NULL,
	[EKBE_XMACC] [varchar](max) NULL,
	[EKBE_ZEKKN] [varchar](max) NULL,
	[EKBE_AEUSERNAME] [varchar](max) NULL,
	[EKBE_DATUM] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
