USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Header_ETL](
	[EKKO_SYSID] [varchar](max) NULL,
	[EKKO_MANDT] [varchar](max) NULL,
	[EKKO_BUKRS] [varchar](max) NULL,
	[EKKO_EBELN] [varchar](max) NULL,
	[EKKO_LOEKZ] [varchar](max) NULL,
	[EKKO_AEDAT] [varchar](max) NULL,
	[EKKO_BEDAT] [varchar](max) NULL,
	[EKKO_WAERS] [varchar](max) NULL,
	[EKKO_WKURS] [varchar](max) NULL,
	[EKKO_KUFIX] [varchar](max) NULL,
	[EKKO_CWAERS] [varchar](max) NULL,
	[EKKO_LONGTEXT] [varchar](max) NULL,
	[EKKO_LIFNR] [varchar](max) NULL,
	[EKKO_BSTYP] [varchar](max) NULL,
	[EKKO_BSART] [varchar](max) NULL,
	[EKKO_INCO1] [varchar](max) NULL,
	[EKKO_INCO2] [varchar](max) NULL,
	[EKKO_ZTERM] [varchar](max) NULL,
	[EKKO_EKORG] [varchar](max) NULL,
	[EKKO_EKGRP] [varchar](max) NULL,
	[EKKO_IHREZ] [varchar](max) NULL,
	[EKKO_UNSEZ] [varchar](max) NULL,
	[EKKO_KDATB] [varchar](max) NULL,
	[EKKO_KDATE] [varchar](max) NULL,
	[EKKO_KONNR] [varchar](max) NULL,
	[EKKO_ANGNR] [varchar](max) NULL,
	[EKKO_IHRAN] [varchar](max) NULL,
	[EKKO_SUBMI] [varchar](max) NULL,
	[EKKO_STCEG] [varchar](max) NULL,
	[EKKO_EKGSM] [varchar](max) NULL,
	[EKKO_UEBDT] [varchar](max) NULL,
	[EKKO_ERNAM] [varchar](max) NULL,
	[EKKO_AEUSERNAME] [varchar](max) NULL,
	[EKKO_UDATE] [varchar](max) NULL,
	[EKKO_DATUM] [varchar](max) NULL,
	[HASH_PO_HEADER] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_SUPPLIER_LFA1] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_SUPPLIER_LFM1] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Header_ETL] ADD  CONSTRAINT [DF__PO_header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_Header_ETL] ADD  CONSTRAINT [DF__PO_header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
