--Having Clause

--Identify all first names in the Person.Person table which are shared by more than 50 people. Sort the output in descending order by the count of the name.

SELECT [LastName],
 Count(*)
  FROM [AdventureWorks2019].[Person].[Person]
  Group by [LastName]
  having Count(*) > 50
