 --Where_clause (Wild Cards)


SELECT *
  FROM [AdventureWorks2019].[Person].[Person]
  where [FirstName] like 'A%'



select * from [Person].[Person]
where firstname like 'T%' and MiddleName like 'L%' and LastName like 'C%'

select * from [Person].[Person]
where FirstName not like '%[a,e,i,o,u]%'