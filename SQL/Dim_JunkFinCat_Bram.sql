drop table [DWH].[dbo].[dim_JunkFinCat]
create table  [DWH].[dbo].[dim_JunkFinCat](
[DimKey] nvarchar(164),
[Omschrijving] nvarchar(100),
[OrderCategorie1] nvarchar(32),
[OrderCategorie2] nvarchar(32))

truncate table [DWH].[dbo].[dim_JunkFinCat]