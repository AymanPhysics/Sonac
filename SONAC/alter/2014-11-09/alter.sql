alter table SalesFreezingMaster add TotalPriceBeforeDiscount float, Per1 float, Per2 float, Val1 float, Val2 float, Nolon float
go
update SalesFreezingMaster set TotalPriceBeforeDiscount =TotalPrice, Per1 =0, Per2 =0, Val1 =0, Val2 =0, Nolon =0

