USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Supplier_LFM1]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Supplier_LFM1](
	[LFM1_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[LFM1_UID] [uniqueidentifier] NULL,
	[HASH_SUPPLIER_LFM1] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[LFM1_SYSID] [nvarchar](255) NULL,
	[LFM1_MANDT] [nvarchar](255) NULL,
	[LFM1_LIFNR] [nvarchar](255) NULL,
	[LFM1_EKORG] [nvarchar](255) NULL,
	[LFM1_ZTERM] [nvarchar](255) NULL,
	[LFM1_LOEVM] [nvarchar](255) NULL,
	[LFM1_SPERM] [nvarchar](255) NULL,
	[LFM1_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Supplier_LFM1] PRIMARY KEY CLUSTERED 
(
	[LFM1_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Supplier_LFM1] ADD  CONSTRAINT [DF__MD_Suppli__SSMA___04E4BC85]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
