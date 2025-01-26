--Dates and DateTimes

--A field called "Today" showing the current day and time
--A field called "This Month", showing the number of the current month
--A field called "This Year", showing the number of the current year.

Select Today = getdate()

select [This Month] = month(getdate())

Select [This year] = year(getdate())


--Select all records from the "Purchasing.PurchaseOrderHeader" table where the order date occurred between 1/1/2011 and 7/31/2011 
--AND the total amount due is greater than $10,000.

SELECT [PurchaseOrderID]
      
      ,[OrderDate]
  
      ,[TotalDue]
 
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  where ([OrderDate] between DATEFROMPARTS(2011,01,01) And DATEFROMPARTS(2011,07,31)) and [TotalDue] > 10000
