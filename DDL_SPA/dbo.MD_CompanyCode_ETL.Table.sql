USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_CompanyCode_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_CompanyCode_ETL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CarveOut] [nvarchar](255) NULL,
	[CityHarmonised] [nvarchar](255) NULL,
	[CountryHarmonised] [nvarchar](255) NULL,
	[FACTS] [nvarchar](255) NULL,
	[LegalEntityName] [nvarchar](255) NULL,
	[LocationCode] [nvarchar](255) NULL,
	[ManagementUnit] [nvarchar](255) NULL,
	[Non_GP] [nvarchar](255) NULL,
	[Subsidiary] [nvarchar](255) NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_MD_CompanyCode_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_CompanyCode_ETL] ADD  CONSTRAINT [DF__MD_CompanyCode_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_CompanyCode_ETL] ADD  CONSTRAINT [DF__MD_CompanyCode_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
