USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QInfRec]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QInfRec](
	[QINF_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[QINF_UID] [uniqueidentifier] NULL,
	[HASH_QINF] [binary](16) NULL,
	[QINF_SYSID] [nvarchar](255) NULL,
	[QINF_MANDT] [nvarchar](255) NULL,
	[QINF_MATNR] [nvarchar](255) NULL,
	[QINF_ZAEHL] [decimal](18, 2) NULL,
	[QINF_REVLV] [nvarchar](255) NULL,
	[QINF_AENDERDAT] [datetime2](7) NULL,
	[QINF_AENDERER] [nvarchar](255) NULL,
	[QINF_BEST_MG] [decimal](18, 3) NULL,
	[QINF_CERTCONTROL] [nvarchar](255) NULL,
	[QINF_DAT_RUECK] [datetime2](7) NULL,
	[QINF_ERSTELLDAT] [datetime2](7) NULL,
	[QINF_ERSTELLER] [nvarchar](255) NULL,
	[QINF_FREI_DAT] [datetime2](7) NULL,
	[QINF_FREI_MGKZ] [nvarchar](255) NULL,
	[QINF_FREI_MNG] [decimal](18, 3) NULL,
	[QINF_LIEFERANT] [nvarchar](255) NULL,
	[QINF_LOEKZ] [nvarchar](255) NULL,
	[QINF_LTEXTKZ] [nvarchar](255) NULL,
	[QINF_ME] [nvarchar](255) NULL,
	[QINF_NOINSP] [nvarchar](255) NULL,
	[QINF_NOINSPABN] [nvarchar](255) NULL,
	[QINF_OBJNR] [nvarchar](255) NULL,
	[QINF_PLOS] [nvarchar](255) NULL,
	[QINF_PLOS2] [nvarchar](255) NULL,
	[QINF_QSSYSDAT] [datetime2](7) NULL,
	[QINF_QSSYSFAM] [nvarchar](255) NULL,
	[QINF_QVVORH] [nvarchar](255) NULL,
	[QINF_SPERRFKT] [nvarchar](255) NULL,
	[QINF_SPERRGRUND] [nvarchar](255) NULL,
	[QINF_SPRACHE] [nvarchar](255) NULL,
	[QINF_SPRAS] [nvarchar](255) NULL,
	[QINF_STSMA] [nvarchar](255) NULL,
	[QINF_VARIABNAHM] [nvarchar](255) NULL,
	[QINF_VORLABN] [decimal](18, 2) NULL,
	[QINF_WERK] [nvarchar](255) NULL,
	[QINF_LFA1_SPERQ] [nvarchar](255) NULL,
	[QINF_LFA1_QSSYS] [nvarchar](255) NULL,
	[QINF_LFA1_QSSYSDAT] [datetime2](7) NULL,
	[QINF_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[QINF_VAP] [nvarchar](255) NULL,
 CONSTRAINT [PK_QInfRec] PRIMARY KEY CLUSTERED 
(
	[QINF_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QInfRec] ADD  CONSTRAINT [DF__QInfRec__SSMA_Ti__42E1EEFE]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
