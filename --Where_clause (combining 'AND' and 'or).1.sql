--Where_clause (combining 'AND' and 'or).1

SELECT * 
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  where Gender = 'F' And (JobTitle = 'Network Manager' or JobTitle = 'Application Specialist')


SELECT * 
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  where Gender = 'F' And JobTitle in ('Network Manager', 'Application Specialist')
