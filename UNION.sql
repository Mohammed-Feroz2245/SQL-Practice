--UNION

--Write a query that selects all rows from the "Purchasing.PurchaseOrderDetail" table where the line total is greater than $10,000. Include the following columns in your output:

--PurchaseOrderID

--PurchaseOrderDetailID

--OrderQty

--LineTotal


--Write a similar query that selects all rows from the "Sales.SalesOrderDetail" table where the line total is greater than $10,000. Include the following columns in your output:

--SalesOrderID

--SalesOrderDetailID

--OrderQty

--LineTotal

--Combine the rows from your Exercise 1 and Exercise 2 queries by "stacking" them vertically. Make sure the similar fields from each table align. Alias the first two columns as "OrderID" and "OrderDetailID", respectively.

--Add the following derived fields to your query; remember , you'll need to add them to both components of your query. Sort the output of your query by line total in descending order.

"RunDate" - displays the current date

"OrderType" - this should display the string "Purchase" for purchase orders, and "Sale" for sales orders.


SELECT[PurchaseOrderID] as OrderID
      ,[PurchaseOrderDetailID] as OrderDetailID
      
      ,[OrderQty]
      
      ,[LineTotal]
	  ,[RunDate] = cast(getdate() as date)
	  ,[OrderType] = 'Purchase'
      
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
  where [LineTotal] > 10000
  

  Union

  SELECT [SalesOrderID]
      ,[SalesOrderDetailID]
      
      ,[OrderQty]
      
      ,[LineTotal]
	  ,[RunDate] = cast(getdate() as date)
      ,[OrderType] = 'Sales'
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
  where [LineTotal] > 10000

  Order by [LineTotal] desc
