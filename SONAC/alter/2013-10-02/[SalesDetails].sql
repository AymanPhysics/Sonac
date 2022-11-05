
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesDetails]') AND type in (N'U'))
DROP TABLE [dbo].[SalesDetails]
GO

CREATE TABLE [dbo].[SalesDetails](
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [decimal](18, 0) NULL,
	[Price] [decimal](18, 2) NULL,
	[QtySub] [decimal](18, 2) NULL,
	[PriceSub] [decimal](18, 2) NULL,
	[Value] [decimal](18, 2) NULL,
	[IsPrinted] [int] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


