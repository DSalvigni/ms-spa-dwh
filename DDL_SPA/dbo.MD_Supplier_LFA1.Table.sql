USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_Supplier_LFA1]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_Supplier_LFA1](
	[LFA1_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[LFA1_UID] [uniqueidentifier] NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[LFA1_SYSID] [nvarchar](255) NULL,
	[LFA1_MANDT] [nvarchar](255) NULL,
	[LFA1_LIFNR] [nvarchar](255) NULL,
	[LFA1_KRAUS] [nvarchar](255) NULL,
	[LFA1_NAME1] [nvarchar](255) NULL,
	[LFA1_NAME2] [nvarchar](255) NULL,
	[LFA1_NAME3] [nvarchar](255) NULL,
	[LFA1_NAME4] [nvarchar](255) NULL,
	[LFA1_STRAS] [nvarchar](255) NULL,
	[LFA1_PSTLZ] [nvarchar](255) NULL,
	[LFA1_ORT01] [nvarchar](255) NULL,
	[LFA1_REGIO] [nvarchar](255) NULL,
	[LFA1_LAND1] [nvarchar](255) NULL,
	[LFA1_PFACH] [nvarchar](255) NULL,
	[LFA1_KTOKK] [nvarchar](255) NULL,
	[LFA1_CONTACTFIRSTNAME] [nvarchar](255) NULL,
	[LFA1_CONTACTLASTNAME] [nvarchar](255) NULL,
	[LFA1_TELF1] [nvarchar](255) NULL,
	[LFA1_TELF2] [nvarchar](255) NULL,
	[LFA1_TELTX] [nvarchar](255) NULL,
	[LFA1_TELFX] [nvarchar](255) NULL,
	[LFA1_SPRAS] [nvarchar](255) NULL,
	[LFA1_ZWWLS] [nvarchar](255) NULL,
	[LFA1_SPERR] [nvarchar](255) NULL,
	[LFA1_SPERM] [nvarchar](255) NULL,
	[LFA1_SPERZ] [nvarchar](255) NULL,
	[LFA1_SPERQ] [nvarchar](255) NULL,
	[LFA1_NODEL] [nvarchar](255) NULL,
	[LFA1_ERDAT] [datetime2](7) NULL,
	[LFA1_LOEVM] [nvarchar](255) NULL,
	[LFA1_STCD1] [nvarchar](255) NULL,
	[LFA1_STCD2] [nvarchar](255) NULL,
	[LFA1_STCEG] [nvarchar](255) NULL,
	[LFA1_VBUND] [nvarchar](255) NULL,
	[LFA1_SORTL] [nvarchar](255) NULL,
	[LFA1_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
	[LFA1_Blacklist] [nvarchar](255) NULL,
	[LFA1_CertificateDBNumber] [nvarchar](255) NULL,
	[LFA1_DUNS] [nvarchar](255) NULL,
	[LFA1_DUNSDirectMother] [nvarchar](255) NULL,
	[LFA1_DUNSGlobalMother] [nvarchar](255) NULL,
	[LFA1_ExceptionList] [nvarchar](255) NULL,
	[LFA1_Inter_Intra] [nvarchar](255) NULL,
	[LFA1_InternalFocalPoint] [nvarchar](255) NULL,
	[LFA1_MainBusinessArea] [nvarchar](255) NULL,
	[LFA1_MDG_ID] [nvarchar](255) NULL,
	[LFA1_NameGlobal] [nvarchar](255) NULL,
	[LFA1_NameHarmonised] [nvarchar](255) NULL,
	[LFA1_NATO_CAGE_Code] [nvarchar](255) NULL,
	[LFA1_Non_GP] [nvarchar](255) NULL,
	[LFA1_SpecialPayment] [nvarchar](255) NULL,
	[LFA1_StrategicSupplier] [nvarchar](255) NULL,
	[LFA1_TransportSupplier] [nvarchar](255) NULL,
	[LFA1_Non_Reporting] [nvarchar](255) NULL,
	[LFA1_Non_SourceIT] [nvarchar](255) NULL,
	[LFA1_REACH_Classification] [nvarchar](255) NULL,
	[LFA1_SME] [nvarchar](255) NULL,
 CONSTRAINT [PK_MD_Supplier_LFA1] PRIMARY KEY CLUSTERED 
(
	[LFA1_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_Supplier_LFA1] ADD  CONSTRAINT [DF__MD_Suppli__SSMA___7B5B524B]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
