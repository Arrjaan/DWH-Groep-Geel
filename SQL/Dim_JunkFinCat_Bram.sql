drop table [DWH].[dbo].[dim_JunkFinCat]
create table  [DWH].[dbo].[dim_JunkFinCat](
[SurgetKey] nvarchar(164),
[Omschrijving] nvarchar(100),
[OrderCategorie1] nvarchar(32),
[OrderCategorie2] nvarchar(32),
[ValidFrom] date,
[ValidUntil] date,
[Currentflag] bit default 1,
[Checksum] int
)

truncate table [DWH].[dbo].[dim_JunkFinCat]