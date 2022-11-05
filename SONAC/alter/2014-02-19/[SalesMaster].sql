select * from [SalesMaster]
go
DROP TABLE [dbo].[SalesMaster]
go


CREATE TABLE [dbo].[SalesMaster](
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[TableId] [int] NULL,
	[TableSubId] [int] NULL,
	[UserName] [int] NULL,
	[IsClosed] [int] NULL,
	[NoOfPersons] [int] NULL,
	[MinPerPerson] [float] NULL,
	[CancelMinPerPerson] [int] NULL,
	[WithService] [int] NULL,
	[WithTax] [int] NULL,
	[ServiceValue] [float] NULL,
	[Taxvalue] [float] NULL,
	[PaymentType] [int] NULL,
	[CashValue] [float] NULL,
	[DiscountPerc] [float] NULL,
	[DiscountValue] [float] NULL,
	[ToId] [int] NULL,
	[WaiterId] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[OpennedDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[ClosedDate] [datetime] NULL,
	[IsCashierPrinted] [int] NULL,
	[Cashier] [int] NULL,
	[DeliverymanId] [int] NULL,
	[Total] [float] NULL,
	[DocNo] [nvarchar](100) NULL,
	[AccNo1] [int] NULL,
	[Per1] [float] NULL,
	[Val1] [float] NULL,
	[AccNo2] [int] NULL,
	[Per2] [float] NULL,
	[Val2] [float] NULL,
	[AccNo3] [int] NULL,
	[Per3] [float] NULL,
	[Val3] [float] NULL,
	[AccNo4] [int] NULL,
	[Per4] [float] NULL,
	[Val4] [float] NULL,
	[AccType1] [int] NULL,
	[AccType2] [int] NULL,
	[AccType3] [int] NULL,
	[AccType4] [int] NULL,
	[TotalAfterDiscount] [float] NULL,
	[SaveId] [int] NULL,
	[Temp] [int] NULL,
 CONSTRAINT [PK_SalesMaster] PRIMARY KEY CLUSTERED 
(
	[Flag] ASC,
	[StoreId] ASC,
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
