--Deeper Outer joins

--Q1
----Create a query with the following columns:

--SalesOrderID, OrderDate, and TotalDue from the "Sales.SalesOrderHeader" table

--A derived column called "Percent of Sales YTD", calculated as follows:

--The value in the "TotalDue" column from Sales.SalesOrderHeader, divided by the value in the "SalesYTD" field from the Sales.SalesPerson table, then multiplied by 100.

--**You can connect the two tables by their "SalesPersonID" and "BusinessEntityID" fields, respectively.

--Return all rows from Sales.SalesOrderHeader that have a total due amount greater than $2,000, regardless of whether there is a sales person associated with the sale. Sort the output by sales order ID, ascending.

SELECT H.[SalesOrderID]
      
      ,H.[OrderDate]
      
      ,H.[TotalDue]
      ,[Percent of Sales] =  (H.[TotalDue]/P.[SalesYTD])*100
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader] H
  left Outer Join [Sales].[SalesPerson] as P
  On P.BusinessEntityID = H.SalesPersonID
  where H.[TotalDue]>2000
  Order by H.[SalesOrderID]