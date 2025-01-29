--JOINS

--Write a query that combines the "FirstName" and "LastName" columns from the "Person.Person" table, with the "EmailAddress" column from the "Person.EmailAddress" table. HINT - these tables have the "BusinessEntityID" field in common.

SELECT
      P.[FirstName]
      
      ,P.[LastName]
	  ,E.EmailAddress
	  
      
  FROM [AdventureWorks2019].[Person].[Person] as P
  Join [Person].[EmailAddress] as E
  On P.BusinessEntityID = E.BusinessEntityID 


  --Write a query that combines the "Name" and "ListPrice" columns from the "Production.Product" table, with the "ReviewerName" and "Comments" columns from the "Production.ProductReview" table. HINT - these tables have the "ProductID" field in common.

  SELECT
      PP.[Name]
   
      ,PP.[ListPrice]
	  ,PR.ReviewerName
	  ,PR.Comments
      
  FROM [AdventureWorks2019].[Production].[Product] as PP
  JOIN [AdventureWorks2019].[Production].[ProductReview] as PR
  ON PR.ProductID = PP.ProductID