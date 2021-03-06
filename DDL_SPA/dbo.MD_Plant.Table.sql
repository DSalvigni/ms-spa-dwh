USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Plant]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Plant](
	[T001W_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[T001W_UID] [uniqueidentifier] NULL,
	[HASH_MD_PLANT] [binary](16) NULL,
	[T001W_SYSID] [nvarchar](255) NULL,
	[T001W_MANDT] [nvarchar](255) NULL,
	[T001W_WERKS] [nvarchar](255) NULL,
	[T001W_NAME1] [nvarchar](255) NULL,
	[T001W_NAME2] [nvarchar](255) NULL,
	[T001W_STRAS] [nvarchar](255) NULL,
	[T001W_ORT01] [nvarchar](255) NULL,
	[T001W_REGIO] [nvarchar](255) NULL,
	[T001W_LAND1] [nvarchar](255) NULL,
	[T001W_PSTLZ] [nvarchar](255) NULL,
	[T001W_BEZEI] [nvarchar](255) NULL,
	[T001W_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[T001W_ManagementUnit] [nvarchar](255) NULL,
	[T001W_CountryHarmonised] [nvarchar](255) NULL,
	[T001W_CityHarmonised] [nvarchar](255) NULL,
	[T001W_CarveOut] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_Plant] PRIMARY KEY CLUSTERED 
(
	[T001W_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Plant] ADD  CONSTRAINT [DF__MD_Plant__SSMA_T__68487DD7]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
