

CREATE TABLE [dbo].[SalesDetails](
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[Price] [float] NULL,
	[QtySub] [float] NULL,
	[PriceSub] [float] NULL,
	[Value] [float] NULL,
	[IsPrinted] [int] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [float] NULL,
	[Barcode] [nvarchar](100) NULL,
	[Color] [int] NULL,
	[Size] [int] NULL,
	[SalesPrice] [float] NULL
) ON [PRIMARY]

GO


