USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_ManagementUnit_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_ManagementUnit_ETL](
	[BusinessLine] [varchar](max) NULL,
	[BusinessPartner] [varchar](max) NULL,
	[CarveOut] [varchar](max) NULL,
	[Complexity] [varchar](max) NULL,
	[Consolidation] [varchar](max) NULL,
	[Descript] [varchar](max) NULL,
	[ManagementUnit] [varchar](max) NULL,
	[PPSID] [varchar](max) NULL,
	[ProductRange1] [varchar](max) NULL,
	[ProductRange2] [varchar](max) NULL,
	[ProgramLine] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
