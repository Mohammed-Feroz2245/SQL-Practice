--Unique values


SELECT distinct [PersonType]
  FROM [AdventureWorks2019].[Person].[Person]
  order by 1


SELECT distinct
  [FirstName],
  [MiddleName],
  [LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  where [MiddleName] is not null
  order by LastName, FirstName
