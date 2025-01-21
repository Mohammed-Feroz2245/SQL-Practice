--where_clause (inequality and Nulls)

select 
[PersonType],
[NameStyle],
[Title],
FirstName,
[MiddleName],
[Suffix],
[EmailPromotion],
[AdditionalContactInfo],
[Demographics],
[ModifiedDate]
from [Person].[Person]
where [PersonType] != 'IN'


select [PersonType],
[NameStyle],
[Title],
FirstName,
[MiddleName],
[Suffix],
[EmailPromotion],
[AdditionalContactInfo],
[Demographics],
[ModifiedDate] from [Person].[Person]
where [Title] is not null

select [PersonType],
[NameStyle],
[Title],
FirstName,
[MiddleName],
[Suffix],
[EmailPromotion],
[AdditionalContactInfo],
[Demographics],
[ModifiedDate] from [Person].[Person]
where [MiddleName] is null

select * from [Person].[Person]
where [Title] != 'Mr.' or [Title] is null