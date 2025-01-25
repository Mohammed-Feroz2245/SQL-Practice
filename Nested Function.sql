--Nested Function

--Select the "FirstName" and "LastName" columns from the "Person.Person" table (all rows). Now add a derived column called "Nickname", which is created by combining the first character of the the first name, a hyphen (-), and the first three characters of the last name

SELECT 
      [FirstName]
      
      ,[LastName]
      ,[Nickname] = LEFT([FirstName],1) + '-' + LEFT([LastName],3)
  FROM [AdventureWorks2019].[Person].[Person]



  --Cleaned Comments - a derived column in which all commas AND periods from the "Comments" field have been replaced with empty strings. HINT - you will have to nest multiple REPLACE functions.

  SELECT 
      [ReviewerName]
    
      ,[Comments]
      ,[CleanComments] = Replace(REPLACE([Comments],',',''),'.','')
  FROM [AdventureWorks2019].[Production].[ProductReview]


--Select the "FirstName" column from the "Person.Person" table (all rows). Now add the following derived columns:
--FirstNameUpper, which features the first name entirely capitalized
--FirstNameLower, which consists of the first name transformed entirely to lowercase

select [FirstName],
		[FirstNameUpper] = upper([FirstName])
		,[FirstNameLower]=Lower([FirstName])
 FROM [AdventureWorks2019].[Person].[Person]

