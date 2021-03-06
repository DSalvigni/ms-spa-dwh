USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_InfRecGE_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_InfRecGE_ETL](
	[EINA_SYSID] [varchar](max) NULL,
	[EINA_MANDT] [varchar](max) NULL,
	[EINA_INFNR] [varchar](max) NULL,
	[EINA_ANZPU] [varchar](max) NULL,
	[EINA_ERDAT] [varchar](max) NULL,
	[EINA_ERNAM] [varchar](max) NULL,
	[EINA_IDNLF] [varchar](max) NULL,
	[EINA_KOLIF] [varchar](max) NULL,
	[EINA_LIFAB] [varchar](max) NULL,
	[EINA_LIFBI] [varchar](max) NULL,
	[EINA_LIFNR] [varchar](max) NULL,
	[EINA_LMEIN] [varchar](max) NULL,
	[EINA_LOEKZ] [varchar](max) NULL,
	[EINA_LTSNR] [varchar](max) NULL,
	[EINA_LTSSF] [varchar](max) NULL,
	[EINA_MAHN1] [varchar](max) NULL,
	[EINA_MAHN2] [varchar](max) NULL,
	[EINA_MAHN3] [varchar](max) NULL,
	[EINA_MATKL] [varchar](max) NULL,
	[EINA_MATNR] [varchar](max) NULL,
	[EINA_MEINS] [varchar](max) NULL,
	[EINA_MFRNR] [varchar](max) NULL,
	[EINA_PUNEI] [varchar](max) NULL,
	[EINA_REGIO] [varchar](max) NULL,
	[EINA_RELIF] [varchar](max) NULL,
	[EINA_RUECK] [varchar](max) NULL,
	[EINA_SORTL] [varchar](max) NULL,
	[EINA_TELF1] [varchar](max) NULL,
	[EINA_TXZ01] [varchar](max) NULL,
	[EINA_UMREN] [varchar](max) NULL,
	[EINA_UMREZ] [varchar](max) NULL,
	[EINA_URZDT] [varchar](max) NULL,
	[EINA_URZLA] [varchar](max) NULL,
	[EINA_URZNR] [varchar](max) NULL,
	[EINA_URZTP] [varchar](max) NULL,
	[EINA_URZZT] [varchar](max) NULL,
	[EINA_VABME] [varchar](max) NULL,
	[EINA_VERKF] [varchar](max) NULL,
	[EINA_WGLIF] [varchar](max) NULL,
	[EINA_ERUSERNAME] [varchar](max) NULL,
	[EINA_AEUSERNAME] [varchar](max) NULL,
	[EINA_UDATE] [varchar](max) NULL,
	[EINA_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_InfRecGE_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_InfRecGE_ETL] ADD  CONSTRAINT [DF__PO_InfRecGE_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_InfRecGE_ETL] ADD  CONSTRAINT [DF__PO_InfRecGE_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
