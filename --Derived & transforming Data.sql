--Derived & transforming Data

--1.Select a derived column from the "Person.Person" table - aliased as "Person Title" - that consists of the person's first name, followed by a space, followed by their last name, followed by a hyphen (-), followed by the person type.
SELECT [Person Title] = [FirstName] + ' ' + [LastName] + ' - ' + [PersonType]
	  ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
 

--2.Select all rows from the "HumanResources.Employee" table where "SalariedFlag" = 0. Include the following columns in your output:
--BusinessEntityID
--VacationHours
--SickLeaveHours
--Total Time Off - This is a derived column you will calculate by adding vacation hours and sick leave hours
--Sort the output by total time off, in ascending order.
 SELECT [BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
	  ,[Total Time Off] = [VacationHours] + [SickLeaveHours]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  where [SalariedFlag] = 0
  Order by [Total Time Off]
   

--3.Select all rows from the "HumanResources.EmployeePayHistory" table. Include the following columns in your output:
--BusinessEntityID
--Rate
--Amount Per Paycheck- This is a derived column you will calculate - assuming a 40 hour work week - using the employee pay rate from the "Rate" column, and pay frequency from the "PayFrequency" column.
--Sort the output by Amount Per Paycheck in descending order.
 
 SELECT  [BusinessEntityID]
      ,[Rate]
      ,[Amount Per Paycheck] = [Rate] * 40 * [PayFrequency]
  FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]


--Modify your query from Exercise 2 by adding a new derived column called "Total Days Off". This column should build on our math for "Total Time Off" by factoring in an assumed 8 hour workday. HINT - remember how to keep SQL from performing "integer division" by dividing by a decimal!

  select [BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
	  ,[Total Time Off] = [VacationHours] + [SickLeaveHours]
	  ,[Total Days Off] = ([VacationHours] + [SickLeaveHours]) / (8.0)
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  where [SalariedFlag] = 0
  Order by [Total Time Off]