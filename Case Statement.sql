--Case Statement


--Select a derived column called "Price Category" from the "Production.Product" table such that:
--If the list price is greater than $1,000, return "Premium".
--If the list price is greater than $100 and less than $1,000, return "Mid-Range".
--If the list price is less than $100, return "Value". This should be the default case.
--Also include Name and ListPrice as columns in your output.

SELECT [Name],[ListPrice], 
		[PriceCategory] =
		case 
		when [ListPrice] > 1000 then 'Premium'
		when [ListPrice] Between 100 and 1000 then 'Midrange'
		when [ListPrice] < 100 then 'Value'
		else 'Other'
		end
  FROM [AdventureWorks2019].[Production].[Product]




--Select a derived column called "Employee Tenure" from the "HumanResources.Employee" table such that:
--If an employee is salaried, and has been with the company 15 or more years (calculated as the DATEDIFF in YEARs between the "HireDate" value and the current date), return "Non-Exempt - 15+ Years".
--If an employee is salaried, and has been with the company less than 15 years, return "Non-Exempt - < 15 Years".
--If an employee is NOT salaried, and has been with the company 15 or more years (calculated as the DATEDIFF in YEARs between the "HireDate" value and the current date), return "Exempt - 15+ Years".
--If an employee is NOT salaried, and has been with the company less than 15 years, return "Exempt - < 15 Years". This should be the default case.
--Also include BusinessEntityID, HireDate, and SalariedFlag as columns in your output.

SELECT [BusinessEntityID]
      ,[HireDate]
      ,[SalariedFlag]
      ,[Years Worked] = DATEDIFF(Year, [HireDate],getdate())
	  ,[Employee Tenure] = 
	  case
	  when [SalariedFlag] = 1 and DATEDIFF(Year, [HireDate],getdate()) >15 then 'Non-Exempt-15+ Years'
	  when [SalariedFlag] = 1 and DATEDIFF(Year, [HireDate],getdate()) <15 then 'Non-Exempt-<15 Years'
	  when [SalariedFlag] = 0 and DATEDIFF(Year, [HireDate],getdate()) >15 then 'Exempt-15+ Years'
	  Else 'Exempt-<15 Years'
	  END
  FROM [AdventureWorks2019].[HumanResources].[Employee]
