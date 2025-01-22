--Sorting with Order By

SELECT [OrganizationLevel] as [Organization Level]
      ,[JobTitle] as [Job Title]
      ,[VacationHours] as [Vacation Hours]
      ,[SickLeaveHours] as [Sick Leave Hours]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  Order By [Organization Level], [Vacation Hours]




