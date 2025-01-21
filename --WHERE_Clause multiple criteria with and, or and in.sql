--WHERE_Clause multiple criteria with and, or and in



SELECT /* [BusinessEntityID]
      ,[NameStyle]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
	  */
	  [PersonType]
	  ,[Title]
	  ,[FirstName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  where [FirstName] = 'Laura' and [LastName] = 'Norman'

SELECT /* [BusinessEntityID]
      ,[NameStyle]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
	  */
	  [PersonType]
	  ,[Title]
	  ,[FirstName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  where [PersonType] in ('SP', 'EM', 'Vc')
 

