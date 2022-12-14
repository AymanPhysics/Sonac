/****** Object:  StoredProcedure [dbo].[AccontMotion]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccontMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AccontMotion]
GO
/****** Object:  StoredProcedure [dbo].[OpenNewYear]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpenNewYear]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[OpenNewYear]
GO
/****** Object:  StoredProcedure [dbo].[UpdateOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOutMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateOutMotion]
GO
/****** Object:  StoredProcedure [dbo].[UpdateOutMotionSerialNo]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOutMotionSerialNo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateOutMotionSerialNo]
GO
/****** Object:  StoredProcedure [dbo].[GetSalesRPT]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesRPT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSalesRPT]
GO
/****** Object:  UserDefinedFunction [dbo].[Bal0]    Script Date: 11/09/2014 08:49:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bal0]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Bal0]
GO
/****** Object:  StoredProcedure [dbo].[GetFreezingStoreBal]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetFreezingStoreBal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetFreezingStoreBal]
GO
/****** Object:  StoredProcedure [dbo].[GetItemCard]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemCard]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetItemCard]
GO
/****** Object:  StoredProcedure [dbo].[GetItems]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItems]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetItems]
GO
/****** Object:  StoredProcedure [dbo].[GetItemsSales]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemsSales]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetItemsSales]
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemTypeName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetItemTypeName]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanBal]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanBal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanBal]
GO
/****** Object:  StoredProcedure [dbo].[GetNewCustomerSales]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetNewCustomerSales]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetNewCustomerSales]
GO
/****** Object:  StoredProcedure [dbo].[GetNewPurchase]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetNewPurchase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetNewPurchase]
GO
/****** Object:  StoredProcedure [dbo].[GetMessages]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMessages]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetMessages]
GO
/****** Object:  StoredProcedure [dbo].[GetPurchase]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPurchase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetPurchase]
GO
/****** Object:  StoredProcedure [dbo].[GetStoreStoreBal]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreStoreBal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetStoreStoreBal]
GO
/****** Object:  StoredProcedure [dbo].[GetSales]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSales]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSales]
GO
/****** Object:  StoredProcedure [dbo].[GetStoreBal]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreBal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetStoreBal]
GO
/****** Object:  StoredProcedure [dbo].[LoadOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadOutMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadOutMotion]
GO
/****** Object:  StoredProcedure [dbo].[LoadTypes]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadTypes]
GO
/****** Object:  StoredProcedure [dbo].[LoadTypes2]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypes2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadTypes2]
GO
/****** Object:  StoredProcedure [dbo].[LoadTypesFinal]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypesFinal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadTypesFinal]
GO
/****** Object:  StoredProcedure [dbo].[LoadTypesPackaged]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypesPackaged]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadTypesPackaged]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreItemBal]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreItemBal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStoreItemBal]
GO
/****** Object:  StoredProcedure [dbo].[LoadGroups]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroups]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadGroups]
GO
/****** Object:  StoredProcedure [dbo].[LoadGroups2]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroups2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadGroups2]
GO
/****** Object:  StoredProcedure [dbo].[LoadGroupsFinal]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroupsFinal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadGroupsFinal]
GO
/****** Object:  StoredProcedure [dbo].[LoadGroupsPackaged]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroupsPackaged]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadGroupsPackaged]
GO
/****** Object:  StoredProcedure [dbo].[LoadInMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadInMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LoadInMotion]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreFreezingItemBal]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreFreezingItemBal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStoreFreezingItemBal]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreFreezingItemBalQty]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreFreezingItemBalQty]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStoreFreezingItemBalQty]
GO
/****** Object:  StoredProcedure [dbo].[GetSalesFreezing]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesFreezing]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSalesFreezing]
GO
/****** Object:  StoredProcedure [dbo].[GetSalesFreezingRPT]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesFreezingRPT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSalesFreezingRPT]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSalesItems]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesItems]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSalesItems]
GO
/****** Object:  StoredProcedure [dbo].[GetSalesMaster2]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesMaster2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSalesMaster2]
GO
/****** Object:  StoredProcedure [dbo].[LA]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LA]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSubAccName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubAccName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSubAccName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSubAccNameLink]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubAccNameLink]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSubAccNameLink]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSubJobName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubJobName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSubJobName]
GO
/****** Object:  UserDefinedFunction [dbo].[getsum]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getsum]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getsum]
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierItemPrice]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSupplierItemPrice]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSupplierItemPrice]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSupplierLoanBal0]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSupplierLoanBal0]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSupplierLoanBal0]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSupplierName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSupplierName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSupplierName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetTownName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTownName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetTownName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetTypeName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetTypeName]
GO
/****** Object:  UserDefinedFunction [dbo].[IsWeekHoliday]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsWeekHoliday]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[IsWeekHoliday]
GO
/****** Object:  StoredProcedure [dbo].[PostOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PostOutMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PostOutMotion]
GO
/****** Object:  StoredProcedure [dbo].[PostPurchase]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PostPurchase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[PostPurchase]
GO
/****** Object:  StoredProcedure [dbo].[GetPurchaseAll]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPurchaseAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetPurchaseAll]
GO
/****** Object:  UserDefinedFunction [dbo].[GetReligion]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetReligion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetReligion]
GO
/****** Object:  UserDefinedFunction [dbo].[GetReligionName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetReligionName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetReligionName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSafeAccNo]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSafeAccNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSafeAccNo]
GO
/****** Object:  StoredProcedure [dbo].[GetMSG]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMSG]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetMSG]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEmpName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEnName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEnName]
GO
/****** Object:  StoredProcedure [dbo].[GetOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOutMotion]
GO
/****** Object:  StoredProcedure [dbo].[GetOutMotionDay]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionDay]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOutMotionDay]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionMaxSerialNo]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionMaxSerialNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetOutMotionMaxSerialNo]
GO
/****** Object:  StoredProcedure [dbo].[GetOutMotionPiscol]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPiscol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOutMotionPiscol]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionPreQty]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPreQty]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetOutMotionPreQty]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionPreValue]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPreValue]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetOutMotionPreValue]
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionPreWieghtNet]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPreWieghtNet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetOutMotionPreWieghtNet]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPaymentTypeName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPaymentTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetPaymentTypeName]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanForSuppliers]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanForSuppliers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanForSuppliers]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanForSuppliers2]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanForSuppliers2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanForSuppliers2]
GO
/****** Object:  UserDefinedFunction [dbo].[GetLoanItemBal]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanItemBal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetLoanItemBal]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanItemCard]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanItemCard]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanItemCard]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanItemCardBySup]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanItemCardBySup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanItemCardBySup]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanPone]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanPone]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanPone]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMainAccName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMainAccName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetMainAccName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMainAccNoLink]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMainAccNoLink]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetMainAccNoLink]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMainJobName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMainJobName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetMainJobName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemUnitName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemUnitName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetItemUnitName]
GO
/****** Object:  StoredProcedure [dbo].[GetLoan1]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoan1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoan1]
GO
/****** Object:  StoredProcedure [dbo].[GetLoanAll]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetLoanAll]
GO
/****** Object:  StoredProcedure [dbo].[GetItemCardFreezing]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemCardFreezing]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetItemCardFreezing]
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetItemName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemPurchasePrice]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemPurchasePrice]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetItemPurchasePrice]
GO
/****** Object:  UserDefinedFunction [dbo].[GetGetCustName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGetCustName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetGetCustName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetGroupFlag]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGroupFlag]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetGroupFlag]
GO
/****** Object:  UserDefinedFunction [dbo].[GetGroupName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGroupName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetGroupName]
GO
/****** Object:  StoredProcedure [dbo].[GetHalfTaxRPT]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetHalfTaxRPT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetHalfTaxRPT]
GO
/****** Object:  StoredProcedure [dbo].[GetInMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetInMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetInMotion]
GO
/****** Object:  StoredProcedure [dbo].[GetInMotionPiscol]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetInMotionPiscol]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetInMotionPiscol]
GO
/****** Object:  UserDefinedFunction [dbo].[GetAreaName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAreaName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetAreaName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetBal0]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetBal0]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetBal0]
GO
/****** Object:  UserDefinedFunction [dbo].[GetBankAccNo]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetBankAccNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetBankAccNo]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCityName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCityName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetCityName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCountryName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCountryName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetCountryName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCustName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetCustName]
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerItemPrice]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCustomerItemPrice]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCustomerItemPrice]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustomerName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCustomerName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetCustomerName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDepartmentName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDepartmentName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetDepartmentName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDriverName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetDriverName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpArName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpArName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEmpArName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpDepartmentId]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpDepartmentId]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEmpDepartmentId]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpEnName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpEnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEmpEnName]
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddCustomer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddCustomer]
GO
/****** Object:  StoredProcedure [dbo].[bk]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bk]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[bk]
GO
/****** Object:  StoredProcedure [dbo].[CalcLoan]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CalcLoan]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CalcLoan]
GO
/****** Object:  StoredProcedure [dbo].[Exec_Backup]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exec_Backup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Exec_Backup]
GO
/****** Object:  UserDefinedFunction [dbo].[GetAccName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAccName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetAccName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetAccTypeName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAccTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetAccTypeName]
GO
/****** Object:  StoredProcedure [dbo].[GetAllBal]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllBal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllBal]
GO
/****** Object:  StoredProcedure [dbo].[ChangePurchaseInvoices]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChangePurchaseInvoices]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ChangePurchaseInvoices]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSellerName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSellerName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSellerName]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePurchaseInvoices]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdatePurchaseInvoices]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdatePurchaseInvoices]
GO
/****** Object:  StoredProcedure [dbo].[UpdateChartBal0]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateChartBal0]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateChartBal0]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerSalesInvoices]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCustomerSalesInvoices]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateCustomerSalesInvoices]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerSalesInvoicesPrice]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCustomerSalesInvoicesPrice]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateCustomerSalesInvoicesPrice]
GO
/****** Object:  StoredProcedure [dbo].[UpdateInMotion]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateInMotion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateInMotion]
GO
/****** Object:  UserDefinedFunction [dbo].[MonthDays]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonthDays]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[MonthDays]
GO
/****** Object:  StoredProcedure [dbo].[TestLogin]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestLogin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TestLogin]
GO
/****** Object:  UserDefinedFunction [dbo].[ToStrDate]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ToStrDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ToStrDate]
GO
/****** Object:  UserDefinedFunction [dbo].[ToStrTime]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ToStrTime]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ToStrTime]
GO
/****** Object:  UserDefinedFunction [dbo].[MyGetDate]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyGetDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[MyGetDate]
GO
/****** Object:  UserDefinedFunction [dbo].[MyRound]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyRound]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[MyRound]
GO
/****** Object:  StoredProcedure [dbo].[WeekDays]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeekDays]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[WeekDays]
GO
/****** Object:  StoredProcedure [dbo].[WeekFirstDay]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeekFirstDay]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[WeekFirstDay]
GO
/****** Object:  StoredProcedure [dbo].[GetMaxSerialId]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMaxSerialId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetMaxSerialId]
GO
/****** Object:  UserDefinedFunction [dbo].[DaysInMonth]    Script Date: 11/09/2014 08:49:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DaysInMonth]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[DaysInMonth]
GO
/****** Object:  UserDefinedFunction [dbo].[ean13]    Script Date: 11/09/2014 08:49:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ean13]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ean13]
GO
/****** Object:  StoredProcedure [dbo].[EncreaseMaxSize]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EncreaseMaxSize]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EncreaseMaxSize]
GO
/****** Object:  StoredProcedure [dbo].[GetAllDaysInMonth]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllDaysInMonth]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllDaysInMonth]
GO
/****** Object:  StoredProcedure [dbo].[executeSql]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[executeSql]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[executeSql]
GO
/****** Object:  UserDefinedFunction [dbo].[FillZero]    Script Date: 11/09/2014 08:49:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FillZero]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[FillZero]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_RemoveTashkeel]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_RemoveTashkeel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_RemoveTashkeel]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCaseArName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCaseArName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetCaseArName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetCaseEnName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCaseEnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetCaseEnName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetBranchCity]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetBranchCity]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetBranchCity]
GO
/****** Object:  StoredProcedure [dbo].[AddMyGetDate]    Script Date: 11/09/2014 08:49:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddMyGetDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddMyGetDate]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpHolidays]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpHolidays]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEmpHolidays]
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpHolidays2]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpHolidays2]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetEmpHolidays2]
GO
/****** Object:  StoredProcedure [dbo].[sh]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sh]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sh]
GO
/****** Object:  StoredProcedure [dbo].[Shrink]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shrink]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Shrink]
GO
/****** Object:  StoredProcedure [dbo].[sp]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp]
GO
/****** Object:  StoredProcedure [dbo].[StopPro]    Script Date: 11/09/2014 08:49:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StopPro]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[StopPro]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreGroupName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreGroupName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStoreGroupName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreItemPurchasePrice]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreItemPurchasePrice]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStoreItemPurchasePrice]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreItemUnitName]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreItemUnitName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStoreItemUnitName]
GO
/****** Object:  UserDefinedFunction [dbo].[Tafkeet]    Script Date: 11/09/2014 08:49:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tafkeet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Tafkeet]
GO
/****** Object:  UserDefinedFunction [dbo].[Tafkeet]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tafkeet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[Tafkeet]
(@val decimal(14,2))
returns nvarchar(4000)
--with encryption
as
begin
declare @str nvarchar(100)=cast(@val as nvarchar(100))
select @str=REPLICATE(''0'',15-LEN(@str))+@str

declare @s1 nvarchar(1000),@s2 nvarchar(1000),@s3 nvarchar(1000),@s4 nvarchar(1000),@s5 nvarchar(1000),@s6 nvarchar(1000),@s7 nvarchar(1000),@s8 nvarchar(1000),@s9 nvarchar(1000),@s10 nvarchar(1000),@s11 nvarchar(1000),@s12 nvarchar(1000),@s13 nvarchar(1000),@s14 nvarchar(1000),@s15 nvarchar(1000),@s16 nvarchar(1000),@s17 nvarchar(1000),@s18 nvarchar(1000),@s19 nvarchar(1000)

select @s1=case SUBSTRING(@str,1,1)  when ''1'' then ''مائة'' when ''2'' then ''مائتان'' when ''3'' then ''ثلاثمائة'' when ''4'' then ''أربعمائة'' when ''5'' then ''خمسمائة'' when ''6'' then ''ستمائة'' when ''7'' then ''سبعمائة'' when ''8'' then ''ثمانمائة'' when ''9'' then ''تسعمائة'' else '''' end
select @s2=case SUBSTRING(@str,2,1)  when ''1'' then ''عشرة'' when ''2'' then ''عشرون'' when ''3'' then ''ثلاثون'' when ''4'' then ''أربعون'' when ''5'' then ''خمسون'' when ''6'' then ''ستون'' when ''7'' then ''سبعون'' when ''8'' then ''ثمانون'' when ''9'' then ''تسعون'' else '''' end
select @s3=case SUBSTRING(@str,3,1)  when ''1'' then ''واحد'' when ''2'' then ''اثنان'' when ''3'' then ''ثلاثة'' when ''4'' then ''أربعة'' when ''5'' then ''خمسة'' when ''6'' then ''ستة'' when ''7'' then ''سبعة'' when ''8'' then ''ثمانية'' when ''9'' then ''تسعة'' else '''' end

select @s4=case SUBSTRING(@str,4,1)  when ''1'' then ''مائة'' when ''2'' then ''مائتان'' when ''3'' then ''ثلاثمائة'' when ''4'' then ''أربعمائة'' when ''5'' then ''خمسمائة'' when ''6'' then ''ستمائة'' when ''7'' then ''سبعمائة'' when ''8'' then ''ثمانمائة'' when ''9'' then ''تسعمائة'' else '''' end
select @s5=case SUBSTRING(@str,5,1)  when ''1'' then ''عشرة'' when ''2'' then ''عشرون'' when ''3'' then ''ثلاثون'' when ''4'' then ''أربعون'' when ''5'' then ''خمسون'' when ''6'' then ''ستون'' when ''7'' then ''سبعون'' when ''8'' then ''ثمانون'' when ''9'' then ''تسعون'' else '''' end
select @s6=case SUBSTRING(@str,6,1)  when ''1'' then ''واحد'' when ''2'' then ''اثنان'' when ''3'' then ''ثلاثة'' when ''4'' then ''أربعة'' when ''5'' then ''خمسة'' when ''6'' then ''ستة'' when ''7'' then ''سبعة'' when ''8'' then ''ثمانية'' when ''9'' then ''تسعة'' else '''' end

select @s7=case SUBSTRING(@str,7,1)  when ''1'' then ''مائة'' when ''2'' then ''مائتان'' when ''3'' then ''ثلاثمائة'' when ''4'' then ''أربعمائة'' when ''5'' then ''خمسمائة'' when ''6'' then ''ستمائة'' when ''7'' then ''سبعمائة'' when ''8'' then ''ثمانمائة'' when ''9'' then ''تسعمائة'' else '''' end
select @s8=case SUBSTRING(@str,8,1)  when ''1'' then ''عشرة'' when ''2'' then ''عشرون'' when ''3'' then ''ثلاثون'' when ''4'' then ''أربعون'' when ''5'' then ''خمسون'' when ''6'' then ''ستون'' when ''7'' then ''سبعون'' when ''8'' then ''ثمانون'' when ''9'' then ''تسعون'' else '''' end
select @s9=case SUBSTRING(@str,9,1)  when ''1'' then ''واحد'' when ''2'' then ''اثنان'' when ''3'' then ''ثلاثة'' when ''4'' then ''أربعة'' when ''5'' then ''خمسة'' when ''6'' then ''ستة'' when ''7'' then ''سبعة'' when ''8'' then ''ثمانية'' when ''9'' then ''تسعة'' else '''' end

select @s10=case SUBSTRING(@str,10,1)  when ''1'' then ''مائة'' when ''2'' then ''مائتان'' when ''3'' then ''ثلاثمائة'' when ''4'' then ''أربعمائة'' when ''5'' then ''خمسمائة'' when ''6'' then ''ستمائة'' when ''7'' then ''سبعمائة'' when ''8'' then ''ثمانمائة'' when ''9'' then ''تسعمائة'' else '''' end
select @s11=case SUBSTRING(@str,11,1)  when ''1'' then ''عشرة'' when ''2'' then ''عشرون'' when ''3'' then ''ثلاثون'' when ''4'' then ''أربعون'' when ''5'' then ''خمسون'' when ''6'' then ''ستون'' when ''7'' then ''سبعون'' when ''8'' then ''ثمانون'' when ''9'' then ''تسعون'' else '''' end
select @s12=case SUBSTRING(@str,12,1)  when ''1'' then ''واحد'' when ''2'' then ''اثنان'' when ''3'' then ''ثلاثة'' when ''4'' then ''أربعة'' when ''5'' then ''خمسة'' when ''6'' then ''ستة'' when ''7'' then ''سبعة'' when ''8'' then ''ثمانية'' when ''9'' then ''تسعة'' else '''' end

select @s14=case SUBSTRING(@str,14,1)  when ''1'' then ''عشرة'' when ''2'' then ''عشرون'' when ''3'' then ''ثلاثون'' when ''4'' then ''أربعون'' when ''5'' then ''خمسون'' when ''6'' then ''ستون'' when ''7'' then ''سبعون'' when ''8'' then ''ثمانون'' when ''9'' then ''تسعون'' else '''' end
select @s15=case SUBSTRING(@str,15,1)  when ''1'' then ''واحد'' when ''2'' then ''اثنان'' when ''3'' then ''ثلاثة'' when ''4'' then ''أربعة'' when ''5'' then ''خمسة'' when ''6'' then ''ستة'' when ''7'' then ''سبعة'' when ''8'' then ''ثمانية'' when ''9'' then ''تسعة'' else '''' end


select @str=@s1
select @str=@str+(case when @str<>'''' and @s3<>'''' then '' و '' else '''' end)+@s3
select @str=@str+(case when @str<>'''' and @s2<>'''' then '' و '' else '''' end)+@s2
select @str=@str+(case when @s1+@s2+@s3<>'''' then '' مليار '' else '''' end)

select @str=@str+(case when @str<>'''' and @s4<>'''' then '' و '' else '''' end)+@s4
select @str=@str+(case when @str<>'''' and @s6<>'''' then '' و '' else '''' end)+@s6
select @str=@str+(case when @str<>'''' and @s5<>'''' then '' و '' else '''' end)+@s5
select @str=@str+(case when @s4+@s5+@s6<>'''' then '' مليون '' else '''' end)

select @str=@str+(case when @str<>'''' and @s7<>'''' then '' و '' else '''' end)+@s7
select @str=@str+(case when @str<>'''' and @s9<>'''' then '' و '' else '''' end)+@s9
select @str=@str+(case when @str<>'''' and @s8<>'''' then '' و '' else '''' end)+@s8
select @str=@str+(case when @s7+@s8+@s9<>'''' then '' ألف '' else '''' end)

select @str=@str+(case when @str<>'''' and @s10<>'''' then '' و '' else '''' end)+@s10
select @str=@str+(case when @str<>'''' and @s12<>'''' then '' و '' else '''' end)+@s12
select @str=@str+(case when @str<>'''' and @s11<>'''' then '' و '' else '''' end)+@s11

select @str=@str+(case when @str<>'''' then (case when cast(@val as int) between 3 and 10 then '' جنيهات '' else '' جنيها '' end) else '''' end)

select @str=@str+(case when @str<>'''' and @s15<>'''' then '' و '' else '''' end)+@s15
select @str=@str+(case when @str<>'''' and @s14<>'''' then '' و '' else '''' end)+@s14

select @str=@str+(case when @s15+@s14<>'''' then (case when @val-cast(@val as int) between .03 and .1 then '' قروش '' else '' قرشا '' end) else '''' end)

select @str=REPLACE(@str,''واحد و عشرة'',''أحد عشر'')
select @str=REPLACE(@str,''اثنان و عشرة'',''اثنا عشر'')
select @str=REPLACE(@str,''ثلاثة و عشرة'',''ثلاثة عشر'')
select @str=REPLACE(@str,''أربعة و عشرة'',''أربعة عشر'')
select @str=REPLACE(@str,''خمسة و عشرة'',''خمسة عشر'')
select @str=REPLACE(@str,''ستة و عشرة'',''ستة عشر'')
select @str=REPLACE(@str,''سبعة و عشرة'',''سبعة عشر'')
select @str=REPLACE(@str,''ثمانية و عشرة'',''ثمانية عشر'')
select @str=REPLACE(@str,''تسعة و عشرة'',''تسعة عشر'')

select @str=@str+(case when @str<>'''' then '' فقط لا غير '' else '''' end)

return @str
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreItemUnitName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreItemUnitName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetStoreItemUnitName](@Id int,@UnitId int)
returns varchar(100)
--with encryption
as
begin
return(isnull((

select (case @UnitId when 0 then Unit when 1 then UnitSub when 2 then UnitSub2 else '''' end) 
From StoreItems where Id=@Id
        
),''''))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreItemPurchasePrice]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreItemPurchasePrice]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetStoreItemPurchasePrice](@Id int)
returns float
--with encryption
as
begin
return(isnull((select PurchasePrice from StoreItems where Id=@Id),0))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreGroupName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreGroupName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetStoreGroupName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return isnull((select Name from StoreGroups where Id=@Id),'''')
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[StopPro]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StopPro]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[StopPro]
--with encryption
as
declare @t table (Id int,Line int Identity(1,1))
insert @t select Id from sys.traces where is_default=0
declare @x int=1,@y nvarchar(10)='''',@max int=(select count(*) from @t)
while @x<=@max
begin
select @y=cast(Id as nvarchar(10)) from @t where Line=@x
exec (''sp_trace_setstatus ''+@y+'',0'')
set @x+=1
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sp]
--with encryption
as
declare @t table (Id int,Line int Identity(1,1))
insert @t select Id from sys.traces where is_default=0
declare @x int=1,@y nvarchar(10)='''',@max int=(select count(*) from @t)
while @x<=@max
begin
select @y=cast(Id as nvarchar(10)) from @t where Line=@x
exec (''sp_trace_setstatus ''+@y+'',0'')
set @x+=1
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Shrink]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shrink]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[Shrink]
--with encryption
as

declare @db_name nvarchar(1000)=db_name()

exec (''alter database [''+@db_name+''] set recovery simple
dbcc shrinkdatabase ([''+@db_name+''])
alter database [''+@db_name+''] set recovery full'')
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sh]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sh]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sh]
--with encryption
as

declare @db_name nvarchar(1000)=db_name()

exec (''alter database [''+@db_name+''] set recovery simple
dbcc shrinkdatabase ([''+@db_name+''])
alter database [''+@db_name+''] set recovery full'')
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpHolidays2]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpHolidays2]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE  FUNCTION [dbo].[GetEmpHolidays2](@EmpId int,@MONTH int,@YEAR int)
returns int
--with encryption
as
begin
declare @val int

select @val= count(*)
 from Attendance
where EmpId=@EmpId and Month(DayDate)=@Month and Year(DayDate)=@Year
and dbo.IsHoliDays2(DayDate)=1

select @val=0 where @val is null
return @val
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpHolidays]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpHolidays]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetEmpHolidays](@EmpId int,@MONTH int,@YEAR int)
returns decimal(12,2)
--with encryption
as
begin
declare @val decimal(12,2)

select @val= SUM(
datepart(HOUR,CurrentLogOutDateTime)*60+datepart(MINUTE,CurrentLogOutDateTime)
-datepart(HOUR,CurrentLoginDateTime)*60-datepart(MINUTE,CurrentLoginDateTime)
)/60.*2.
 from Attendance
where EmpId=@EmpId and Month(DayDate)=@Month and Year(DayDate)=@Year
and dbo.IsHoliDays(DayDate)=1

select @val=0 where @val is null
return @val
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddMyGetDate]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddMyGetDate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[AddMyGetDate](@tbl nvarchar(1000))
--with encryption
as
exec(''alter table ''+@tbl+'' ADD  UserName int'')
exec(''alter table ''+@tbl+'' ADD  MyGetDate datetime'')
exec(''alter table ''+@tbl+'' ADD  CONSTRAINT [DF_''+@tbl+''_MyGetDate]  DEFAULT (getdate()) FOR [MyGetDate]'')
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetBranchCity]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetBranchCity]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetBranchCity](@Branch int)
returns int
--with encryption
as
begin
return(select CityID from Branches where Id=@Branch)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCaseEnName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCaseEnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetCaseEnName](@Id int)
returns nvarchar(4000)
--with encryption
as
begin
return(select EnName from Cases where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCaseArName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCaseArName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetCaseArName](@Id int)
returns nvarchar(4000)
--with encryption
as
begin
return(select ArName from Cases where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_RemoveTashkeel]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_RemoveTashkeel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fn_RemoveTashkeel] (@InputString nvarchar(2300) )

RETURNS nvarchar(2300) 

--with encryption
AS

BEGIN

  DECLARE @OutputString nvarchar(2300)

  SET @OutputString=@InputString

  SET @OutputString=REPLACE(@OutputString,''ْ'','''')
  SET @OutputString=REPLACE(@OutputString,''ْ'','''')
  SET @OutputString=REPLACE(@OutputString,''ْ'','''')
  SET @OutputString=REPLACE(@OutputString,''ْ'','''')
  SET @OutputString=REPLACE(@OutputString,''ْ'','''')
  SET @OutputString=REPLACE(@OutputString,''ٍ'','''')
  SET @OutputString=REPLACE(@OutputString,''ِ'','''')
  SET @OutputString=REPLACE(@OutputString,''ٌ'','''')
  SET @OutputString=REPLACE(@OutputString,''ُ'','''')
  SET @OutputString=REPLACE(@OutputString,''ً'','''')
  SET @OutputString=REPLACE(@OutputString,'''','''')
  SET @OutputString=REPLACE(@OutputString,''ّ'','''')


  RETURN(@OutputString)

END
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[FillZero]    Script Date: 11/09/2014 08:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FillZero]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[FillZero](@str nvarchar(4000),@Length int)
returns nvarchar(1000)
--with encryption
as
begin

select @str=replace(@str,'' '','''')
select @str=replace(@str,''	'','''')
declare @x int=@Length-len(@str)
select @x=0 where @x<0
select @str=REPLICATE(''0'',@x)+@str

return @str
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[executeSql]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[executeSql]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[executeSql](@sql varchar(1000))
--with encryption
as
exec @sql
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllDaysInMonth]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllDaysInMonth]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetAllDaysInMonth]
(
@Year int,
@Month int
)
--with encryption
as

declare @tbl table (DayDate datetime)

declare @today datetime=cast((cast(@year as nvarchar(4))+''-''+cast(@month as nvarchar(2))+''-01'') as datetime)

while MONTH(@today)=@Month
begin
insert @tbl select @today
set @today+=1
end

select ROW_NUMBER()over (order by DayDate) Line,DATENAME(WEEKDAY,DayDate) ''Day'',DayDate ''Date'' from @tbl
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EncreaseMaxSize]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EncreaseMaxSize]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[EncreaseMaxSize]
@max int=10000
--with encryption
as

declare @db_name nvarchar(1000)=db_name()
declare @file_name nvarchar(1000)=(select top 1 name from sys.database_files where type=0)
declare @SQL nvarchar(1000)

set @SQL=''USE master
ALTER DATABASE [''+@db_name+''] MODIFY FILE(NAME = ''+@file_name+'',maxSIZE = ''+cast(@max as nvarchar(100))+'' MB)''
exec (@SQL)

set @file_name=(select top 1 name from sys.database_files where type=1)

set @SQL=''USE master
ALTER DATABASE [''+@db_name+''] MODIFY FILE(NAME = ''+@file_name+'',maxSIZE = ''+cast(@max as nvarchar(100))+'' MB)''

exec (@SQL)
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ean13]    Script Date: 11/09/2014 08:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ean13]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N' 
 
create Function [dbo].[ean13](@chaine varchar(100)) returns varchar(100)
as
begin
        set @chaine = left(@chaine, 12)
        While len(@chaine) < 12
        begin
           set @chaine = (CASE WHEN len(@chaine)=11 THEN ''1'' ELSE ''0'' END) + @chaine
        End 
        
        declare @i int=13
        declare @checksum int=0
        declare @ean13 varchar(100)= ''''
        If Len(@chaine) = 12 
        begin
			declare @x int=1
            while @x<=12
            begin
                If ascii(substring(@chaine, @x, 1)) < 48 Or ascii(substring(@chaine, @x, 1)) > 57 
                begin
                    set @x = 0
                    break
                End 
                set @x+=1
            end
            If @i = 13 
            begin
            
				set @x =2
				while @x<=12
				begin
                    set @checksum = @checksum + cast(substring(@chaine, @x, 1) as int)
					set @x+=2    
                end
                select @checksum = @checksum * 3
				set @x =1
				while @x<=11
				begin
                    set @checksum = @checksum + cast(substring(@chaine, @x, 1) as int)
                    set @x+=2    
                end
                set @chaine = @chaine + cast((10 - @checksum % 10) % 10 as varchar(100))
                return @chaine
            End 
        End 
        
        return ''''
End ' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[DaysInMonth]    Script Date: 11/09/2014 08:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DaysInMonth]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[DaysInMonth]
(
@MONTH int,@YEAR int
)
returns int
--with encryption
as
begin

declare @Days int
if @MONTH in(1,3,5,7,8,10,12)
select @Days=31
else if @MONTH in(4,6,9,11)
select @Days=30
else if @YEAR%4=0
select @Days=29
else 
select @Days=28

return @Days

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetMaxSerialId]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMaxSerialId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetMaxSerialId]
(
@SerialType int
)
--with encryption
as

declare @NewSerialId int

select @NewSerialId=max(SerialId) from 
(

select max(SerialId) SerialId from Reservations where dbo.GetVisitingTypesSerialId(VisitingType)=@SerialType
union all
select max(SerialId) SerialId from Services where dbo.GetServiceGroupSerialId(ServiceGroupId)=@SerialType

union all

select max(SerialId2) SerialId from Reservations where dbo.GetVisitingTypesSerialId(VisitingType)=@SerialType
union all
select max(SerialId2) SerialId from Services where dbo.GetServiceGroupSerialId(ServiceGroupId)=@SerialType

)tbl

select @NewSerialId=ISNULL(@NewSerialId,0)+1

select @NewSerialId
' 
END
GO
/****** Object:  StoredProcedure [dbo].[WeekFirstDay]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeekFirstDay]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[WeekFirstDay]
@DayDate datetime
--with encryption
as

declare @day nvarchar(100)=DATENAME(WEEKDAY,@DayDate) 
declare @i int=0

if @day=''Saturday'' set @i=0
else if @day=''Sunday'' set @i=1
else if @day=''Monday'' set @i=2
else if @day=''Tuesday'' set @i=3
else if @day=''Wednesday'' set @i=4
else if @day=''Thursday'' set @i=5
else if @day=''Friday'' set @i=6
else return


declare @date datetime=(select @DayDate-@i)
select 0 Line,''Saturday'' ''Day'',@date+0 ''Date'' union
select 1 Line,''Sunday'' ''Day'',@date+1 ''Date'' union
select 2 Line,''Monday'' ''Day'',@date+2 ''Date'' union
select 3 Line,''Tuesday'' ''Day'',@date+3 ''Date'' union
select 4 Line,''Wednesday'' ''Day'',@date+4 ''Date'' union
select 5 Line,''Thursday'' ''Day'',@date+5 ''Date'' union
select 6 Line,''Friday'' ''Day'',@date+6 ''Date''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[WeekDays]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeekDays]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[WeekDays]
--with encryption
as
select 1 ''Line'',''Saturday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Saturday'' 
union
select 2 ''Line'', ''Sunday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Sunday'' 
union
select 3 ''Line'', ''Monday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Monday'' 
union
select 4 ''Line'', ''Tuesday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Tuesday'' 
union
select 5 ''Line'', ''Wednesday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Wednesday'' 
union
select 6 ''Line'', ''Thursday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Thursday'' 
union
select 7 ''Line'', ''Friday'' ''DATENAME'',COUNT(*) ''COUNT'' from Students where DATENAME(WEEKDAY,RegistrationDate)=''Friday'' 

group by DATENAME(WEEKDAY,RegistrationDate)
order by ''Line''
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[MyRound]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyRound]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[MyRound](@Val1 decimal(12,2),@Val2 decimal(12,2))
returns int
--with encryption
as
begin
return (case when (cast(@Val1/@Val2 as int)<@Val1/@Val2) then cast(@Val1/@Val2 as int)+1 else cast(@Val1/@Val2 as int) end)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[MyGetDate]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MyGetDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[MyGetDate]()
returns datetime
--with encryption
as
begin
declare @date datetime =getdate()
return cast(
		 cast(DATEPART(yy,getdate()) as nvarchar)+''-''+
		 cast(DATEPART(MM,getdate()) as nvarchar)+''-''+
		 cast(DATEPART(dd,getdate()) as nvarchar)
		 as datetime)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ToStrTime]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ToStrTime]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[ToStrTime]
(
@Date datetime
)
returns nvarchar(8)
--with encryption
as
begin
return CAST(CAST(@Date as time)as nvarchar(8))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ToStrDate]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ToStrDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[ToStrDate]
(
@Date datetime
)
returns nvarchar(10)
--with encryption
as
begin
return replace(CAST(CAST(@Date as Date)as nvarchar(10)),''-'',''/'')
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TestLogin]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[TestLogin]
(
@Id int,
@Password nvarchar(1000)
)
--with encryption
as

SELECT E.ArName,E.EnName,E.JobId,E.Manager,E.LevelId,E.Password,E.GeneralManager,E.Accountant,E.Board,E.Cashier,
0 SystemAdmin,S.CompanyName,E.Receptionist,E.Nurse,S.CompanyTel

FROM Employees E
cross join Statics S
where E.Id=@Id and E.SystemUser=1 and E.Password=@Password
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[MonthDays]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonthDays]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[MonthDays]
(
@Month int,
@Year int
)
RETURNS @tbl table(Line Datetime)
AS
BEGIN
	
	declare @x int=1,@max int=dbo.DaysInMonth(@month,@year)

	while @x<=@max
	begin
	insert @tbl select CAST(@Year as varchar(4))+''-''+CAST(@Month as varchar(2))+''-''+CAST(@x as varchar(2))
	select @x+=1
	end
	RETURN 
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateInMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateInMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[UpdateInMotion]
@GroupID int,
@Id int,
@PriceOre decimal(18,2),
@ValueOre decimal(18,2),
@PriceFarza decimal(18,2),
@ValueFarza decimal(18,2)

as

update InMotion set 
PriceOre=@PriceOre,
ValueOre=@ValueOre,
PriceFarza=@PriceFarza,
ValueFarza=@ValueFarza,
ValueTotal=@ValueOre+@ValueFarza
where GroupID=@GroupID
and ID=@Id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerSalesInvoicesPrice]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCustomerSalesInvoicesPrice]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[UpdateCustomerSalesInvoicesPrice]
@GroupID int,
@InvoiceNo int,
@Price decimal(30,2),
@Value decimal(30,2)
as

update OutMotion set
Price=@Price,
Value=@Value
where GroupID=@GroupID
and ID=@InvoiceNo


' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerSalesInvoices]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCustomerSalesInvoices]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[UpdateCustomerSalesInvoices]
@InvoiceNo int,
@GroupID int,
@OutcomeInvoices MyId readonly
as

update OutMotion set
CustomerSalesInvoiceNo=0
where GroupID=@GroupID
and ID not in(select * from @OutcomeInvoices)
and CustomerSalesInvoiceNo=@InvoiceNo

update OutMotion set
CustomerSalesInvoiceNo=@InvoiceNo
where GroupID=@GroupID
and ID in(select * from @OutcomeInvoices)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateChartBal0]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateChartBal0]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[UpdateChartBal0]
as
declare @Level int
select @Level=max(Level) from chart

while @Level>0
begin
	update m set Bal0=
	isnull((select sum(s.Bal0) from chart s where s.MainAccId=m.Id),0)
	from Chart m where Level=@Level and SubType=0

	select @Level-=1
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePurchaseInvoices]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdatePurchaseInvoices]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[UpdatePurchaseInvoices]
@InvoiceNo int,
@GroupID int,
@IncomeInvoices MyId readonly
as

update InMotion set
PuchaseInvoiceNo=0,PuchaseIsPosted=0
where GroupID=@GroupID
and ID not in(select * from @IncomeInvoices)
and PuchaseInvoiceNo=@InvoiceNo

update InMotion set
PuchaseInvoiceNo=@InvoiceNo
where GroupID=@GroupID
and ID in(select * from @IncomeInvoices)
and PuchaseIsPosted=0
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSellerName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSellerName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetSellerName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(select Name from Sellers where Id=@Id)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ChangePurchaseInvoices]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChangePurchaseInvoices]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[ChangePurchaseInvoices]
@InvoiceNo int,
@GroupID int,
@State int
as

update InMotion set
PuchaseIsPosted=@State
where GroupID=@GroupID
and PuchaseInvoiceNo=@InvoiceNo
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllBal]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllBal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetAllBal]
@MainAccNo varchar(100),
@LinkFile bigint,
@DayDate datetime
as

declare @TableName varchar(100)
select @TableName=TableName from LinkFile where Id=@LinkFile
declare @str varchar(1000)=''select Id,Name,dbo.Bal0(AccNo,Id,''''''+cast(@DayDate as varchar(100))+'''''',0) Bal0 from ''+@TableName+'' 
where (AccNo=''''''+cast(@MainAccNo as nvarchar(100))+'''''' or ''''''+cast(@MainAccNo as nvarchar(100))+''''''='''''''')
Order by Id''
create table #tbl(Id bigint,Name varchar(4000),Bal0 float)
insert #tbl
exec(@str)
print @str

select * from #tbl
drop table #tbl
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetAccTypeName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAccTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[GetAccTypeName] (@Id int)returns nvarchar(100)
as
begin
return isnull((select Name from AccTypes where Id=@Id),''-'')
end' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetAccName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAccName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION  [dbo].[GetAccName](@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return isnull((select Name from chart where Id=@Id),'''')
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Backup]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Exec_Backup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[Exec_Backup](@Bath as nvarchar(1000)=''E:\Projects\MyDotNetprojects\Resturant\Resturant'')
--with encryption
as

declare @db_name nvarchar(1000)=db_name()

exec (''alter database [''+@db_name+''] set recovery simple
dbcc shrinkdatabase ([''+@db_name+''])
alter database [''+@db_name+''] set recovery full'')

declare @SQL nvarchar(1000)=ltrim(rtrim(@Bath))+''\''+@db_name+''_''+
cast(Year(getdate()) as nvarchar)+''_''+
dbo.FillZero(cast(month(getdate()) as nvarchar),2)+''_''+
dbo.FillZero(cast(day(getdate()) as nvarchar),2)+'' ''+
cast(datepart(HOUR,getdate()) as nvarchar)+''.''+
cast(datepart(MINUTE,getdate()) as nvarchar)+''.''+
cast(datepart(SECOND,getdate()) as nvarchar)+''.bak''

exec(''BACKUP DATABASE [''+@db_name+''] TO DISK=''''''+@sql+'''''' '')
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CalcLoan]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CalcLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE Proc [dbo].[CalcLoan]
(
@Id int,
@GroupId int ,
@SupplierId int
)
as

select
(
select Isnull(SUM((Total - CashValue) * (case when Flag = 1 then 1. else -1. end)),0)
From SalesMaster2
where ToId=@SupplierId 
)
+
(
select Isnull(SUM(Value),0)
From SupplierIncome
where SupplierId=@SupplierId
)
-
(
select Isnull(SUM(Loan),0)
From Purchase
where Not(Id=@Id and GroupId=@GroupId) and SupplierId = @SupplierId
)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[bk]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bk]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[bk](@Bath as nvarchar(1000)=''E:\Projects\SQL Backup'')
--with encryption
as

declare @db_name nvarchar(1000)=db_name()

exec (''alter database [''+@db_name+''] set recovery simple
dbcc shrinkdatabase ([''+@db_name+''])
alter database [''+@db_name+''] set recovery full'')

declare @SQL nvarchar(1000)=ltrim(rtrim(@Bath))+''\''+@db_name+''\''+@db_name+''_backup_''+
cast(Year(getdate()) as nvarchar)+''_''+
dbo.FillZero(cast(month(getdate()) as nvarchar),2)+''_''+
dbo.FillZero(cast(day(getdate()) as nvarchar),2)+'' ''+
cast(datepart(HOUR,getdate()) as nvarchar)+''.''+
cast(datepart(MINUTE,getdate()) as nvarchar)+''.''+
cast(datepart(SECOND,getdate()) as nvarchar)+''.bak''

exec(''BACKUP DATABASE [''+@db_name+''] TO DISK=''''''+@sql+'''''' with compression'')
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddCustomer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[AddCustomer]
(
@Name varchar(1000),
@Address varchar(1000),
@Tel varchar(1000),
@Mobile varchar(1000),
@UserName int
)
--with encryption
as
declare @Id int=(select MAX(Id)+1 from Customers)
set @Id=isnull(@Id,1)

insert Customers(Id,Name,CountryId,CityId,AreaId,Address,Floor,Appartment,Tel,Mobile,Bal0,DescPerc,UserName,MyGetDate) select @Id,@Name,0,0,0,@Address,'''','''',@Tel,@Mobile,0,0,@UserName,GetDate()

select @Id
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpEnName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpEnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetEmpEnName](@Emp int)
returns nvarchar(1000)
--with encryption
as
begin
return(select EnName from Employees where Id=@Emp)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpDepartmentId]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpDepartmentId]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetEmpDepartmentId](@Id int)
returns int
--with encryption
as
begin
return(select DepartmentId from Employees where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpArName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpArName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetEmpArName](@Emp int)
returns nvarchar(1000)
--with encryption
as
begin
return(select ArName from Employees where Id=@Emp)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDriverName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDriverName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetDriverName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(select Name from Drivers where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDepartmentName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDepartmentName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetDepartmentName](@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return(select Name from Departments where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustomerName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCustomerName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetCustomerName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return isnull((select Name from Customers where Id=@Id),'''')
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerItemPrice]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCustomerItemPrice]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[GetCustomerItemPrice]
@CustomerId int,
@ItemId int
as

if exists(SELECT * FROM CustomerItems where CustomerId=@CustomerId and ItemId=@ItemId)
SELECT Price
FROM CustomerItems
where CustomerId=@CustomerId and ItemId=@ItemId
else 
SELECT SalesPrice Price
FROM Items
where Id=@ItemId
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCustName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCustName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetCustName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return isnull((select Name from Customers where Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCountryName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCountryName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetCountryName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return isnull((select Name from Countries where Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCityName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCityName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetCityName](@CountryId int,@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return isnull((select Name from Cities where CountryId=@CountryId and Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetBankAccNo]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetBankAccNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetBankAccNo](@Id bigint)
returns varchar(100)
--with encryption
as begin

return isnull((select AccNo from Banks where Id=@Id),'''')

end' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetBal0]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetBal0]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetBal0]
(
@TableName varchar(100),@MainAccNo varchar(100),@SubAccNo bigint
)
returns float
--with encryption
as
begin
declare @Val float

select @Val=
ISNULL((select sum(Bal0) from Customers where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from Suppliers where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from Debits where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from Credits where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from Saves where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from Banks where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from Sellers where AccNo=@MainAccNo and (Id=@SubAccNo or @SubAccNo=0)),0)+
ISNULL((select sum(Bal0) from chart where Id=@MainAccNo and @SubAccNo=0 and SubType=1 and LinkFile=0),0)

return isnull(@Val,0)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetAreaName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAreaName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE  FUNCTION [dbo].[GetAreaName](@CountryId int,@CityId int,@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return isnull((select Name from Areas where CountryId=@CountryId and CityId=@CityId and Id=@Id),'''')
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetInMotionPiscol]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetInMotionPiscol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetInMotionPiscol]
@GroupID varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as


declare @sql nvarchar(max)=''
declare @Row float,@Qty float,@WieghtNet float
SELECT @Row=COUNT(*),@Qty=isnull(sum(Qty),0),@WieghtNet=isnull(sum(WieghtNet),0)
FROM InMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and DayDate<''''''+dbo.ToStrDate(@FromDate)+''''''


SELECT DayDate,ID,CarNo,
SupplierId,dbo.GetSupplierName(SupplierId)SupplierName,
ItemId,dbo.GetItemName(ItemId)ItemName,
dbo.GetItemTypeName(ItemId) ItemTypeName,
Exchange,Qty,WieghtNet,WieghtNet2,Notes,
@Row Last_Row,@Qty Last_Qty,@WieghtNet Last_WieghtNet
into #tbl
FROM InMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''

select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetInMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetInMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetInMotion]
@GroupID varchar(1000),
@SupplierId varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as

declare @sql nvarchar(max)=''
SELECT *,
dbo.GetSupplierName(SupplierId)SupplierName,
dbo.GetItemName(ItemId)ItemName
into #tbl
FROM InMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and SupplierId in(''+@SupplierId+'')
and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetHalfTaxRPT]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetHalfTaxRPT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetHalfTaxRPT]
@GroupId varchar(1000),
@SupplierId varchar(1000),
@FromDate datetime,
@ToDate datetime
as
--Select S.Name SupplierName,G.Name GroupName,P.*
--From Suppliers S
--left join Purchase P on(P.SupplierId = S.Id)
--left join Groups G on(P.GroupId = G.Id)
--Where (P.GroupId = @GroupID or @GroupID = 0)
--and P.SupplierId = @SupplierId
--and P.DayDate between @FromDate and @ToDate

declare @sql nvarchar(max)=''
Select S.Name SupplierName,G.Name GroupName,P.*
into #tbl
From Suppliers S
left join Purchase P on(P.SupplierId = S.Id)
left join Groups G on(P.GroupId = G.Id)
where (''+@GroupID+''=0 or P.GroupID=''+@GroupID+'')
and P.SupplierId in(''+@SupplierId+'')
and P.DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetGroupName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGroupName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetGroupName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(isnull((select Name from Groups where Id=@Id),''''))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetGroupFlag]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGroupFlag]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[GetGroupFlag](@Id int)
returns int
as
begin
return isnull((select Flag from Groups where Id=@Id),0)
end' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetGetCustName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGetCustName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetGetCustName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(select Name from Customers where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemPurchasePrice]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemPurchasePrice]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetItemPurchasePrice](@Id int)
returns decimal(12,2)
--with encryption
as
begin
return(isnull((select PurchasePrice from Items where Id=@Id),0))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetItemName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(isnull((select Name from Items where Id=@Id),''''))
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetItemCardFreezing]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemCardFreezing]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetItemCardFreezing]
(
@RPTFlag int,
@StoreId int,
@ItemId int,
@Brand int,
@ToDate datetime
)
as

If @RPTFlag = 1
(
select M.StoreId MyStoreId,
St.Name MyStoreName,
M.DayDate M_DayDate,D.*,M.ToId,isnull(B.Name,''-'') BrandName,
(case
when M.Flag IN(2) then ToSp.Name
when M.Flag IN(5,6) then ToCs.Name 
else ''-'' end) ToName
from SalesFreezingDetails D
left join SalesFreezingMaster M on(D.Flag=M.Flag and D.StoreId=M.StoreId and D.InvoiceNo=M.InvoiceNo)
left join Stores St on(M.StoreId=St.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
left join Brands B on(D.Brand = B.Id)
where M.Flag IN(1,2,3,4)
and M.StoreId=@StoreId
and D.ItemId=@ItemId
and (D.Brand=@Brand or @Brand=0)
and M.DayDate<=@ToDate
)
Else
(
select M.StoreId MyStoreId,
St.Name MyStoreName,
M.DayDate M_DayDate,D.*,M.ToId,isnull(B.Name,''-'') BrandName,
(case
when M.Flag IN(2) then ToSp.Name
when M.Flag IN(5,6) then ToCs.Name 
else ''-'' end) ToName
from SalesFreezingDetails D
left join SalesFreezingMaster M on(D.Flag=M.Flag and D.StoreId=M.StoreId and D.InvoiceNo=M.InvoiceNo)
left join Stores St on(M.StoreId=St.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
left join Brands B on(D.Brand = B.Id)
where M.Flag IN(5,6,7)
and M.StoreId=@StoreId
and D.ItemId=@ItemId
and (D.Brand=@Brand or @Brand=0)
and M.DayDate<=@ToDate
)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanAll]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[GetLoanAll]
(
@ToDate datetime,
@FromDate datetime,
@SupplierId varchar(1000)
)
--with encryption
as


declare @sql nvarchar(max)=''
select M.DayDate InvDate,U.EnName UserFullName,
ToSp.Name ToName,
M.*,D.*
from SalesMaster2 M
left join SalesDetails2 D on(M.Flag=D.Flag and M.InvoiceNo=D.InvoiceNo)
left join Employees U on(M.UserName=U.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
where 
M.DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
and M.ToId in(''+@SupplierId+'')
''
print @sql
exec (@sql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoan1]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoan1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetLoan1]
(
@FromDate datetime,
@ToDate datetime,
@ItemId varchar(1000),
@SupplierId varchar(1000)
)
--with encryption
as

declare @sql nvarchar(max)=''
select M.DayDate InvDate,U.EnName UserFullName,
ToSp.Name ToName,
M.*,D.*
from SalesMaster2 M
left join SalesDetails2 D on(M.Flag=D.Flag and M.InvoiceNo=D.InvoiceNo)
left join Employees U on(M.UserName=U.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
where 
M.DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
and M.ToId in(''+@SupplierId+'')
and D.ItemId in(''+@ItemId+'')
''
print @sql
exec (@sql)' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemUnitName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemUnitName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetItemUnitName](@Id int,@UnitId int)
returns varchar(100)
--with encryption
as
begin
return(isnull((

select (case @UnitId when 0 then Unit when 1 then UnitSub when 2 then UnitSub2 else '''' end) 
From Items where Id=@Id
        
),''''))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetMainJobName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMainJobName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create  FUNCTION [dbo].[GetMainJobName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return isnull((select Name from MainJobs where Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetMainAccNoLink]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMainAccNoLink]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [dbo].[GetMainAccNoLink](@Link bigint,@Sub bigint)
returns varchar(100)
--with encryption
AS
BEGIN
	
	declare @TableName varchar(1000)=(select TableName from LinkFile where Id=@Link)
	
declare @AccNo varchar(100)
if @TableName=''Customers'' 
select @AccNo=AccNo from Customers where Id=@Sub
else if @TableName=''Suppliers'' 
select @AccNo=AccNo from Suppliers where Id=@Sub
else if @TableName=''Debits'' 
select @AccNo=AccNo from Debits where Id=@Sub
else if @TableName=''Credits'' 
select @AccNo=AccNo from Credits where Id=@Sub
else if @TableName=''Saves'' 
select @AccNo=AccNo from Saves where Id=@Sub
else if @TableName=''Banks'' 
select @AccNo=AccNo from Banks where Id=@Sub
else select @AccNo=''''

return isnull(@AccNo,'''')
END

' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetMainAccName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMainAccName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetMainAccName](@Id int)
returns varchar(1000)
--with encryption
as
begin
return isnull(
(select Name from Chart where Id=@Id)
,'''')
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanPone]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanPone]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create proc [dbo].[GetLoanPone]
(
@DayDate datetime,
@Flag int,
@InvoiceNo int
)
--with encryption
as

select M.DayDate InvDate,U.EnName UserFullName,
ToSp.Name ToName,
M.*,D.*
from SalesMaster2 M
left join SalesDetails2 D on(M.Flag=D.Flag and M.InvoiceNo=D.InvoiceNo)
left join Employees U on(M.UserName=U.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
where 
M.DayDate = @DayDate

and (M.Flag=@Flag)
and (M.InvoiceNo=@InvoiceNo)' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanItemCardBySup]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanItemCardBySup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetLoanItemCardBySup]
(
@ItemId varchar(1000),
@SupID varchar(1000),
@ToDate datetime
)
as

declare @sql nvarchar(max)=''
select
M.DayDate M_DayDate,D.*,M.ToId,
Tosp.Name ToName
into #tbl
from SalesDetails2 D
left join SalesMaster2 M on(D.Flag=M.Flag and D.InvoiceNo=M.InvoiceNo)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
where 
D.ItemId=''+@ItemID+''
and M.DayDate<=''''''+dbo.ToStrDate(@ToDate)+''''''
and ToSp.Id in(''+@SupID+'')

select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanItemCard]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanItemCard]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create proc [dbo].[GetLoanItemCard]
(
@ItemId int,
@ToDate datetime
)
as

select
M.DayDate M_DayDate,D.*,M.ToId,
Tosp.Name ToName
from SalesDetails2 D
left join SalesMaster2 M on(D.Flag=M.Flag and D.InvoiceNo=M.InvoiceNo)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
where
D.ItemId=@ItemId
and M.DayDate<=@ToDate' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetLoanItemBal]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanItemBal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
Create FUNCTION [dbo].[GetLoanItemBal]
(
@ItemId int,
@ToDate datetime
)
returns float
as
begin
return isnull((
select  sum(D.Qty*
(case when D.Flag in(1) then 1. else -1. end)
)
from SalesDetails2 D
left join SalesMaster2 M on(D.Flag=M.Flag and D.InvoiceNo=M.InvoiceNo)
where
D.ItemId=@ItemId
and M.DayDate<=@ToDate
),0)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanForSuppliers2]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanForSuppliers2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetLoanForSuppliers2]
(
@SupplierId varchar(1000),
@FromDate datetime,
@ToDate datetime
)

as

declare @sql nvarchar(max)=''

select Id,Name,DayDate,
sum(bal1) ''''صرف عهدة'''',
sum(bal2) ''''مرتجع صرف عهدة'''',
sum(bal3) ''''رد تأمين'''',
sum(bal4) ''''خصم عهدة من فاتورة المشتريات''''
from 
(
select Id,Name,DayDate,bal bal1,0 bal2,0 bal3,0 bal4
from Suppliers 
left join (
select ToId,DayDate,Isnull(SUM((Total - CashValue)),0) bal
From SalesMaster2
where Flag=1 and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+'''''' 
group by ToId,DayDate
)t on(t.ToId=Suppliers.Id)
where Id in(''+@SupplierId+'') and DayDate is not null and bal<>0

union all

select Id,Name,DayDate,0 bal1,bal bal2,0 bal3,0 bal4
from Suppliers 
left join (
select ToId,DayDate,Isnull(SUM((Total - CashValue)),0) bal
From SalesMaster2
where Flag=2 and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''  
group by ToId,DayDate
)t on(t.ToId=Suppliers.Id)
where Id in(''+@SupplierId+'') and DayDate is not null and bal<>0

union all

select Id,Name,DayDate,0 bal1,0 bal2,bal bal3,0 bal4
from Suppliers 
left join (
select SupplierId,DayDate,Isnull(SUM(Value),0) bal
From SupplierIncome
where DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+'''''' 
group by SupplierId,DayDate
)t on(t.SupplierId=Suppliers.Id)
where Id in(''+@SupplierId+'') and DayDate is not null and bal<>0

union all

select Id,Name,DayDate,0 bal1,0 bal2,0 bal3,bal bal4
from Suppliers 
left join
(
select SupplierId,DayDate,Isnull(SUM(Loan),0) bal
From Purchase
where DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+'''''' 
group by SupplierId,DayDate
)t on(t.SupplierId = Suppliers.Id)
where Id in(''+@SupplierId+'') and DayDate is not null and bal<>0

)Tbl
group by Id,Name,DayDate

''
print @sql
exec (@sql)' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanForSuppliers]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanForSuppliers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetLoanForSuppliers]
(
@SupplierId varchar(1000),
@FromDate datetime,
@ToDate datetime
)

as

declare @sql nvarchar(max)=''
select Id,Name,
dbo.GetSupplierLoanBal0(Id,dateadd(day,-1,''''''+dbo.ToStrDate(@FromDate)+'''''')) ''''رصيد أول المدة'''',
(
select Isnull(SUM((Total - CashValue)),0)
From SalesMaster2
where ToId=Suppliers.Id and Flag=1 and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+'''''' 
) ''''صرف عهدة''''
,
(
select Isnull(SUM((Total - CashValue)),0)
From SalesMaster2
where ToId=Suppliers.Id and Flag=2 and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''  
) ''''مرتجع صرف عهدة''''
,
(
select Isnull(SUM(Value),0)
From SupplierIncome
where SupplierId=Suppliers.Id and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+'''''' 
) ''''رد تأمين''''
,
(
select Isnull(SUM(Loan),0)
From Purchase
where SupplierId = Suppliers.Id and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+'''''' 
) ''''خصم عهدة من فاتورة المشتريات''''
,
dbo.GetSupplierLoanBal0(Id,''''''+dbo.ToStrDate(@ToDate)+'''''') ''''رصيد آخر المدة''''
from Suppliers
where Id in(''+@SupplierId+'')
''
print @sql
exec (@sql)' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetPaymentTypeName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPaymentTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetPaymentTypeName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return isnull((select Name from PaymentTypes where Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionPreWieghtNet]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPreWieghtNet]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetOutMotionPreWieghtNet]
(
@GroupID varchar(1000),
@CustomerId int,
@ItemId int,
@ToDate datetime
)
returns float
as
begin
return
isnull((
SELECT sum(WieghtNet)
FROM OutMotion
where (GroupID=@GroupID and ItemId =@ItemId)
and CustomerId =@CustomerId
and DayDate <=@ToDate
),0)
end' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionPreValue]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPreValue]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetOutMotionPreValue]
(
@GroupID varchar(1000),
@CustomerId int,
@ItemId int,
@ToDate datetime
)
returns float
as
begin
return
isnull((
SELECT sum(Value)
FROM OutMotion
where (GroupID=@GroupID and ItemId =@ItemId)
and CustomerId =@CustomerId
and DayDate <=@ToDate
),0)
end' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionPreQty]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPreQty]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetOutMotionPreQty]
(
@GroupID varchar(1000),
@CustomerId int,
@ItemId int,
@ToDate datetime
)
returns float
as
begin
return
isnull((
SELECT sum(Qty)
FROM OutMotion
where (GroupID=@GroupID and ItemId =@ItemId)
and CustomerId =@CustomerId
and DayDate <=@ToDate
),0)
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOutMotionPiscol]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionPiscol]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetOutMotionPiscol]
@GroupID varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as


declare @sql nvarchar(max)=''
declare @Row float,@Qty float,@WieghtNet float

SELECT @Qty=isnull(sum(Qty),0),@WieghtNet=isnull(sum(WieghtNet),0)
FROM OutMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and DayDate<''''''+dbo.ToStrDate(@FromDate)+''''''


SELECT @Row=COUNT(*)
FROM OutMotion
where GroupID=''+@GroupID+'' 
and DayDate<''''''+dbo.ToStrDate(@FromDate)+''''''


SELECT DayDate,ID,CarNo,
CustomerId,dbo.GetCustomerName(CustomerId)CustomerName,
ItemId,dbo.GetItemName(ItemId)ItemName,
dbo.GetItemTypeName(ItemId) ItemTypeName,
Qty,WieghtNet,Notes,
@Row Last_Row,@Qty Last_Qty,@WieghtNet Last_WieghtNet
into #tbl
FROM OutMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''

select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOutMotionMaxSerialNo]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionMaxSerialNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetOutMotionMaxSerialNo]
(
@GroupID int
)
returns int
as
begin
return
(
select isnull(MAX(SerialNo),0)+1
from OutMotion
where GroupID=@GroupID
)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOutMotionDay]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotionDay]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetOutMotionDay]
@GroupID varchar(1000),
@CustomerId varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as

declare @sql nvarchar(max)=''
SELECT *,
dbo.GetCustomerName(CustomerId)CustomerName,
dbo.GetItemName(ItemId)ItemName,
dbo.GetOutMotionPreQty(GroupID,CustomerId,ItemId,''''''+dbo.ToStrDate(@FromDate-1)+'''''')PreQty,
dbo.GetOutMotionPreWieghtNet(GroupID,CustomerId,ItemId,''''''+dbo.ToStrDate(@FromDate-1)+'''''')PreWieghtNet,
dbo.GetOutMotionPreValue(GroupID,CustomerId,ItemId,''''''+dbo.ToStrDate(@FromDate-1)+'''''')PreValue,
dbo.GetOutMotionPreQty(GroupID,CustomerId,ItemId,''''''+dbo.ToStrDate(@ToDate)+'''''')AfterQty,
dbo.GetOutMotionPreWieghtNet(GroupID,CustomerId,ItemId,''''''+dbo.ToStrDate(@ToDate)+'''''')AfterWieghtNet,
dbo.GetOutMotionPreValue(GroupID,CustomerId,ItemId,''''''+dbo.ToStrDate(@ToDate)+'''''')AfterValue
into #tbl
FROM OutMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and CustomerId in(''+@CustomerId+'')
and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOutMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetOutMotion]
@GroupID varchar(1000),
@CustomerId varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as

declare @sql nvarchar(max)=''
SELECT *,
dbo.GetCustomerName(CustomerId)CustomerName,
dbo.GetItemName(ItemId)ItemName
into #tbl
FROM OutMotion
where (''+@GroupID+''=0 or (GroupID=''+@GroupID+'' and ItemId in(''+@ItemId+'')))
and CustomerId in(''+@CustomerId+'')
and DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEnName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetEnName](@Arabic_Name nvarchar(100))
returns nvarchar(100)
--with encryption
as begin
declare @val nvarchar(100)

select top 1 @val=English_Name from Names where Arabic_Name=@Arabic_Name

select @val='''' where @val is null
return @val

end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetEmpName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmpName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetEmpName](@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return(select ArName from Employees where Id=@Id)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetMSG]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMSG]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetMSG]
@ToUser int
--with encryption
as
update Employees set LastConnect=GETDATE() where Id=@ToUser

declare @tbl table(Line int)
insert into @tbl 
select Line from Messages 
where ToUser=@ToUser and Done=0
order by Daydate

update Messages set Done=1 where Line in (select t.Line from @tbl t)

select FromUser,ToUser,Details,Daydate 
from Messages
where ToUser=@ToUser 
and Line in (select t.Line from @tbl t)
order by Daydate
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSafeAccNo]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSafeAccNo]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetSafeAccNo](@Id int)
returns int
--with encryption
as begin

return isnull((select AccNo from Saves where Id=@Id),0)

end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetReligionName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetReligionName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetReligionName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(select Name from Religions where Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetReligion]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetReligion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetReligion](@StudentId int)
returns nvarchar(100)
--with encryption
as
begin
return(select Name from Religions where Id=(select St.ReligionId from students St where St.Id=@StudentId))
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetPurchaseAll]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPurchaseAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[GetPurchaseAll]
@GroupID int,
@SupplierId varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as

declare @sql nvarchar(max)=''
select dbo.GetGroupName(P.GroupID)GroupName,
P.*,dbo.GetSupplierName(P.SupplierId)SupplierName,
M.ItemId ''''كود الصنف'''',dbo.GetItemName(M.ItemId) ''''اسم الصنف'''',
M.PriceOre,M.PriceFarza,
M.Qty ''''العدد'''',M.WieghtNetFinal ''''الوزن الصافى'''',M.ValueTotal ''''إجمالى القيمة''''

,M.ID M_ID
,M.DayDate M_DayDate
,M.CarNo M_CarNo
,M.Qty M_Qty
,M.QtyQre M_QtyQre
,M.PriceOre M_PriceOre
,M.ValueOre M_ValueOre
,M.QtyFarza M_QtyFarza
,M.PriceFarza M_PriceFarza
,M.ValueFarza M_ValueFarza
,M.ValueTotal M_ValueTotal into #tbl
from InMotion M
left join Purchase P on(M.GroupID=P.GroupId and M.PuchaseInvoiceNo=P.Id)
where (''+cast(@GroupID as varchar(10))+''=0 or P.GroupID=''+cast(@GroupID as varchar(10))+'')
and P.SupplierId in(''+@SupplierId+'')
and P.DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[PostPurchase]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PostPurchase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[PostPurchase]
@FromDate datetime,
@ToDate datetime,
@IsPosted int
as
update Purchase set IsPosted=@IsPosted
where DayDate between @FromDate and @ToDate

' 
END
GO
/****** Object:  StoredProcedure [dbo].[PostOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PostOutMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[PostOutMotion]
@FromDate datetime,
@ToDate datetime,
@IsPosted int
as
update OutMotion set IsPosted=@IsPosted
where DayDate between @FromDate and @ToDate
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[IsWeekHoliday]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IsWeekHoliday]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[IsWeekHoliday](@date datetime,@EmpId int)returns int
as
begin
return 
isnull((
select case
when DATENAME(WEEKDAY,@date)=''Saturday'' and Saturday=0 then 1 
when DATENAME(WEEKDAY,@date)=''Sunday'' and Sunday=0 then 1 
when DATENAME(WEEKDAY,@date)=''Monday'' and Monday=0 then 1 
when DATENAME(WEEKDAY,@date)=''Tuesday'' and Tuesday=0 then 1 
when DATENAME(WEEKDAY,@date)=''Wednesday'' and Wednesday=0 then 1 
when DATENAME(WEEKDAY,@date)=''Thursday'' and Thursday=0 then 1 
when DATENAME(WEEKDAY,@date)=''Friday'' and Friday=0 then 1 
else 0 end
from Employees where Id=@EmpId
),0)

end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetTypeName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetTypeName](@GroupId int,@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return isnull((select Name from Types where GroupId=@GroupId and Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetTownName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTownName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetTownName](@CityId int,@AreaId int,@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return(select Name from Towns where CityId=@CityId and AreaId=@AreaId and Id=@Id)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSupplierName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSupplierName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetSupplierName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(isnull((select Name from Suppliers where Id=@Id),''''))
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSupplierLoanBal0]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSupplierLoanBal0]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'Create function [dbo].[GetSupplierLoanBal0]
(
@SupplierId varchar(1000),
@ToDate datetime
)returns float
as
begin
return isnull((
select
(
select Isnull(SUM((Total - CashValue)),0)
From SalesMaster2
where ToId=@SupplierId and Flag=1 and DayDate<=@ToDate
)
-
(
select Isnull(SUM((Total - CashValue)),0)
From SalesMaster2
where ToId=@SupplierId and Flag=2 and DayDate<=@ToDate 
)
+
(
select Isnull(SUM(Value),0)
From SupplierIncome
where SupplierId=@SupplierId and DayDate<=@ToDate
)
-
(
select Isnull(SUM(Loan),0)
From Purchase
where SupplierId = @SupplierId and DayDate<=@ToDate
) ''خصم عهدة من فاتورة المشتريات''
),0)

end' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierItemPrice]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSupplierItemPrice]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetSupplierItemPrice]
@SupplierId int,
@ItemId int
as

if exists(SELECT * FROM SupplierItems where SupplierId=@SupplierId and ItemId=@ItemId)
SELECT isnull(PurchasePrice,0)PurchasePrice,isnull(Farza,0)Farza,isnull(Hafez,0)Hafez
FROM SupplierItems
where SupplierId=@SupplierId and ItemId=@ItemId
else 
SELECT isnull(PurchasePrice,0)PurchasePrice,isnull(PurchasePriceSub,0) Farza,0 Hafez 
FROM Items
where Id=@ItemId
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[getsum]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getsum]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[getsum]
(@Flag int,@StoreId int,@InvoiceNo int)
returns decimal(12,2)
--with encryption
as
begin
return
(
select 
(case when Sum (D.Value) < M.MinPerPerson * M.NoOfPersons 
then M.MinPerPerson * M.NoOfPersons
else Sum (D.Value) end)
--+M.ServiceValue+M.Taxvalue-M.DiscountValue
from SalesMaster M
left join SalesDetails D on(M.Flag=D.Flag and M.StoreId=D.StoreId and M.InvoiceNo=D.InvoiceNo)
where M.Flag=@Flag and M.StoreId=@StoreId and M.InvoiceNo=@InvoiceNo
group by M.Flag,M.StoreId,M.InvoiceNo,M.ServiceValue,M.Taxvalue,M.DiscountValue,M.MinPerPerson,M.NoOfPersons 
)
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSubJobName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubJobName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetSubJobName](@MainJobId int,@Id int)
returns nvarchar(1000)
--with encryption
as
begin
return isnull((select Name from SubJobs where MainJobId=@MainJobId and Id=@Id),'''')
end
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSubAccNameLink]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubAccNameLink]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[GetSubAccNameLink](@Link bigint,@Sub bigint)
returns varchar(1000)
--with encryption
AS
BEGIN
	
	declare @TableName varchar(1000)=(select TableName from LinkFile where Id=@Link)
	
declare @name varchar(1000)
if @TableName=''Customers'' 
select @name=Name from Customers where Id=@Sub
else if @TableName=''Suppliers'' 
select @name=Name from Suppliers where Id=@Sub
else if @TableName=''Debits'' 
select @name=Name from Debits where Id=@Sub
else if @TableName=''Credits'' 
select @name=Name from Credits where Id=@Sub
else if @TableName=''Saves'' 
select @name=Name from Saves where Id=@Sub
else if @TableName=''Banks'' 
select @name=Name from Banks where Id=@Sub
else if @TableName=''Sellers'' 
select @name=Name from Sellers where Id=@Sub
else select @name=''''

return isnull(@name,'''')
END

' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSubAccName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSubAccName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetSubAccName](@Main int,@Sub int)
returns varchar(1000)
--with encryption
AS
BEGIN
	
	declare @TableName varchar(1000)=(select TableName from LinkFile where Id=(select C.LinkFile from Chart C where C.Id=@Main))
declare @name varchar(1000)
if @TableName=''Customers'' 
select @name=Name from Customers where AccNo=@Main and Id=@Sub
else if @TableName=''Suppliers'' 
select @name=Name from Suppliers where AccNo=@Main and Id=@Sub
else if @TableName=''Debits'' 
select @name=Name from Debits where AccNo=@Main and Id=@Sub
else if @TableName=''Credits'' 
select @name=Name from Credits where AccNo=@Main and Id=@Sub
else if @TableName=''Saves'' 
select @name=Name from Saves where AccNo=@Main and Id=@Sub
else if @TableName=''Banks'' 
select @name=Name from Banks where AccNo=@Main and Id=@Sub
else select @name=''''

return isnull(@name,'''')
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LA]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[LA]
as
update LastAlter set LastAlter=GETDATE()
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSalesMaster2]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesMaster2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetSalesMaster2]
@SupplierId varchar(1000),
@ItemId varchar(1000),
@FromDate datetime,
@ToDate datetime
as

declare @sql nvarchar(max)=''
SELECT M.DayDate InvDate,
M.ToId,Sp.Name ToName,
M.Notes,M.Total,M.CashValue,M.DocNo,D.*,
dbo.GetSupplierName(ToId)SupplierName
into #tbl
FROM SalesMaster2 M
left join SalesDetails2 D on(M.InvoiceNo=D.InvoiceNo and M.Flag=D.Flag)
left join Suppliers Sp on(M.ToId=Sp.Id)
where ItemId in(''+@ItemId+'')
and M.ToId in(''+@SupplierId+'')
and M.DayDate between ''''''+dbo.ToStrDate(@FromDate)+'''''' and ''''''+dbo.ToStrDate(@ToDate)+''''''
select * from #tbl
drop table #tbl
''
print @sql
exec (@sql)
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetSalesItems]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesItems]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetSalesItems](@Flag int,@StoreId int,@InvoiceNo int)
returns varchar(1000)
as
begin
declare @tbl table(Name varchar(100),Line int identity(1,1))
insert @tbl
select ItemName from SalesDetails where Flag=@Flag and StoreId=@StoreId and InvoiceNo=@InvoiceNo

declare @str varchar(1000)=''''
declare @x int=1,@max int=(select MAX(Line) from @tbl)
while @x<=@max
begin
select @str+=Name+'' - '' from @tbl where Line=@x
set @x+=1
end

if @str='''' return ''''
return SUBSTRING(@str,1,LEN(@str)-2)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSalesFreezingRPT]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesFreezingRPT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[GetSalesFreezingRPT]
(
@FromDate datetime,
@ToDate datetime,
@Flag int,
@StoreId int,
@FromInvoiceNo int,
@ToInvoiceNo int,
@RPTFlag1 int=0,
@RPTFlag2 int=0,
@ToId int=0
)
--with encryption
as

select M.DayDate InvDate,S.Logo,St.Name StoreName
,U.EnName UserFullName,
(case 
when M.Flag = 2 then ToSp.Name
when M.Flag IN(5,6) then ToCs.Name end) ToName,
M.*,D.*,isnull(B.Name,''-'') BrandName,
''''SizesDetailsName,
''''ColorsDetailsName
from SalesFreezingDetails D
left join SalesFreezingMaster M on(M.Flag=D.Flag and M.StoreId=D.StoreId and M.InvoiceNo=D.InvoiceNo)
left join Brands B on(D.Brand=B.Id)
left join Statics S on(1=1)
left join Stores St on(M.StoreId=St.Id)
left join Employees U on(M.UserName=U.Id)
left join Stores ToSt on(M.ToId=ToSt.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
where 
M.DayDate between @FromDate and @ToDate

and (M.Flag=@Flag or @Flag=0)
and (M.StoreId=@StoreId or @StoreId=0)
and (M.InvoiceNo>=@FromInvoiceNo or @FromInvoiceNo=0)
and (M.InvoiceNo<=@ToInvoiceNo or @ToInvoiceNo=0)
and (M.ToId=@ToId or @ToId=0)

and (
			
			@RPTFlag1=0 or
			((@RPTFlag1=1 and M.Flag between 1  and 4  and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
			((@RPTFlag1=2 and M.Flag between 5  and 7 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) )			
	)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSalesFreezing]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesFreezing]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetSalesFreezing]
(
@FromDate datetime,
@ToDate datetime,
@Flag int,
@StoreId int,
@FromInvoiceNo int,
@ToInvoiceNo int,
@RPTFlag1 int=0,
@RPTFlag2 int=0
)
--with encryption
as

select M.DayDate InvDate,St.Name StoreName,U.EnName UserFullName,
(case 
when M.Flag IN(2) then ToSp.Name
when M.Flag IN(5,6) then ToCs.Name end) ToName,
M.*,D.*,isnull(B.Name,''-'') BrandName
from SalesFreezingMaster M
left join SalesFreezingDetails D on(M.Flag=D.Flag and M.StoreId=D.StoreId and M.InvoiceNo=D.InvoiceNo)
left join Stores St on(M.StoreId=St.Id)
left join Employees U on(M.UserName=U.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
left join Brands B on(B.Id=D.Brand)
where 
M.DayDate between @FromDate and @ToDate

and (M.Flag=@Flag or @Flag=0)
and (M.StoreId=@StoreId or @StoreId=0)
and (M.InvoiceNo>=@FromInvoiceNo or @FromInvoiceNo=0)
and (M.InvoiceNo<=@ToInvoiceNo or @ToInvoiceNo=0)

and (
	((@RPTFlag1=1 and M.Flag between 1 and 4 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
	((@RPTFlag1=2 and M.Flag between 5 and 7 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) )
	)


' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreFreezingItemBalQty]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreFreezingItemBalQty]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create FUNCTION [dbo].[GetStoreFreezingItemBalQty]
(
@RPTFlag int,
@StoreId int,
@ItemId int,
@Brand int,
@ToDate datetime
)
returns float
as
begin
return isnull((
select  round(sum(D.Qty*
(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)
),10)
from SalesFreezingDetails D
left join SalesFreezingMaster M on(D.Flag=M.Flag and D.StoreId=M.StoreId and D.InvoiceNo=M.InvoiceNo)
where M.StoreId=@StoreId
and D.ItemId=@ItemId
and (D.Brand=@Brand or @Brand=0)
and M.DayDate<=@ToDate
and (
		(@RPTFlag = 1 and D.Flag in (1,2,3,4))or
		(@RPTFlag = 2 and D.Flag in (5,6,7))
	)
),0)
end



' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreFreezingItemBal]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreFreezingItemBal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[GetStoreFreezingItemBal]
(
@RPTFlag int,
@StoreId int,
@ItemId int,
@Brand int,
@ToDate datetime
)
returns float
as
begin
return isnull((
select  round(sum(D.TotalWeight*
(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)
),10)
from SalesFreezingDetails D
left join SalesFreezingMaster M on(D.Flag=M.Flag and D.StoreId=M.StoreId and D.InvoiceNo=M.InvoiceNo)
where M.StoreId=@StoreId
and D.ItemId=@ItemId
and (D.Brand=@Brand or @Brand=0)
and M.DayDate<=@ToDate
and (
		(@RPTFlag = 1 and D.Flag in (1,2,3,4))or
		(@RPTFlag = 2 and D.Flag in (5,6,7))
	)
),0)
end



' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadInMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadInMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[LoadInMotion]
@GroupID int,
@SupplierId MyId readonly,
@ItemId MyId readonly,
@FromDate datetime,
@ToDate datetime
as

SELECT cast(0 as bit) ''تحديد'',ID,dbo.ToStrDate(DayDate) DayDate,CarNo,
Exchange,QtyDed,QtyDedPerc,QtyPerc,
QtyQre,PriceOre,ValueOre,
QtyFarza,PriceFarza,ValueFarza
FROM InMotion
where GroupID=@GroupID
and SupplierId in(select * from @SupplierId)
and ItemId in(select * from @ItemId)
and PuchaseInvoiceNo=0
and DayDate between @FromDate and @ToDate

union 
select cast(1 as bit),null,null,null,null,null,null,null,null,null,null,null,null,null

order by ''تحديد'',DayDate,ID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadGroupsPackaged]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroupsPackaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[LoadGroupsPackaged]

as
Select Id,Name From GroupsPackaged
where exists
(
select ItemsPackaged.Id from ItemsPackaged where ItemsPackaged.GroupId = GroupsPackaged.Id
)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadGroupsFinal]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroupsFinal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[LoadGroupsFinal]

as
Select Id,Name From GroupsFinal 
where exists
(
select ItemsFinal.Id from ItemsFinal where ItemsFinal.GroupId = GroupsFinal.Id
)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadGroups2]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroups2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[LoadGroups2]
(
@Form int=0
)
--with encryption
as
Select Id,Name,Image From Groups 
where Flag=0 and 
exists
(
select Items.Id from Items where Items.GroupId=Groups.Id
and (	1=1 or
		(Items.IsTables=1 and @Form=1) or
        (Items.IsTakeAway=1 and @Form=2) or
        (Items.IsDelivary=1 and @Form=3) or
        @Form=0
	)
)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadGroups]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadGroups]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[LoadGroups]
--with encryption
as
Select Id,Name,Image From Groups 
--where Flag=1
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetStoreItemBal]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreItemBal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[GetStoreItemBal]
(
@StoreId int,
@ItemId int,
@ColorId int,
@SizeId int,
@ToDate datetime
)
returns float
as
begin
return isnull((
select  sum(D.Qty*D.UnitQty*
(case when D.Flag in(1,2,3,9,12,14,16) or (D.Flag=8 and M.ToId=@StoreId) then 1. else -1. end)
)
from SalesDetails D
left join SalesMaster M on(D.Flag=M.Flag and D.StoreId=M.StoreId and D.InvoiceNo=M.InvoiceNo)
where (M.StoreId=@StoreId or (M.ToId=@StoreId and M.Flag=8))
and D.ItemId=@ItemId
and (D.Color=@ColorId or @ColorId=0)
and (D.Size=@SizeId or @SizeId=0)
and M.DayDate<=@ToDate
and isnull(M.Temp,0)=0
),0)
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadTypesPackaged]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypesPackaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[LoadTypesPackaged]
@GroupId int

as
Select Id,Name From TypesPackaged
where GroupId=@GroupId

' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadTypesFinal]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypesFinal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[LoadTypesFinal]
@GroupId int

as
Select Id,Name From TypesFinal 
where GroupId=@GroupId

' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadTypes2]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypes2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[LoadTypes2]
(
@GroupId int,
@Form int=0
)
--with encryption
as
Select Id,Name,Image From Types 
where GroupId=@GroupId and 
exists
(
select Items.Id from Items 
where Items.GroupId=Types.GroupId
and Items.TypeId=Types.Id
and (	1=1 or
		(Items.IsTables=1 and @Form=1) or
        (Items.IsTakeAway=1 and @Form=2) or
        (Items.IsDelivary=1 and @Form=3) or
        @Form=0
	)
)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadTypes]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadTypes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[LoadTypes]
@GroupId int
--with encryption
as
Select Id,Name,Image From Types 
--where GroupId=@GroupId
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LoadOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadOutMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[LoadOutMotion]
@GroupID int,
@CustomerId MyId readonly,
@ItemId MyId readonly,
@FromDate datetime,
@ToDate datetime,
@State int
as

SELECT cast(0 as bit) ''تحديد'',ID,dbo.ToStrDate(DayDate) DayDate,CarNo,TrillaNo,
dbo.GetCustName(CustomerId)CustName,
dbo.GetItemName(ItemId)ItemName,
Qty,WieghtNet,Price,Value
FROM OutMotion
where GroupID=@GroupID
and CustomerId in(select * from @CustomerId)
and ItemId in(select * from @ItemId)
and (
	(SerialNo=0 and [State]=1) or /*عمولة*/
	([State]=2) or /*نقدى*/
	([State]=3) /*أجل*/
	)
and DayDate between @FromDate and @ToDate
and ([State] = @State or @State = 0)

union 
select cast(1 as bit),null,null,null,null,null,null,null,null,null,null

order by ''تحديد'',DayDate,ID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetStoreBal]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreBal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetStoreBal]
(
@GroupId int,
@TypeId int,
@StoreId int,
@ToDate datetime
)
as
select St.Id MyStoreId,St.Name StoreName,
It.*,dbo.GetStoreItemBal(St.Id,it.Id,0,0,@ToDate) CurrentBal
from Items It
left join Stores St on(St.Id=@StoreId or @StoreId=0)
where (It.GroupId=@GroupId or @GroupId=0)
and (It.TypeId=@TypeId or @TypeId=0)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSales]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetSales]
(
@FromDate datetime,
@ToDate datetime,
@Shift int,
@Flag int,
@StoreId int,
@FromInvoiceNo int,
@ToInvoiceNo int,
@NewItemsOnly int=0,
@RPTFlag1 int=0,
@RPTFlag2 int=0,
@PrintingGroupId int=0
)
--with encryption
as

--ماتنساش الفرع المحول إليه

select M.DayDate InvDate,M.Shift InvShift,S.Logo,SF.Name ShiftName,St.Name StoreName,W.EnName WaiterName
,U.EnName UserFullName,C.EnName CashierName,Dv.EnName DelivarymanName,
(case 
when M.Flag IN(8) then ToSt.Name
when M.Flag IN(9,10) then ToSp.Name
when M.Flag between 11 and 16 then ToCs.Name end) ToName,'''' TableName,
ToCs.Address,ToCs.Mobile,ToCs.Tel,
M.*,D.*,dbo.GetItemUnitName(D.ItemId,D.UnitId)UnitName,
dbo.GetAccName(AccNo1)AccName1,
dbo.GetAccName(AccNo2)AccName2,
dbo.GetAccName(AccNo3)AccName3,
dbo.GetAccName(AccNo4)AccName4
from SalesMaster M
left join SalesDetails D on(M.Flag=D.Flag and M.StoreId=D.StoreId and M.InvoiceNo=D.InvoiceNo)
left join Items It on(D.ItemId=It.Id)
left join Statics S on(1=1)
left join Shifts SF on(M.Shift=SF.Id)
left join Stores St on(M.StoreId=St.Id)
left join Employees U on(M.UserName=U.Id)
left join Employees C on(M.Cashier=C.Id)
left join Employees W on(M.WaiterId=W.Id)
left join Employees Dv on(M.DeliverymanId=Dv.Id)
left join Stores ToSt on(M.ToId=ToSt.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
where 
M.DayDate between @FromDate and @ToDate
and (M.Shift=@Shift or @Shift=0)

and (M.Flag=@Flag or @Flag=0)
and (M.StoreId=@StoreId or @StoreId=0)
and (M.InvoiceNo>=@FromInvoiceNo or @FromInvoiceNo=0)
and (M.InvoiceNo<=@ToInvoiceNo or @ToInvoiceNo=0)

and (D.IsPrinted=0 or @NewItemsOnly=0)
and (It.PrintingGroupId=@PrintingGroupId or @PrintingGroupId=0)

and (
	@RPTFlag1=0 or
	((@RPTFlag1=1 and M.Flag between 1  and 8  and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
	((@RPTFlag1=2 and M.Flag between 9  and 10 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
	((@RPTFlag1=3 and M.Flag between 11 and 16 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
	((@RPTFlag1=4 and M.Flag between 17 and 17 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) )
	)




if @NewItemsOnly=1
update D set IsPrinted=1
from SalesDetails D
left join Items It on(D.ItemId=It.Id)

where  (D.Flag=@Flag or @Flag=0)
and (D.StoreId=@StoreId or @StoreId=0)
and (D.InvoiceNo>=@FromInvoiceNo or @FromInvoiceNo=0)
and (D.InvoiceNo<=@ToInvoiceNo or @ToInvoiceNo=0)
and (It.PrintingGroupId=@PrintingGroupId or @PrintingGroupId=0)
and (D.IsPrinted=0 or @NewItemsOnly=0)

------===================================================================
if @NewItemsOnly=0
update SalesMaster set IsCashierPrinted=1
where  (Flag=@Flag or @Flag=0)
and (StoreId=@StoreId or @StoreId=0)
and (InvoiceNo>=@FromInvoiceNo or @FromInvoiceNo=0)
and (InvoiceNo<=@ToInvoiceNo or @ToInvoiceNo=0)

and (IsCashierPrinted=0 or @NewItemsOnly=0)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetStoreStoreBal]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStoreStoreBal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetStoreStoreBal]
(
@StoreGroupId int,
@StoreTypeId int,
@StoreId int,
@ToDate datetime
)
as
select St.Id MyStoreId,St.Name StoreName,
It.*,dbo.GetStoreItemBal(St.Id,it.Id,0,0,@ToDate) CurrentBal
from StoreItems It
left join Stores St on(St.Id=@StoreId or @StoreId=0)
where (It.StoreGroupId=@StoreGroupId or @StoreGroupId=0)
and (It.StoreTypeId=@StoreTypeId or @StoreTypeId=0)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetPurchase]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPurchase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetPurchase]
@InvoiceNo int,
@GroupID int
as

select dbo.GetGroupName(P.GroupID)GroupName,
P.*,dbo.GetSupplierName(P.SupplierId)SupplierName,
M.ItemId ''كود الصنف'',dbo.GetItemName(M.ItemId) ''اسم الصنف'',
M.PriceOre,M.PriceFarza,
M.Qty ''العدد'',M.WieghtNetFinal ''الوزن الصافى'',M.ValueTotal ''إجمالى القيمة'' 

,M.ID M_ID
,M.DayDate M_DayDate
,M.CarNo M_CarNo
,M.Qty M_Qty
,M.QtyQre M_QtyQre
,M.PriceOre M_PriceOre
,M.ValueOre M_ValueOre
,M.QtyFarza M_QtyFarza
,M.PriceFarza M_PriceFarza
,M.ValueFarza M_ValueFarza
,M.ValueTotal M_ValueTotal
from Purchase P
left join InMotion M on(M.GroupID=P.GroupId and M.PuchaseInvoiceNo=P.Id)
where P.GroupID=@GroupID
and	P.Id=@InvoiceNo
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetMessages]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMessages]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetMessages]
(
@Emp int,
@Emp2 int,
@FromDate datetime,
@ToDate datetime
)
--with encryption
as
select FromUser,dbo.GetEmpName(FromUser) ''FromUserName'',
ToUser,dbo.GetEmpName(ToUser) ''ToUserName'',
Details,Daydate,
(case when FromUser>ToUser then FromUser else ToUser end) ''GroupBy'',
(case when FromUser>ToUser then ToUser else FromUser end) ''GroupBy2''
from Messages
where (FromUser=@Emp or @Emp=0)
and (ToUser=@Emp2 or @Emp2=0)
and Daydate between @FromDate and @ToDate+1
order by Daydate
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetNewPurchase]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetNewPurchase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetNewPurchase]
@InvoiceNo int,
@GroupID int,
@SupplierId int,
@DayDate datetime,
@All int,
@ItemId MyId readonly
as
select CAST((case when PuchaseInvoiceNo=@InvoiceNo then 1 else 0 end) as bit) ''تحديد'',ID ''المسلسل'',dbo.ToStrDate(DayDate) ''التاريخ'',ItemId ''كود الصنف'',dbo.GetItemName(ItemId) ''اسم الصنف'',
Qty ''العدد'',WieghtNetFinal ''الوزن الصافى'',

QtyQre ''الكمية خام'',PriceOre ''سعر الخام'',ValueOre ''قيمة الخام'' ,
QtyFarza ''الكمية فرزة'',PriceFarza ''سعر الفرزة'',ValueFarza ''قيمة الفرزة'' ,

ValueTotal ''إجمالى القيمة'' 
from InMotion
where GroupID=@GroupID

and (
		PuchaseInvoiceNo=@InvoiceNo or 
		(
			SupplierId=@SupplierId and 
			ItemId in(select * from @ItemId) and 
			DayDate<=@DayDate and
			PuchaseInvoiceNo=0 and 
			@All=1
		)
	)

order by PuchaseInvoiceNo desc,DayDate
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetNewCustomerSales]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetNewCustomerSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetNewCustomerSales]
@InvoiceNo int,
@GroupID int,
@CustomerId int,
@DayDate datetime,
@All int,
@ItemId MyId readonly
as
select CAST((case when CustomerSalesInvoiceNo=@InvoiceNo then 1 else 0 end) as bit) ''تحديد'',
ID ''المسلسل'',dbo.ToStrDate(DayDate) ''التاريخ'',ItemId ''كود الصنف'',dbo.GetItemName(ItemId) ''اسم الصنف'',
Qty ''العدد'',WieghtNet ''الوزن الصافى'',Price ''السعر'' ,Value ''إجمالى القيمة'' 
from OutMotion
where GroupID=@GroupID

and (
		CustomerSalesInvoiceNo=@InvoiceNo or 
		(
			CustomerId=@CustomerId and 
			ItemId in(select * from @ItemId) and 
			DayDate<=@DayDate and
			CustomerSalesInvoiceNo=0 and 
			@All=1
		)
	)

order by CustomerSalesInvoiceNo desc,DayDate
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetLoanBal]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLoanBal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[GetLoanBal]
(
@ToDate datetime
)
as
select
It.*,dbo.GetLoanItemBal(Id ,@ToDate) CurrentBal
from Items2 It
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetItemTypeName]    Script Date: 11/09/2014 08:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemTypeName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[GetItemTypeName](@Id int)
returns nvarchar(100)
--with encryption
as
begin
return(isnull((select dbo.GetTypeName(GroupId,TypeId) from Items where Id=@Id),''''))
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetItemsSales]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemsSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetItemsSales]
(
@FromDate datetime,
@ToDate datetime,
@Shift int,
@Flag int,
@StoreId int,
@ItemId int=0,
@GroupId int=0,
@TypeId int=0
)
--with encryption
as

select M.DayDate InvDate,M.Shift InvShift,SF.Name ShiftName,St.Name StoreName,W.EnName WaiterName
,U.EnName UserFullName,C.EnName CashierName,
(case 
when M.Flag IN(8) then ToSt.Name
when M.Flag IN(9,10) then ToSp.Name
when M.Flag IN(15,16) then ToCs.Name end) ToName,''''TableName,
M.*,D.*,dbo.GetItemUnitName(D.ItemId,D.UnitId)UnitName,
dbo.GetAccName(AccNo1)AccName1,
dbo.GetAccName(AccNo2)AccName2,
dbo.GetAccName(AccNo3)AccName3,
dbo.GetAccName(AccNo4)AccName4
from SalesMaster M
left join SalesDetails D on(M.Flag=D.Flag and M.StoreId=D.StoreId and M.InvoiceNo=D.InvoiceNo)
left join Items It on(D.ItemId=It.Id)
left join Shifts SF on(M.Shift=SF.Id)
left join Stores St on(M.StoreId=St.Id)
left join Employees U on(M.UserName=U.Id)
left join Employees C on(M.Cashier=C.Id)
left join Employees W on(M.WaiterId=W.Id)
left join Stores ToSt on(M.ToId=ToSt.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
where 
M.DayDate between @FromDate and @ToDate
and (M.Shift=@Shift or @Shift=0)
and (It.GroupId=@GroupId or @GroupId=0)
and (It.TypeId=@TypeId or @TypeId=0)
and (M.StoreId=@StoreId or @StoreId=0)
and (M.Flag between 11 and 17 or M.Flag=@Flag)
and (D.ItemId=@ItemId or @ItemId=0)
and isnull(M.Temp,0)=0
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetItems]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItems]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetItems]
@GroupId int,
@TypeId int,
@FromId int,
@ToId int
as
select *,
dbo.GetGroupName(GroupId)GroupName,
dbo.GetTypeName(GroupId,TypeId)TypeName
from items
where (GroupId=@GroupId or @GroupId=0)
and (TypeId=@TypeId or @TypeId=0)
and (Id>=@FromId or @FromId=0)
and (Id<=@ToId or @ToId=0)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetItemCard]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetItemCard]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetItemCard]
(
@StoreId int,
@ItemId int,
@ColorId int,
@SizeId int,
@ToDate datetime
)
as

select (case when M.StoreId=@StoreId then M.StoreId else M.ToId end) MyStoreId,
(case when M.StoreId=@StoreId then St.Name else tost.Name end) MyStoreName,
M.DayDate M_DayDate,M.Shift M_Shift,D.*,M.ToId,
dbo.GetItemUnitName(D.ItemId,0)MainUnitName,
dbo.GetItemUnitName(D.ItemId,D.UnitId)UnitName,
(case 
when M.Flag IN(8) then (case when M.ToId=@StoreId then St.Name else ToSt.Name end)
when M.Flag IN(9,10) then ToSp.Name
when M.Flag between 11 and 16 then ToCs.Name 
else ''-'' end) ToName
from SalesDetails D
left join SalesMaster M on(D.Flag=M.Flag and D.StoreId=M.StoreId and D.InvoiceNo=M.InvoiceNo)
left join Stores St on(M.StoreId=St.Id)
left join Stores ToSt on(M.ToId=ToSt.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
where (M.StoreId=@StoreId or (M.ToId=@StoreId and M.Flag=8))
and D.ItemId=@ItemId
and (D.Color=@ColorId or @ColorId=0)
and (D.Size=@SizeId or @SizeId=0)
and M.DayDate<=@ToDate
and isnull(M.Temp,0)=0
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetFreezingStoreBal]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetFreezingStoreBal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetFreezingStoreBal]
(
@RPTFlag int,
@GroupId int,
@TypeId int,
@StoreId int,
@Brand int,
@ToDate datetime
)
as
If @RPTFlag = 1
(
--تحت التعبئة (Packaged)
select St.Id MyStoreId,St.Name StoreName,'''' BrandName,
It.*,
dbo.GetStoreFreezingItemBalQty(@RPTFlag,St.Id,it.Id,0,@ToDate) CurrentBalQty,
dbo.GetStoreFreezingItemBal(@RPTFlag,St.Id,it.Id,0,@ToDate) CurrentBal
from ItemsPackaged It
left join Stores St on(St.Id=@StoreId or @StoreId=0)
where (It.GroupId=@GroupId or @GroupId=0)
and (It.TypeId=@TypeId or @TypeId=0)
)
Else 
(
--منتج نهائي (Final)
select St.Id MyStoreId,St.Name StoreName,Br.Name BrandName,
It.*,
dbo.GetStoreFreezingItemBalQty(@RPTFlag,St.Id,it.Id,Br.Id,@ToDate) CurrentBalQty,
dbo.GetStoreFreezingItemBal(@RPTFlag,St.Id,it.Id,Br.Id,@ToDate) CurrentBal
from ItemsFinal It
left join Stores St on(St.Id=@StoreId or @StoreId=0)
left join Brands Br on(Br.Id=@Brand or @Brand=0)
where (It.GroupId=@GroupId or @GroupId=0)
and (It.TypeId=@TypeId or @TypeId=0)
)

' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[Bal0]    Script Date: 11/09/2014 08:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bal0]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[Bal0]
(
@MainAccNo int,
@SubAccNo int,
@FromDate datetime
)
returns float
--with encryption
as
begin

declare @Flag bigint=0

declare @Detailed bigint=0

declare @S_AccNo int,@R_S_AccNo int,@P_AccNo int,@R_P_AccNo int
select top 1 @S_AccNo=S_AccNo,@R_S_AccNo=R_S_AccNo,@P_AccNo=P_AccNo,@R_P_AccNo=R_P_AccNo from Statics

declare @LinkFile int,@MotionType int
select @LinkFile=LinkFile,@MotionType=MotionType from Chart where Id=@MainAccNo
select @LinkFile=ISNULL(@LinkFile,0)

declare @TableName varchar(100)
select @TableName=TableName from LinkFile where Id=@LinkFile
select @TableName=ISNULL(@TableName,'''')

declare @Db decimal(18,2)=0,@Cr decimal(18,2)=0
if @MotionType=0 select @Db=1. 
if @MotionType=1 select @Cr=1.

declare @MotionValue float
if @MotionType=0 select @MotionValue=1. 
if @MotionType=1 select @MotionValue=-1.

declare @Bal0 decimal(18,2)=dbo.GetBal0(@TableName,@MainAccNo,@SubAccNo)

declare @tbl table(Db float,Cr float)
insert @tbl

select 
@Bal0*(case when @Bal0>0 then @Db else @Cr*-1. end) Db,
@Bal0*(case when @Bal0>0 then @Cr else @Db*-1. end) Cr

union all

select 
Value Db,
0 Cr
from OutMotion
where DayDate<=@FromDate
and @LinkFile=1
and CustomerId=@SubAccNo

union all

select 
(Case when Flag in(1,3) then 0 else 1. end)*Value Db,
(Case when Flag in(1,3) then 1. else 0 end)*Value Cr
from BankCash
where DayDate <=@FromDate  
and MainAccNo=@MainAccNo 
and (SubAccNo=@SubAccNo or @SubAccNo=0 or SubAccNo=0)
and Canceled=0

union all

select 
(Case when Flag in(1,3) then 1. else 0 end)*Value Db,
(Case when Flag in(1,3) then 0 else 1. end)*Value Cr
from BankCash
where DayDate <=@FromDate  
and (
	(dbo.GetSafeAccNo(BankId)=@MainAccNo and Flag in(1,2) and @LinkFile=5) or
	(dbo.GetBankAccNo(BankId)=@MainAccNo and Flag in(3,4) and @LinkFile=6)
	)
and BankId=@SubAccNo
and Canceled=0

--===========================================================================المبيعات والمشتريات

union all

select 
0 Db,
ValueTotal  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
Dis1Value Db,
0  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
0 Db,
Add1Value  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
BxValue Db,
0 Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
0 Db,
CommitionValue  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
CommitionDed Db,
0 Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
DedCarryValue Db,
0  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
Loan Db,
0 Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
Ded1Vlue Db,
0  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
Ded2Vlue Db,
0  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
0 Db,
Add1Vlue Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


union all

select 
0 Db,
Add2Vlue  Cr
from Purchase
where DayDate <=@FromDate  
and @LinkFile=2
and SupplierId=@SubAccNo


--==============================================================================



--===========================================================================
--===========================================================================

--===========================================================================المبيعات والمشتريات

union all

select 
(case when Flag in(11,13,15,10,21,23) then TotalAfterDiscount else 0 end) Db,
(case when Flag in(12,14,16,9,22,24) then TotalAfterDiscount else 0 end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and @Detailed=0
--===========================================================================
union all

select 
(case when D.Flag in(11,13,15,10,21,23) then Dt.Value else 0 end) Db,
(case when D.Flag in(12,14,16,9,22,24) then Dt.Value else 0 end) Cr
from SalesMaster D
left join SalesDetails Dt on(D.StoreId=dt.StoreId and D.Flag=dt.Flag and D.InvoiceNo=Dt.InvoiceNo )
where D.DayDate <=@FromDate  
and ToId=@SubAccNo
and (
	(@LinkFile=1 and D.Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and D.Flag in(9,10)) 
	)
and Dt.Value<>0
and @Detailed=1
--===========================================================================
union all

select 
(case when (Flag in(11,13,15,10,21,23) and AccType1=2) or (Flag in(12,14,16,9,22,24) and AccType1=1) then Val1 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType1=1) or (Flag in(12,14,16,9,22,24) and AccType1=2) then Val1 else 0 end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val1<>0
and @Detailed=1
--===========================================================================
union all

select 
(case when (Flag in(11,13,15,10,21,23) and AccType2=2) or (Flag in(12,14,16,9,22,24) and AccType2=1) then Val2 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType2=1) or (Flag in(12,14,16,9,22,24) and AccType2=2) then Val2 else 0 end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val2<>0
and @Detailed=1
--===========================================================================
union all

select 
(case when (Flag in(11,13,15,10,21,23) and AccType3=2) or (Flag in(12,14,16,9,22,24) and AccType3=1) then Val3 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType3=1) or (Flag in(12,14,16,9,22,24) and AccType3=2) then Val3 else 0 end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val3<>0
and @Detailed=1
--===========================================================================
union all

select 
(case when (Flag in(11,13,15,10,21,23) and AccType4=2) or (Flag in(12,14,16,9,22,24) and AccType4=1) then Val4 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType4=1) or (Flag in(12,14,16,9,22,24) and AccType4=2) then Val4 else 0 end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val4<>0
and @Detailed=1
--===========================================================================


--===========================================================================النقدى والفيزا

union all

select 
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when ToId=@SubAccNo and @LinkFile=1 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ((ToId=@SubAccNo and @LinkFile=1) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag in(11,13,15,21,23)
and PaymentType in(1,2,3,5)

union all

select 
(Case when ToId=@SubAccNo and @LinkFile=1 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ((ToId=@SubAccNo and @LinkFile=1) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag in(12,14,16,22,24)
and PaymentType in(1,2,3,5)

union all

select 
(Case when ToId=@SubAccNo and @LinkFile=2 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ((ToId=@SubAccNo and @LinkFile=2) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag =9
and PaymentType in(1,2,3,5)

union all

select 
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when ToId=@SubAccNo and @LinkFile=2 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr
from SalesMaster
where DayDate <=@FromDate  
and ((ToId=@SubAccNo and @LinkFile=2) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag =10
and PaymentType in(1,2,3,5)


--===========================================================================حساب المبيعات والمشتريات

union all

select 
0 Db,
Total Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag in(11,13,15,21,23)
and AccNo=@MainAccNo
and @SubAccNo=0

union all

select 
Total Db,
0 Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag in(12,14,16,22,24)
and AccNo=@MainAccNo
and @SubAccNo=0

union all

select 
Total Db,
0 Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag =9
and AccNo=@MainAccNo
and @SubAccNo=0

union all

select 
0 Db,
Total Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag =10
and AccNo=@MainAccNo
and @SubAccNo=0



--===========================================================================حسابات الخصم والإضافة

union all

select 
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag in(11,13,15,21,23)
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0

union all

select 
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag in(12,14,16,22,24)
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0

union all

select 
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag =9
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0

union all

select 
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Cr
from SalesMaster
where DayDate <=@FromDate  
and Flag =10
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0


return 
(
case when @Flag=0 then (select isnull(SUM(Db),0)-isnull(SUM(Cr),0) from @tbl)*@MotionValue
when @Flag=1 then (select isnull(SUM(Db),0) from @tbl)
when @Flag=2 then (select isnull(SUM(Cr),0) from @tbl)
else 0 end
)

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSalesRPT]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSalesRPT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[GetSalesRPT]
(
@FromDate datetime,
@ToDate datetime,
@Shift int,
@Flag int,
@StoreId int,
@CashierId int,
@FromInvoiceNo int,
@ToInvoiceNo int,
@RPTFlag1 int=0,
@RPTFlag2 int=0,
@IsClosedOnly int=0,
@ToId int=0
)
--with encryption
as

select M.DayDate InvDate,M.Shift InvShift,S.Logo,SF.Name ShiftName,St.Name StoreName,W.EnName WaiterName
,U.EnName UserFullName,C.EnName CashierName,
(case 
when M.Flag IN(8) then ToSt.Name
when M.Flag IN(9,10) then ToSp.Name
when M.Flag between 11 and 16 then ToCs.Name end) ToName,''''TableName,
M.*,D.*,dbo.GetItemUnitName(D.ItemId,D.UnitId)UnitName,
dbo.GetAccName(AccNo1)AccName1,
dbo.GetAccName(AccNo2)AccName2,
dbo.GetAccName(AccNo3)AccName3,
dbo.GetAccName(AccNo4)AccName4,
''''SizesDetailsName,
''''ColorsDetailsName
from SalesMaster M
left join SalesDetails D on(M.Flag=D.Flag and M.StoreId=D.StoreId and M.InvoiceNo=D.InvoiceNo)
left join Items It on(D.ItemId=It.Id)
left join Statics S on(1=1)
left join Shifts SF on(M.Shift=SF.Id)
left join Stores St on(M.StoreId=St.Id)
left join Employees U on(M.UserName=U.Id)
left join Employees C on(M.Cashier=C.Id)
left join Employees W on(M.WaiterId=W.Id)
left join Stores ToSt on(M.ToId=ToSt.Id)
left join Suppliers ToSp on(M.ToId=ToSp.Id)
left join Customers ToCs on(M.ToId=ToCs.Id)
where 
M.DayDate between @FromDate and @ToDate
and (M.Shift=@Shift or @Shift=0)

and (M.Flag=@Flag or @Flag=0)
and (M.StoreId=@StoreId or @StoreId=0)
and (M.Cashier=@CashierId or @CashierId=0)
and (M.InvoiceNo>=@FromInvoiceNo or @FromInvoiceNo=0)
and (M.InvoiceNo<=@ToInvoiceNo or @ToInvoiceNo=0)
and (M.ToId=@ToId or @ToId=0)

and (M.IsClosed=@IsClosedOnly or @IsClosedOnly=0 or M.Flag<>11) -- الموائد المغلقة فقط

and (
		(isnull(M.Temp,0)=0 and
			(
			@RPTFlag1=0 or
			((@RPTFlag1=1 and M.Flag between 1  and 8  and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
			((@RPTFlag1=2 and M.Flag between 9  and 10 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
			((@RPTFlag1=3 and M.Flag between 11 and 16 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) ) or
			((@RPTFlag1=4 and M.Flag between 17 and 17 and @RPTFlag2=0) or (M.Flag=@RPTFlag2) )
			)
		)
		or (isnull(M.Temp,0)=1 and M.Flag=13 and @RPTFlag1=5)
	)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOutMotionSerialNo]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOutMotionSerialNo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[UpdateOutMotionSerialNo]
(
@GroupID int,
@Id int
)

as

declare @serial int=dbo.GetOutMotionMaxSerialNo(@GroupID)
update OutMotion 
set SerialNo=@serial
where GroupID=@GroupID
and ID=@ID

select @serial
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOutMotion]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOutMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[UpdateOutMotion]
@GroupID int,
@Id int,
@Price decimal(18,2),
@Value decimal(18,2),
@SerialDate datetime

as

update OutMotion set 
Price=@Price,
Value=@Value,
SerialNo=dbo.GetOutMotionMaxSerialNo(@GroupID),
SerialDate=@SerialDate
where GroupID=@GroupID
and ID=@Id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[OpenNewYear]    Script Date: 11/09/2014 08:49:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OpenNewYear]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N' 
CREATE proc [dbo].[OpenNewYear](@ToDate datetime=''2020-10-1'')
as
update Customers set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update Suppliers set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update Debits set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update Credits set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update Saves set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update Banks set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update Sellers set Bal0=dbo.Bal0(AccNo,Id,@ToDate)
update chart set Bal0=dbo.Bal0(Id,0,@ToDate)


--========================================================================================
--========================================================================================

insert [SalesMaster] ([Flag],[StoreId],[InvoiceNo],[DayDate],[Shift],[TableId],[TableSubId]
,[UserName],[IsClosed],[NoOfPersons],[MinPerPerson],[CancelMinPerPerson]
,[WithService],[WithTax],[ServiceValue],[Taxvalue],[PaymentType],[CashValue]
,[DiscountPerc],[DiscountValue],[ToId],[WaiterId],[MyGetDate],[OpennedDate]
,[Notes],[ClosedDate],[IsCashierPrinted],[Cashier],[DeliverymanId],[Total],[DocNo]
,[AccNo1],[Per1],[Val1],[AccNo2],[Per2],[Val2],[AccNo3],[Per3],[Val3]
,[AccNo4],[Per4],[Val4],[AccType1],[AccType2],[AccType3],[AccType4]
,[TotalAfterDiscount],[SaveId],[Temp],[AccNo])
SELECT distinct 0[Flag],[StoreId],1[InvoiceNo],@ToDate-1[DayDate],0[Shift]
,0[TableId],0[TableSubId],0[UserName],0[IsClosed],0[NoOfPersons],0[MinPerPerson]
,0[CancelMinPerPerson],0[WithService],0[WithTax],0[ServiceValue],0[Taxvalue]
,0[PaymentType],0[CashValue],0[DiscountPerc],0[DiscountValue],0[ToId],0[WaiterId]
,null[MyGetDate],null[OpennedDate],''''[Notes],null[ClosedDate],0[IsCashierPrinted]
,0[Cashier],0[DeliverymanId]
,sum([dbo].[GetStoreItemBal](StoreId,ItemId,0,0,@ToDate))[Total]
,''''[DocNo],0[AccNo1],0[Per1],0[Val1]
,0[AccNo2],0[Per2],0[Val2],0[AccNo3],0[Per3],0[Val3],0[AccNo4],0[Per4],0[Val4]
,0[AccType1],0[AccType2],0[AccType3],0[AccType4]
,sum([dbo].[GetStoreItemBal](StoreId,ItemId,0,0,@ToDate))[TotalAfterDiscount]
,0[SaveId]
,0[Temp],0[AccNo]
from SalesDetails
group by  [StoreId]


insert [SalesDetails]([Flag],[StoreId],[InvoiceNo],[DayDate],[Shift],[ItemId],[ItemName]
,[Qty],[Price],[QtySub],[PriceSub],[Value],[IsPrinted]
,[UserName],[MyGetDate],[UnitId],[UnitQty],[Barcode],[Color],[Size],[SalesPrice])
SELECT distinct 0[Flag],D.[StoreId],1[InvoiceNo],@ToDate-1[DayDate]
,0[Shift],[ItemId]
,It.Name [ItemName]
,[dbo].[GetStoreItemBal](D.StoreId,ItemId,0,0,@ToDate)[Qty]
,It.PurchasePrice [Price]
,0[QtySub],0[PriceSub]
,[dbo].[GetStoreItemBal](D.StoreId,ItemId,0,0,@ToDate)*It.PurchasePrice [Value]
,0[IsPrinted]
,0[UserName],null[MyGetDate],0[UnitId],1[UnitQty],''''[Barcode],0[Color],0[Size],0[SalesPrice]
FROM [SalesDetails] D
left join items It on(D.ItemId=it.Id)


delete [SalesMaster] where Flag<>0
delete [SalesDetails] where Flag<>0
update [SalesMaster] set Flag=1
update [SalesDetails] set Flag=1



--========================================================================================
--========================================================================================




insert [SalesFreezingDetails]([Flag],[StoreId],[InvoiceNo],[ItemId],[ItemName],[Brand]
,[Qty],[Weight],[TotalWeight],[UserName]
,[MyGetDate],[Price],[Value])
SELECT  
(case when D.Flag in(1,2,3,4) then 0 else -1 end)[Flag]
,[StoreId],0[InvoiceNo],[ItemId]
,(case when D.Flag in(1,2,3,4) then It1.Name else It2.Name end)[ItemName]
,[Brand]
,1[Qty]
,round(sum(D.[Weight]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)[Weight]
,round(sum(D.[TotalWeight]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)[TotalWeight]
,0[UserName],null[MyGetDate]
,(case when D.Flag in(1,2,3,4) then It1.Price else It2.Price end)[Price]
,0[Value]
FROM [SalesFreezingDetails] D
left join ItemsPackaged It1 on(It1.Id=D.ItemId)
left join ItemsFinal It2 on(It2.Id=D.ItemId)
where D.Flag in(1,2,3,4)
group by 
(case when D.Flag in(1,2,3,4) then 0 else -1 end)
,[StoreId],[ItemId]
,(case when D.Flag in(1,2,3,4) then It1.Name else It2.Name end)
,[Brand]
,(case when D.Flag in(1,2,3,4) then It1.Price else It2.Price end)


insert [SalesFreezingDetails]([Flag],[StoreId],[InvoiceNo],[ItemId],[ItemName],[Brand]
,[Qty],[Weight],[TotalWeight],[UserName]
,[MyGetDate],[Price],[Value])
SELECT  
(case when D.Flag in(1,2,3,4) then 0 else -1 end)[Flag]
,[StoreId],0[InvoiceNo],[ItemId]
,(case when D.Flag in(1,2,3,4) then It1.Name else It2.Name end)[ItemName]
,[Brand]
,round(sum(D.[Qty]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)
[Qty]
,
case when 
round(sum(D.[Qty]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)
=0 then 0
else
round(sum(D.[TotalWeight]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)/
round(sum(D.[Qty]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)
end
[Weight]
,round(sum(D.[TotalWeight]*(case when D.Flag in(1,2,4,6,7) then 1. else -1. end)),10)[TotalWeight]
,0[UserName],null[MyGetDate]
,(case when D.Flag in(1,2,3,4) then It1.Price else It2.Price end)[Price]
,0[Value]
FROM [SalesFreezingDetails] D
left join ItemsPackaged It1 on(It1.Id=D.ItemId)
left join ItemsFinal It2 on(It2.Id=D.ItemId)
where D.Flag not in(1,2,3,4)
group by 
(case when D.Flag in(1,2,3,4) then 0 else -1 end)
,[StoreId],[ItemId]
,(case when D.Flag in(1,2,3,4) then It1.Name else It2.Name end)
,[Brand]
,(case when D.Flag in(1,2,3,4) then It1.Price else It2.Price end)





delete [SalesFreezingMaster] where Flag>0
delete [SalesFreezingDetails] where Flag>0

update [SalesFreezingDetails] set [Value]=[Weight]*[Qty]

update [SalesFreezingDetails] set Flag=(case when Flag=0 then 1 else 7 end) 



insert [SalesFreezingMaster]([Flag],[StoreId],[InvoiceNo],[DayDate],[UserName],[ToId],[MyGetDate],[Notes]
,[Total],[DocNo],[TotalPrice],[TotalNo])
SELECT [Flag],[StoreId],0[InvoiceNo],@ToDate[DayDate],0[UserName],0[ToId],null[MyGetDate]
,''''[Notes],sum(TotalWeight)[Total],''''[DocNo],sum(Value)[TotalPrice],sum(Qty)[TotalNo]
FROM [SalesFreezingDetails]
group by [Flag],[StoreId]


delete BankCash
delete InMotion
delete OutMotion
delete Purchase
delete SalesMaster2
delete SalesDetails2
delete CustomerSales
delete SupplierIncome
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AccontMotion]    Script Date: 11/09/2014 08:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccontMotion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[AccontMotion]
(
@MainAccNo int,
@SubAccNo int,
@FromDate datetime,
@ToDate datetime
)
--with encryption
as
declare @Detailed bigint=0

declare @S_AccNo int,@R_S_AccNo int,@P_AccNo int,@R_P_AccNo int
select top 1 @S_AccNo=S_AccNo,@R_S_AccNo=R_S_AccNo,@P_AccNo=P_AccNo,@R_P_AccNo=R_P_AccNo from Statics

declare @LinkFile int,@MotionType int
select @LinkFile=LinkFile,@MotionType=MotionType from Chart where Id=@MainAccNo
select @LinkFile=ISNULL(@LinkFile,0)

declare @TableName varchar(100)
select @TableName=TableName from LinkFile where Id=@LinkFile
select @TableName=ISNULL(@TableName,'''')

declare @Db decimal(18,2)=0,@Cr decimal(18,2)=0
if @MotionType=0 select @Db=1. 
if @MotionType=1 select @Cr=1.

declare @Bal0 decimal(18,2)=dbo.Bal0(@MainAccNo,@SubAccNo,@FromDate-1)

select 0 MyFlag,@MotionType MotionType,0 InvoiceNo,@FromDate-1 DayDate,
@Bal0*(case when @Bal0>0 then @Db else @Cr*-1. end) Db,
@Bal0*(case when @Bal0>0 then @Cr else @Db*-1. end) Cr,
0 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* '' Notes,''رصيد أول المدة'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems

union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
Value Db,
0 Cr,
'''','''','''',null,''* ''+Notes Notes,
''مبيعات الفرزة'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from OutMotion
where DayDate between @FromDate and @ToDate 
and @LinkFile=1
and CustomerId=@SubAccNo

union all

select Flag MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(Case when Flag in(1,3) then 0 else 1. end)*Value Db,
(Case when Flag in(1,3) then 1. else 0 end)*Value Cr,
Cash,SheekNo,SheekPerson,SheekDate,''* ''+Notes Notes,
(Case Flag when 1 then ''إيرادات خزنة'' when 2 then ''مصروفات خزنة'' when 3 then ''إيرادات بنك'' when 4 then ''مصروفات بنك'' end) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from BankCash
where DayDate between @FromDate and @ToDate 
and MainAccNo=@MainAccNo 
and (SubAccNo=@SubAccNo or @SubAccNo=0 or SubAccNo=0)
and Canceled=0

union all

select Flag MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(Case when Flag in(1,3) then 1. else 0 end)*Value Db,
(Case when Flag in(1,3) then 0 else 1. end)*Value Cr,
Cash,SheekNo,SheekPerson,SheekDate,''* ''+Notes Notes,
(Case Flag when 1 then ''إيرادات خزنة'' when 2 then ''مصروفات خزنة'' when 3 then ''إيرادات بنك'' when 4 then ''مصروفات بنك'' end) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from BankCash
where DayDate between @FromDate and @ToDate 
and (
	(dbo.GetSafeAccNo(BankId)=@MainAccNo and Flag in(1,2) and @LinkFile=5) or
	(dbo.GetBankAccNo(BankId)=@MainAccNo and Flag in(3,4) and @LinkFile=6)
	)
and BankId=@SubAccNo
and Canceled=0

--===========================================================================المبيعات والمشتريات

union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
0 Db,
ValueTotal  Cr,
'''','''','''',null,''* ''+Notes Notes,
''إجمالى الأصناف'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and ValueTotal<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
Dis1Value Db,
0  Cr,
'''','''','''',null,''* ''+Notes Notes,
''خصم 1/2 %'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Dis1Value<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
0 Db,
Add1Value  Cr,
'''','''','''',null,''* ''+Notes Notes,
''إضافة 1/2 %'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Add1Value<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
BxValue Db,
0 Cr,
'''','''','''',null,''* ''+Notes Notes,
''قيمة الصناديق'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and BxValue<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
0 Db,
CommitionValue  Cr,
'''','''','''',null,''* ''+Notes Notes,
''إضافة عمولة توريد 10 جنيه لكل طن'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and CommitionValue<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
CommitionDed Db,
0 Cr,
'''','''','''',null,''* ''+Notes Notes,
''خصم 5% من العمولة ضرائب'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and CommitionDed<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
DedCarryValue Db,
0  Cr,
'''','''','''',null,''* ''+Notes Notes,
''خصم 10 مليم تحميل وتعتيق'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and DedCarryValue<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
Loan Db,
0 Cr,
'''','''','''',null,''* ''+Notes Notes,
''خصم عهدة'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Loan<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
Ded1Vlue Db,
0  Cr,
'''','''','''',null,''* ''+Notes Notes,
''خصم'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Ded1Vlue<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
Ded2Vlue Db,
0  Cr,
'''','''','''',null,''* ''+Notes Notes,
''خصم'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Ded2Vlue<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
0 Db,
Add1Vlue  Cr,
'''','''','''',null,''* ''+Notes Notes,
''إضافة'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Add1Vlue<>0


union all

select 0 MyFlag,@MotionType MotionType,Id,DayDate,
0 Db,
Add2Vlue  Cr,
'''','''','''',null,''* ''+Notes Notes,
''إضافة'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from Purchase
where DayDate between @FromDate and @ToDate 
and @LinkFile=2
and SupplierId=@SubAccNo
and Add2Vlue<>0


--==============================================================================



--===========================================================================
--===========================================================================

--===========================================================================المبيعات والمشتريات

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(case when Flag in(11,13,15,10,21,23) then TotalAfterDiscount else 0 end) Db,
(case when Flag in(12,14,16,9,22,24) then TotalAfterDiscount else 0 end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
(case when Flag in(11,13,15) then ''مبيعات'' when Flag in(12,14,16) then ''مردودات مبيعات'' 
when Flag =9 then ''مشتريات'' when Flag=10 then ''مردودات مشتريات'' 
when Flag =21 then ''مبيعات الجملة'' when Flag=22 then ''مردودات مبيعات الجملة'' 
when Flag =23 then ''مبيعات نصف الجملة'' when Flag=24 then ''مردودات مبيعات نصف الجملة'' 
else '''' end) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and @Detailed=0
--===========================================================================
union all

select 0 MyFlag,@MotionType MotionType,D.InvoiceNo,D.DayDate,
(case when D.Flag in(11,13,15,10,21,23) then Dt.Value else 0 end) Db,
(case when D.Flag in(12,14,16,9,22,24) then Dt.Value else 0 end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
dt.ItemName ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster D
left join SalesDetails Dt on(D.StoreId=dt.StoreId and D.Flag=dt.Flag and D.InvoiceNo=Dt.InvoiceNo )
where D.DayDate between @FromDate and @ToDate 
and ToId=@SubAccNo
and (
	(@LinkFile=1 and D.Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and D.Flag in(9,10)) 
	)
and Dt.Value<>0
and @Detailed=1
--===========================================================================
union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(case when (Flag in(11,13,15,10,21,23) and AccType1=2) or (Flag in(12,14,16,9,22,24) and AccType1=1) then Val1 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType1=1) or (Flag in(12,14,16,9,22,24) and AccType1=2) then Val1 else 0 end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
dbo.GetAccName(AccNo1) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val1<>0
and @Detailed=1
--===========================================================================
union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(case when (Flag in(11,13,15,10,21,23) and AccType2=2) or (Flag in(12,14,16,9,22,24) and AccType2=1) then Val2 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType2=1) or (Flag in(12,14,16,9,22,24) and AccType2=2) then Val2 else 0 end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
dbo.GetAccName(AccNo2) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val2<>0
and @Detailed=1
--===========================================================================
union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(case when (Flag in(11,13,15,10,21,23) and AccType3=2) or (Flag in(12,14,16,9,22,24) and AccType3=1) then Val3 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType3=1) or (Flag in(12,14,16,9,22,24) and AccType3=2) then Val3 else 0 end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
dbo.GetAccName(AccNo3) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val3<>0
and @Detailed=1
--===========================================================================
union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(case when (Flag in(11,13,15,10,21,23) and AccType4=2) or (Flag in(12,14,16,9,22,24) and AccType4=1) then Val4 else 0 end) Db,
(case when (Flag in(11,13,15,10,21,23) and AccType4=1) or (Flag in(12,14,16,9,22,24) and AccType4=2) then Val4 else 0 end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
dbo.GetAccName(AccNo4) ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ToId=@SubAccNo
and (
	(@LinkFile=1 and Flag in(11,13,15,12,14,16,21,22,23,24)) or
	(@LinkFile=2 and Flag in(9,10)) 
	)
and Val4<>0
and @Detailed=1
--===========================================================================


--===========================================================================النقدى والفيزا

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when ToId=@SubAccNo and @LinkFile=1 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''نقدى - مبيعات'' ''Rem'',
dbo.GetMainAccNoLink(1,ToId),dbo.GetMainAccName(dbo.GetMainAccNoLink(1,ToId))MainAccName,ToId,dbo.GetSubAccNameLink(1,ToId) SubAccName,
dbo.GetSalesItems(Flag,StoreId,InvoiceNo)
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ((ToId=@SubAccNo and @LinkFile=1) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag in(11,13,15,21,23)
and PaymentType in(1,2,3,5)

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(Case when ToId=@SubAccNo and @LinkFile=1 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''نقدى - مردودات مبيعات'' ''Rem'',
dbo.GetMainAccNoLink(1,ToId),dbo.GetMainAccName(dbo.GetMainAccNoLink(1,ToId))MainAccName,ToId,dbo.GetSubAccNameLink(1,ToId) SubAccName,
dbo.GetSalesItems(Flag,StoreId,InvoiceNo)
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ((ToId=@SubAccNo and @LinkFile=1) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag in(12,14,16,22,24)
and PaymentType in(1,2,3,5)

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(Case when ToId=@SubAccNo and @LinkFile=2 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''نقدى - مشتريات'' ''Rem'',
dbo.GetMainAccNoLink(2,ToId),dbo.GetMainAccName(dbo.GetMainAccNoLink(2,ToId))MainAccName,ToId,dbo.GetSubAccNameLink(2,ToId) SubAccName,
dbo.GetSalesItems(Flag,StoreId,InvoiceNo)
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ((ToId=@SubAccNo and @LinkFile=2) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag =9
and PaymentType in(1,2,3,5)

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
(Case when SaveId=@SubAccNo and @LinkFile=5 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Db,
(Case when ToId=@SubAccNo and @LinkFile=2 then 1. else 0 end)*(case when PaymentType in(1,2,3) then TotalAfterDiscount when PaymentType=5 then CashValue end) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''نقدى - مردودات مشتريات'' ''Rem'',
dbo.GetMainAccNoLink(2,ToId),dbo.GetMainAccName(dbo.GetMainAccNoLink(2,ToId))MainAccName,ToId,dbo.GetSubAccNameLink(2,ToId) SubAccName,
dbo.GetSalesItems(Flag,StoreId,InvoiceNo)
from SalesMaster
where DayDate between @FromDate and @ToDate 
and ((ToId=@SubAccNo and @LinkFile=2) or (SaveId=@SubAccNo and @LinkFile=5))
and Flag =10
and PaymentType in(1,2,3,5)


--===========================================================================حساب المبيعات والمشتريات

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
0 Db,
Total Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مبيعات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag in(11,13,15,21,23)
and AccNo=@MainAccNo
and @SubAccNo=0

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
Total Db,
0 Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مردودات مبيعات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag in(12,14,16,22,24)
and AccNo=@MainAccNo
and @SubAccNo=0

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
Total Db,
0 Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مشتريات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag =9
and AccNo=@MainAccNo
and @SubAccNo=0

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
0 Db,
Total Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مردودات مشتريات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag =10
and AccNo=@MainAccNo
and @SubAccNo=0



--===========================================================================حسابات الخصم والإضافة

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مبيعات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag in(11,13,15,21,23)
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مردودات مبيعات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag in(12,14,16,22,24)
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مشتريات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag =9
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0

union all

select 0 MyFlag,@MotionType MotionType,InvoiceNo,DayDate,
((case when @MainAccNo=AccNo1 and AccType1=1 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=1 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=1 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=1 then Val4 else 0 end)) Db,
((case when @MainAccNo=AccNo1 and AccType1=2 then Val1 else 0 end)+(case when @MainAccNo=AccNo2 and AccType2=2 then Val2 else 0 end)+(case when @MainAccNo=AccNo3 and AccType3=2 then Val3 else 0 end)+(case when @MainAccNo=AccNo4 and AccType4=2 then Val4 else 0 end)) Cr,
1 Cash,'''' SheekNo,'''' SheekPerson,null SheekDate,''* ''+Notes Notes,
''مردودات مشتريات'' ''Rem'',
''-'' MainAccNo,''-'' MainAccName,''-'' SubAccNo,''-'' SubAccName,
'''' SalesItems
from SalesMaster
where DayDate between @FromDate and @ToDate 
and Flag =10
and @MainAccNo in(AccNo1,AccNo2,AccNo3,AccNo4)
and @SubAccNo=0
' 
END
GO
