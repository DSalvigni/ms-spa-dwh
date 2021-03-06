USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PR_Accounting]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Accounting](
	[EBKN_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EBKN_UID] [uniqueidentifier] NULL,
	[HASH_PR_ACCOUNTING] [binary](16) NULL,
	[HASH_PR] [binary](16) NULL,
	[EBKN_SYSID] [nvarchar](255) NULL,
	[EBKN_MANDT] [nvarchar](255) NULL,
	[EBKN_BANFN] [nvarchar](255) NULL,
	[EBKN_BNFPO] [nvarchar](255) NULL,
	[EBKN_ZEBKN] [nvarchar](255) NULL,
	[EBKN_LOEKZ] [nvarchar](255) NULL,
	[EBKN_ERDAT] [datetime2](7) NULL,
	[EBKN_ERNAM] [nvarchar](255) NULL,
	[EBKN_MENGE] [decimal](18, 3) NULL,
	[EBKN_VPROZ] [decimal](18, 2) NULL,
	[EBKN_SAKTO] [nvarchar](255) NULL,
	[EBKN_KOSTL] [nvarchar](255) NULL,
	[EBKN_VBELN] [nvarchar](255) NULL,
	[EBKN_VBELP] [nvarchar](255) NULL,
	[EBKN_VETEN] [nvarchar](255) NULL,
	[EBKN_ANLN1] [nvarchar](255) NULL,
	[EBKN_ANLN2] [nvarchar](255) NULL,
	[EBKN_AUFNR] [nvarchar](255) NULL,
	[EBKN_WEMPF] [nvarchar](255) NULL,
	[EBKN_ABLAD] [nvarchar](255) NULL,
	[EBKN_KOKRS] [nvarchar](255) NULL,
	[EBKN_KSTRG] [nvarchar](255) NULL,
	[EBKN_PRCTR] [nvarchar](255) NULL,
	[EBKN_PS_PSP_PNR] [nvarchar](255) NULL,
	[EBKN_NPLNR] [nvarchar](255) NULL,
	[EBKN_AUFPL] [nvarchar](255) NULL,
	[EBKN_APLZL] [nvarchar](255) NULL,
	[EBKN_DABRZ] [datetime2](7) NULL,
	[EBKN_NETWR] [decimal](18, 2) NULL,
	[EBKN_UDATE] [datetime2](7) NULL,
	[EBKN_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PR_Accounting] PRIMARY KEY CLUSTERED 
(
	[EBKN_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PR_Accounting] ADD  CONSTRAINT [DF__PR_Accoun__SSMA___3493CFA7]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
