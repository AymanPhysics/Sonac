alter TABLE [dbo].[SalesFreezingDetails] add
	[Price] [Float] NULL,
	[Value] [Float] NULL

Update [SalesFreezingDetails]
Set Price = 0,
    Value = 0
Where Value is null
  and Price is null
