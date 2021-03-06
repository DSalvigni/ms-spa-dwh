USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_PaymentTerm]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_PaymentTerm](
	[T052_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[T052_UID] [uniqueidentifier] NULL,
	[HASH_MD_PAYMENTTERM] [binary](16) NULL,
	[T052_SYSID] [nvarchar](255) NULL,
	[T052_MANDT] [nvarchar](255) NULL,
	[T052_ZTERM] [nvarchar](255) NULL,
	[T052_SPRAS] [nvarchar](255) NULL,
	[T052_TEXT1] [nvarchar](max) NULL,
	[T052_ZTAG1] [nvarchar](255) NULL,
	[T052_ZPRZ1] [decimal](18, 2) NULL,
	[T052_ZTAG2] [nvarchar](255) NULL,
	[T052_ZPRZ2] [decimal](18, 2) NULL,
	[T052_ZTAG3] [nvarchar](255) NULL,
	[T052_ZTAGG] [nvarchar](255) NULL,
	[T052_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_MD_PaymentTerm] PRIMARY KEY CLUSTERED 
(
	[T052_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_PaymentTerm] ADD  CONSTRAINT [DF__MD_Paymen__SSMA___6383C8BA]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
