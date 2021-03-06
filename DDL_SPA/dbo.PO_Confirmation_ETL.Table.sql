USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Confirmation_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Confirmation_ETL](
	[EKES_SYSID] [varchar](max) NULL,
	[EKES_MANDT] [varchar](max) NULL,
	[EKES_EBELN] [varchar](max) NULL,
	[EKES_EBELP] [varchar](max) NULL,
	[EKES_ETENS] [varchar](max) NULL,
	[EKES_EBTYP] [varchar](max) NULL,
	[EKES_EINDT] [varchar](max) NULL,
	[EKES_LPEIN] [varchar](max) NULL,
	[EKES_UZEIT] [varchar](max) NULL,
	[EKES_ERDAT] [varchar](max) NULL,
	[EKES_EZEIT] [varchar](max) NULL,
	[EKES_MENGE] [varchar](max) NULL,
	[EKES_DABMG] [varchar](max) NULL,
	[EKES_ESTKZ] [varchar](max) NULL,
	[EKES_LOEKZ] [varchar](max) NULL,
	[EKES_KZDIS] [varchar](max) NULL,
	[EKES_XBLNR] [varchar](max) NULL,
	[EKES_VBELN] [varchar](max) NULL,
	[EKES_VBELP] [varchar](max) NULL,
	[EKES_MPROF] [varchar](max) NULL,
	[EKES_EMATN] [varchar](max) NULL,
	[EKES_MAHNZ] [varchar](max) NULL,
	[EKES_CHARG] [varchar](max) NULL,
	[EKES_UECHA] [varchar](max) NULL,
	[EKES_REF_ETENS] [varchar](max) NULL,
	[EKES_IMWRK] [varchar](max) NULL,
	[EKES_VBELN_ST] [varchar](max) NULL,
	[EKES_VBELP_ST] [varchar](max) NULL,
	[EKES_J_3AETENR] [varchar](max) NULL,
	[EKES_ERUSERNAME] [varchar](max) NULL,
	[EKES_AEUSERNAME] [varchar](max) NULL,
	[EKES_UDATE] [varchar](max) NULL,
	[EKES_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_confirmation_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Confirmation_ETL] ADD  CONSTRAINT [DF__PO_confirmation_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_Confirmation_ETL] ADD  CONSTRAINT [DF__PO_confirmation_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
