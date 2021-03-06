USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[QN_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QN_Header_ETL](
	[QMEL_SYSID] [varchar](max) NULL,
	[QMEL_MANDT] [varchar](max) NULL,
	[QMEL_QMNUM] [varchar](max) NULL,
	[QMEL_QMART] [varchar](max) NULL,
	[QMEL_QMTXT] [varchar](max) NULL,
	[QMEL_ERNAM] [varchar](max) NULL,
	[QMEL_ERDAT] [varchar](max) NULL,
	[QMEL_AENAM] [varchar](max) NULL,
	[QMEL_AEDAT] [varchar](max) NULL,
	[QMEL_QMDAT] [varchar](max) NULL,
	[QMEL_QMNAM] [varchar](max) NULL,
	[QMEL_AUFNR] [varchar](max) NULL,
	[QMEL_VBELN] [varchar](max) NULL,
	[QMEL_MAWERK] [varchar](max) NULL,
	[QMEL_PRUEFLOS] [varchar](max) NULL,
	[QMEL_CHARG] [varchar](max) NULL,
	[QMEL_EMATNR] [varchar](max) NULL,
	[QMEL_EBELN] [varchar](max) NULL,
	[QMEL_EBELP] [varchar](max) NULL,
	[QMEL_MJAHR] [varchar](max) NULL,
	[QMEL_MBLNR] [varchar](max) NULL,
	[QMEL_MBLPO] [varchar](max) NULL,
	[QMEL_LS_KDAUF] [varchar](max) NULL,
	[QMEL_LS_KDPOS] [varchar](max) NULL,
	[QMEL_LS_VBELN] [varchar](max) NULL,
	[QMEL_LS_POSNR] [varchar](max) NULL,
	[QMEL_MGEIG] [varchar](max) NULL,
	[QMEL_MGFRD] [varchar](max) NULL,
	[QMEL_BZMNG] [varchar](max) NULL,
	[QMEL_RKMNG] [varchar](max) NULL,
	[QMEL_RGMNG] [varchar](max) NULL,
	[QMEL_RKDAT] [varchar](max) NULL,
	[QMEL_KDMAT] [varchar](max) NULL,
	[QMEL_IDNLF] [varchar](max) NULL,
	[QMEL_SERIALNR] [varchar](max) NULL,
	[QMEL_KZLOESCH] [varchar](max) NULL,
	[QMEL_ZZ_QFART] [varchar](max) NULL,
	[QMEL_ZZ_DELIVERY] [varchar](max) NULL,
	[QMEL_EKORG] [varchar](max) NULL,
	[QMEL_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_qn_Header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[QN_Header_ETL] ADD  CONSTRAINT [DF__qn_Header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[QN_Header_ETL] ADD  CONSTRAINT [DF__qn_Header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
