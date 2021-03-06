USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Account_TEST]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Account_TEST](
	[SKA1_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[SKA1_UID] [uniqueidentifier] NULL,
	[HASH_MD_Account_TEST] [binary](16) NULL,
	[HASH_MD_MAJOR_Account_TEST] [binary](16) NULL,
	[SKA1_SYSID] [nvarchar](256) NULL,
	[SKA1_MANDT] [nvarchar](256) NULL,
	[SKA1_BUKRS] [nvarchar](256) NULL,
	[SKA1_SAKNR] [nvarchar](256) NULL,
	[SKA1_TXT50] [nvarchar](max) NULL,
	[SKA1_KTOPL] [nvarchar](256) NULL,
	[SKA1_KTPLT] [nvarchar](max) NULL,
	[SKA1_SKB1_ERDAT] [datetime2](7) NULL,
	[SKA1_ERDAT] [datetime2](7) NULL,
	[SKA1_DATUM] [datetime2](7) NULL,
	[ID] [int] NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[SKA1_CATEG] [nvarchar](256) NULL,
	[SKA1_GPINC] [nvarchar](256) NULL,
	[SKA1_HIEL1] [nvarchar](256) NULL,
	[SKA1_HIEL2] [nvarchar](256) NULL,
	[SKA1_HIEL3] [nvarchar](256) NULL,
	[SKA1_NOREP] [nvarchar](256) NULL,
	[SKA1_NOSIT] [nvarchar](256) NULL,
	[SKA1_CTYPE] [nvarchar](256) NULL,
 CONSTRAINT [PK_MD_Account_TEST] PRIMARY KEY CLUSTERED 
(
	[SKA1_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Account_TEST] ADD  CONSTRAINT [DF__MD_Account__SSMA___45F365D3]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
