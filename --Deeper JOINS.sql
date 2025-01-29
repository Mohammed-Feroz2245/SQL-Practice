--Deeper JOINS


--Write a query that combines the "FirstName" and "LastName" columns from the "Person.Person" table, with the "EmailAddress" column from the "Person.EmailAddress" table, AND the "PhoneNumber" field from the "Person.PersonPhone" table.
--HINT - these tables all have the "BusinessEntityID" field in common.

--Modify your query from Exercise 1 such that you now only pull in phone numbers with a Seattle area code - that is to say, phone numbers that start with "206".

--HINT - PhoneNumber is a text field, so you will need a text function to accomplish this. Either LEFT or a wildcard used in conjunction with LIKE should work.

--Modify your query from Exercise 2 to pull in each person's city from the "Person.Address" table.

--Note that this table has no fields in common with any of the tables already in our join. This means we will need to join in another table that we can use as a "bridge" between our Person.Address table and our Person.Person table - a table that should have fields we can use to connect it to either table.

--The table we need is "Person.BusinessEntityAddress"; note that it has both "BusinessEntityID" AND "AddressID" fields. You will need to join this table to Person.Person, and then join Person.Address to this table in order to get your query to work.

SELECT
      P.[FirstName]
      ,Ph.[PhoneNumber]
      ,P.[LastName]
	  ,E.EmailAddress
	  ,PA.City
      
  FROM [AdventureWorks2019].[Person].[Person] as P
  Join [Person].[EmailAddress] as E
  On P.BusinessEntityID=E.BusinessEntityID
  Join [Person].[PersonPhone] as Ph
  On Ph.BusinessEntityID=E.BusinessEntityID
  Join [AdventureWorks2019].[Person].[BusinessEntityAddress] as B
  On B.BusinessEntityID=E.BusinessEntityID
  Join [AdventureWorks2019].[Person].[Address] as PA
  On PA.AddressID=B.AddressID

  where Ph.PhoneNumber like '206%'

  --or Where Ph.PhoneNumber = LEFT(PhoneNumber, 3) = '206'