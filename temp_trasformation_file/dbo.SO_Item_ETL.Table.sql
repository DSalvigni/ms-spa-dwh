USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[SO_Item_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_Item_ETL](
	[VBAP_SYSID] [varchar](max) NULL,
	[VBAP_MANDT] [varchar](max) NULL,
	[VBAP_VBELN] [varchar](max) NULL,
	[VBAP_POSNR] [varchar](max) NULL,
	[VBAP_MATKL] [varchar](max) NULL,
	[VBAP_PSTYV] [varchar](max) NULL,
	[VBAP_POSAR] [varchar](max) NULL,
	[VBAP_ABGRU] [varchar](max) NULL,
	[VBAP_KLMENG] [varchar](max) NULL,
	[VBAP_MEINS] [varchar](max) NULL,
	[VBAP_NETWR] [varchar](max) NULL,
	[VBAP_WAERK] [varchar](max) NULL,
	[VBAP_WERKS] [varchar](max) NULL,
	[VBAP_AWAHR] [varchar](max) NULL,
	[VBAP_ERDAT] [varchar](max) NULL,
	[VBAP_ERNAM] [varchar](max) NULL,
	[VBAP_AEDAT] [varchar](max) NULL,
	[VBAP_PRCTR] [varchar](max) NULL,
	[VBAP_PS_PSP_PNR] [varchar](max) NULL,
	[VBAP_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_so_Item_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SO_Item_ETL] ADD  CONSTRAINT [DF__so_Item_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[SO_Item_ETL] ADD  CONSTRAINT [DF__so_Item_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
