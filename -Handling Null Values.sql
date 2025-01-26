--Handling Null Values

SELECT [Name]
      ,[Color]
	  ,[Colorformatted] = isnull([Color], 'None')
      ,[Weight]
     FROM [AdventureWorks2019].[Production].[Product]
	 Where isnull([Weight],0) < 10