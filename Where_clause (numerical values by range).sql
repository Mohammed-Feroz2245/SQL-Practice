--Where_clause numerical values by range



SELECT
      [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  where [TotalDue] > 50000 and [Freight] < 1000






SELECT
      [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  where [SubTotal] between 10000 and 30000

  SELECT
      [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  where [SubTotal] > 10000 and 
  [SubTotal] < 30000
