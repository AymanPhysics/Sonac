CREATE TABLE [dbo].[SalesDetails2](
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [float] NULL,
	[Price] [float] NULL,
	[Value] [float] NULL,
	[Line] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO

drop TABLE [dbo].[SalesMaster2]
CREATE TABLE [dbo].[SalesMaster2](
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[ToId] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[Total] [float] NULL,
	CashValue [float] NULL,
	[DocNo] [nvarchar](100) NULL,
 CONSTRAINT [PK_SalesMaster2] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] 
))