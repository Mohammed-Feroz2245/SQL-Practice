--Group BY Clause

--Q1
--Display the count of products in the Production.Product table, broken out by color.

--Q2

--Modify your code from Exercise 1 by breaking out the product count by color AND style.

--Then add a new column with the sum of the list prices for each group.

--Q3
--You are not limited to only grouping by individual fields in your data; you can actually group by derived fields as well! You just have to make sure that you include the same derived field in both your SELECT and GROUP BY.

--With that in mind, "prettify" your output from Exercise 2 by displaying "No color" in the "Color" column in place of NULL values, and "NA" in the "Style" column in place of NULL values.

SELECT [color] = isnull([Color],'No color') , [style] = isnull([Style], 'NA')
      ,Count(*) , sum([ListPrice])
  FROM [AdventureWorks2019].[Production].[Product]
  Group By Color, [Style]

  --select * FROM [AdventureWorks2019].[Production].[Product]