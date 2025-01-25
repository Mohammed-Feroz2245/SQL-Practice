
--CONCAT_WS Function


--Write a query that uses the CONCAT_WS function to combine address components 
--from the Person.Address table into a complete address string. The resulting column in your query output should be aliased “FullAddress”.

SELECT
      [AddressLine1]
      ,[AddressLine2]
      ,[City]
      
      ,[PostalCode]
      
      ,[FullAddress] = CONCAT_WS(' ',[AddressLine1],[AddressLine2],[City],[PostalCode])   
	  FROM [AdventureWorks2019].[Person].[Address]

--write a query against the Production.Product table that concatenates product name and list price together in a single field (called “ProductPrice”),
--separated by a colon and a space. The query results should only include products whose list price exceeds $1,000.

SELECT [ProductPrice] = CONCAT_WS(': $', [Name], [Listprice])
	  FROM [AdventureWorks2019].[Production].[Product]
	  where [Listprice] > 1000