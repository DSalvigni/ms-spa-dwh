USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_CompanyCode]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_CompanyCode](
	[UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[UID] [uniqueidentifier] NULL,
	[HASH_COMPANY_CODE] [binary](16) NULL,
	[CarveOut] [nvarchar](255) NULL,
	[CityHarmonised] [nvarchar](255) NULL,
	[CountryHarmonised] [nvarchar](255) NULL,
	[FACTS] [nvarchar](255) NULL,
	[LegalEntityName] [nvarchar](255) NULL,
	[LocationCode] [nvarchar](255) NULL,
	[ManagementUnit] [nvarchar](255) NULL,
	[Non_GP] [nvarchar](255) NULL,
	[Subsidiary] [nvarchar](255) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_CompanyCode] PRIMARY KEY CLUSTERED 
(
	[UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_CompanyCode] ADD  CONSTRAINT [DF__MD_Company__SSMA___4AB81AF0]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
