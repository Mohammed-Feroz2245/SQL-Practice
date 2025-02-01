--Outer join Q2

--Modify your query from Exercise 1 to only include rows where the YTD sales are less than $2,000,000.
SELECT P.[BusinessEntityID]
      
      ,P.[SalesQuota]
      
      ,P.[SalesYTD]
      ,T.[Name] as [TerritoryName]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] as P
  left Outer Join [AdventureWorks2019].[Sales].[SalesTerritory] as T
  on P.[TerritoryID]=T.[TerritoryID]
  where P.[SalesYTD] < 2000000
