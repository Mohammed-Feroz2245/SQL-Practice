--Outer join Q1

--Write a query that combines the "BusinessEntityID", "SalesQuota", and "SalesYTD" columns from the "Sales.SalesPerson" table, with the "Name" column from the "Sales.SalesTerritory" table. Alias the "Name" column as "TerritoryName".
--Make sure to include all rows from the "Sales.SalesPerson" table regardless of whether a match is found in the "Sales.SalesTerritory" table. I'll leave it to you to determine which field to use to link the two tables together.

SELECT P.[BusinessEntityID]
      
      ,P.[SalesQuota]
      
      ,P.[SalesYTD]
      ,T.[Name] as [TerritoryName]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] as P
  left Outer Join [AdventureWorks2019].[Sales].[SalesTerritory] as T
  on P.[TerritoryID]=T.[TerritoryID]
  


