--Outer join Q3

--Change the join in your query from Exercise 2 from an outer join to an inner join, and take note of the effect on the query output. Are the rows with NULL values in the "TerritoryName" column still being included?
SELECT P.[BusinessEntityID]
      
      ,P.[SalesQuota]
      
      ,P.[SalesYTD]
      ,T.[Name] as [TerritoryName]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] as P
Join [AdventureWorks2019].[Sales].[SalesTerritory] as T
  on P.[TerritoryID]=T.[TerritoryID]
  where P.[SalesYTD] < 2000000
