USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Network]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Network](
	[AUFK_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[AUFK_UID] [uniqueidentifier] NULL,
	[HASH_NETWORK] [binary](16) NULL,
	[HASH_PRJ_ORDER] [binary](16) NULL,
	[AUFK_SYSID] [nvarchar](255) NULL,
	[AUFK_MANDT] [nvarchar](255) NULL,
	[AUFK_AUFNR] [nvarchar](255) NULL,
	[AUFK_KTEXT] [nvarchar](255) NULL,
	[AUFK_LTEXT] [nvarchar](255) NULL,
	[AUFK_AUART] [nvarchar](255) NULL,
	[AUFK_AUTYP] [nvarchar](255) NULL,
	[AUFK_BUKRS] [nvarchar](255) NULL,
	[AUFK_WERKS] [nvarchar](255) NULL,
	[AUFK_WAERS] [nvarchar](255) NULL,
	[AUFK_PRCTR] [nvarchar](255) NULL,
	[AUFK_FUNC_AREA] [nvarchar](255) NULL,
	[AUFK_SCOPE] [nvarchar](255) NULL,
	[AUFK_PSPEL] [nvarchar](255) NULL,
	[AUFK_KDAUF] [nvarchar](255) NULL,
	[AUFK_KDPOS] [nvarchar](255) NULL,
	[AUFK_VERS] [nvarchar](255) NULL,
	[AUFK_ID_1] [nvarchar](255) NULL,
	[AUFK_ID_2] [nvarchar](255) NULL,
	[AUFK_ID_3] [nvarchar](255) NULL,
	[AUFK_SGE] [nvarchar](255) NULL,
	[AUFK_PMO] [nvarchar](255) NULL,
	[AUFK_VALID] [nvarchar](255) NULL,
	[AUFK_BEA_DAT] [datetime2](7) NULL,
	[AUFK_ERNAM] [nvarchar](255) NULL,
	[AUFK_ERDAT] [datetime2](7) NULL,
	[AUFK_AENAM] [nvarchar](255) NULL,
	[AUFK_AEDAT] [datetime2](7) NULL,
	[AUFK_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_Network] PRIMARY KEY CLUSTERED 
(
	[AUFK_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Network] ADD  CONSTRAINT [DF__MD_Networ__SSMA___59FA5E80]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
