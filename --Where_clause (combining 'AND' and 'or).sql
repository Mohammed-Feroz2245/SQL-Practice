--Where_clause (combining 'AND' and 'or')


SELECT TOP (1000)
      [PersonType] as 'Person Type'
      ,[Title]
      ,[FirstName] as 'First Name'
      ,[MiddleName] as 'Middle Name'
      ,[LastName] as 'Last Name'
      ,[Suffix]
  FROM [AdventureWorks2019].[Person].[Person]
  where PersonType = 'EM' and ([Title] is null or [MiddleName] is null)

SELECT TOP (1000)
      [PersonType] as 'Person Type'
      ,[Title]
      ,[FirstName] as 'First Name'
      ,[MiddleName] as 'Middle Name'
      ,[LastName] as 'Last Name'
      ,[Suffix]
  FROM [AdventureWorks2019].[Person].[Person]
  where (PersonType = 'EM' or PersonType = 'SP') and ([Title] is null or [MiddleName] is null or [Suffix] is null)
