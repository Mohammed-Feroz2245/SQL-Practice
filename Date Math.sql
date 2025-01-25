--Date Math

--Use date math - in conjunction with GETDATE - to calculate what date is 100 days from now.
select DATEADD(Day, 100, GETDATE());
--or
select getdate()-100

--Use DATEADD to calculate what date is 6 months from now.
select DATEADD(MONTH, 6, GETDATE())

--Use DATEDIFF to select all rows from the "Sales.SalesOrderHeader" table where the order date is 7 or less days before 12/25/2013. Note that it is possible for DATEDIFF to output a negative number if the "end" date is prior to your "start" date, so you may want to use BETWEEN instead of <= in your criteria.
--You may select all columns via the SELECT * shorthand.
--Bonus
--Modify your query from Exercise 3 to work for ANY year, not just 2013. HINT - instead of hardcoding the year in your DATEFROMPARTS function, you will probably want to calculate the year based on the order date.
SELECT /*[SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]
	  */
	  *
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  where DATEDIFF(Day,[OrderDate],'2013-12-25') between 0 and 7;

  select  *
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  where DATEDIFF(Day,[OrderDate],DateFromParts(YEAR([OrderDate]),Month(GETDATE()),Day(GETDATE()))) between 0 and 7;
