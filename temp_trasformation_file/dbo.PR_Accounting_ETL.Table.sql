USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PR_Accounting_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PR_Accounting_ETL](
	[EBKN_SYSID] [varchar](max) NULL,
	[EBKN_MANDT] [varchar](max) NULL,
	[EBKN_BANFN] [varchar](max) NULL,
	[EBKN_BNFPO] [varchar](max) NULL,
	[EBKN_ZEBKN] [varchar](max) NULL,
	[EBKN_LOEKZ] [varchar](max) NULL,
	[EBKN_ERDAT] [varchar](max) NULL,
	[EBKN_ERNAM] [varchar](max) NULL,
	[EBKN_MENGE] [varchar](max) NULL,
	[EBKN_VPROZ] [varchar](max) NULL,
	[EBKN_SAKTO] [varchar](max) NULL,
	[EBKN_KOSTL] [varchar](max) NULL,
	[EBKN_VBELN] [varchar](max) NULL,
	[EBKN_VBELP] [varchar](max) NULL,
	[EBKN_VETEN] [varchar](max) NULL,
	[EBKN_ANLN1] [varchar](max) NULL,
	[EBKN_ANLN2] [varchar](max) NULL,
	[EBKN_AUFNR] [varchar](max) NULL,
	[EBKN_WEMPF] [varchar](max) NULL,
	[EBKN_ABLAD] [varchar](max) NULL,
	[EBKN_KOKRS] [varchar](max) NULL,
	[EBKN_KSTRG] [varchar](max) NULL,
	[EBKN_PRCTR] [varchar](max) NULL,
	[EBKN_PS_PSP_PNR] [varchar](max) NULL,
	[EBKN_NPLNR] [varchar](max) NULL,
	[EBKN_AUFPL] [varchar](max) NULL,
	[EBKN_APLZL] [varchar](max) NULL,
	[EBKN_DABRZ] [varchar](max) NULL,
	[EBKN_NETWR] [varchar](max) NULL,
	[EBKN_UDATE] [varchar](max) NULL,
	[EBKN_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PR_accounting_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PR_Accounting_ETL] ADD  CONSTRAINT [DF__PR_accounting_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PR_Accounting_ETL] ADD  CONSTRAINT [DF__PR_accounting_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
