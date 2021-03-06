USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_UOM]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_UOM](
	[T006_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[T006_UID] [uniqueidentifier] NULL,
	[HASH_MD_UOM] [binary](16) NULL,
	[T006_SYSID] [nvarchar](255) NULL,
	[T006_MANDT] [nvarchar](255) NULL,
	[T006_MSEHI] [nvarchar](255) NULL,
	[T006_ISOCODE] [nvarchar](255) NULL,
	[T006_MSEHL] [nvarchar](255) NULL,
	[T006_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[T006_NameHarmonised] [nvarchar](255) NULL,
	[T006_UOMHarmonised] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_UOM] PRIMARY KEY CLUSTERED 
(
	[T006_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_UOM] ADD  CONSTRAINT [DF__MD_UOM__SSMA_Tim__09A971A2]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
