USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_UOM_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_UOM_ETL](
	[T006_SYSID] [varchar](max) NULL,
	[T006_MANDT] [varchar](max) NULL,
	[T006_MSEHI] [varchar](max) NULL,
	[T006_ISOCODE] [varchar](max) NULL,
	[T006_MSEHL] [varchar](max) NULL,
	[T006_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[T006_NameHarmonised] [varchar](max) NULL,
	[T006_UOMHarmonised] [varchar](max) NULL,
 CONSTRAINT [PK_MD_uom_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_UOM_ETL] ADD  CONSTRAINT [DF__MD_UOm_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_UOM_ETL] ADD  CONSTRAINT [DF__MD_UOm_ETLL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
