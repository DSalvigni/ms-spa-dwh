USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[allCountries]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[allCountries](
	[GeoNameId] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[AsciiName] [nvarchar](200) NULL,
	[AlternateNames] [nvarchar](max) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[FeatureClass] [char](1) NULL,
	[FeatureCode] [varchar](10) NULL,
	[CountryCode] [char](2) NULL,
	[Cc2] [varchar](255) NULL,
	[Admin1Code] [varchar](20) NULL,
	[Admin2Code] [varchar](80) NULL,
	[Admin3Code] [varchar](20) NULL,
	[Admin4Code] [varchar](20) NULL,
	[Population] [bigint] NULL,
	[Elevation] [varchar](255) NULL,
	[Dem] [int] NULL,
	[Timezone] [varchar](40) NULL,
	[ModificationDate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GeoNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
