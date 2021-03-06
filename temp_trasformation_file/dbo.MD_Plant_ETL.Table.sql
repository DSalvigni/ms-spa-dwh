USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Plant_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Plant_ETL](
	[T001W_SYSID] [varchar](max) NULL,
	[T001W_MANDT] [varchar](max) NULL,
	[T001W_WERKS] [varchar](max) NULL,
	[T001W_NAME1] [varchar](max) NULL,
	[T001W_NAME2] [varchar](max) NULL,
	[T001W_STRAS] [varchar](max) NULL,
	[T001W_ORT01] [varchar](max) NULL,
	[T001W_REGIO] [varchar](max) NULL,
	[T001W_LAND1] [varchar](max) NULL,
	[T001W_PSTLZ] [varchar](max) NULL,
	[T001W_BEZEI] [varchar](max) NULL,
	[T001W_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
	[T001W_CarveOut] [varchar](max) NULL,
	[T001W_CityHarmonised] [varchar](max) NULL,
	[T001W_CountryHarmonised] [varchar](max) NULL,
	[T001W_ManagementUnit] [varchar](max) NULL,
 CONSTRAINT [PK_MD_plant_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Plant_ETL] ADD  CONSTRAINT [DF__MD_plant_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_Plant_ETL] ADD  CONSTRAINT [DF__MD_plant_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
