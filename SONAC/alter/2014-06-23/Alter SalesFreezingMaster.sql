alter TABLE [dbo].[SalesFreezingMaster] add
	[TotalPrice] [Float] NULL,
	[TotalNo] [Float] NULL
	
Update [SalesFreezingMaster]
Set TotalPrice = 0,
    TotalNo = 0
Where TotalNo is null
  and TotalPrice is null
