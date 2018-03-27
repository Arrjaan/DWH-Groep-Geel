use Cursus

select * from [Order] where OrderType = 'Opbrengsten'

use DWH

drop table [DWH].[dbo].[fct_Opbrengsten]

CREATE TABLE [dbo].[fct_Opbrengsten](
	[DimKey] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNummer] [bigint] NULL,
	[OrderBedrag_sum] [decimal](10,2) NOT NULL,
	[OrderBedrag_avg] [decimal](10,2) NOT NULL,
	[OrderBedrag_count] [int] NULL,
	[Checksum] [int] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidUntil] [datetime] NOT NULL,
	[CurrentFlag] [bit] NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[fct_Opbrengsten] ADD  DEFAULT ('1900-01-01') FOR [ValidFrom]
GO

ALTER TABLE [dbo].[fct_Opbrengsten] ADD  DEFAULT ('9999-12-31') FOR [ValidUntil]
GO

ALTER TABLE [dbo].[fct_Opbrengsten] ADD  DEFAULT ((1)) FOR [CurrentFlag]
GO

ALTER TABLE [dbo].[fct_Opbrengsten] ADD  DEFAULT ((0)) FOR [CheckSum]
GO

select * from [DWH].[dbo].[fct_Opbrengsten]


-- test case updating and history: Add new

use [Cursus]

SELECT COUNT([DimKey]) FROM [DWH].[dbo].[dim_Order]

Update  [Cursus].[dbo].[Order] set  [Cursus].[dbo].[Order].[Omschrijving] = 'Dagelijks bachanaal' WHERE [Omschrijving] = 'Lunchkosten'

--Run package in Visual Studio

SELECT * FROM [DWH].[dbo].[dim_Order] WHERE CurrentFlag = 0
SELECT COUNT([DimKey]) FROM [DWH].[dbo].[dim_Order]


-- test case updating and history: Remove old

SELECT COUNT([DimKey]) FROM [DWH].[dbo].[dim_Order]

Update  [Cursus].[dbo].[Order] set  [Cursus].[dbo].[Order].[Omschrijving] = 'Lunchkosten' WHERE [Omschrijving] = 'Dagelijks bachanaal'

--Run package in Visual Studio

SELECT * FROM [DWH].[dbo].[dim_Order] WHERE CurrentFlag = 0
SELECT COUNT([DimKey]) FROM [DWH].[dbo].[dim_Order]




-- test constraints per column

use DWH

--DimKey
Update  [DWH].[dbo].[dim_Order] set  [Cursus].[dim_Order].[DimKey] = 2 WHERE [DimKey] = 1 -- test uniciteit van waarden als verieste
SELECT COUNT([DimKey]), COUNT(DISTINCT([DimKey])) from [DWH].[dbo].[dim_Order] -- test uniciteit van waarden in tabel

--OrderType
SELECT * from [DWH].[dbo].[dim_Order] WHERE [OrderType] IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set [OrderType] = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 

--OrderOmschrijving
SELECT * from [DWH].[dbo].[dim_Order] WHERE OrderOmschrijving IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set OrderOmschrijving = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 

--Bedrag
SELECT * from [DWH].[dbo].[dim_Order] WHERE [OrderBedrag] IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set [OrderBedrag] = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 

--Checksum
SELECT * from [DWH].[dbo].[dim_Order] WHERE [Checksum] IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set [Checksum] = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 

--ValidUntil
SELECT * from [DWH].[dbo].[dim_Order] WHERE [ValidUntil] IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set [ValidUntil] = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 

--ValidFrom
SELECT * from [DWH].[dbo].[dim_Order] WHERE [ValidFrom] IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set [ValidFrom] = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 

--CurrentFlag
SELECT * from [DWH].[dbo].[dim_Order] WHERE [CurrentFlag] IS NULL-- test no nulls present

SELECT * into dim_Order_copy from [DWH].[dbo].[dim_Order] --test nulls not insertable
update [DWH].[dbo].[dim_Order_copy] set [CurrentFlag] = NULL where [DimKey] = 1
select * from [DWH].[dbo].[dim_Order_copy] where DimKey = 1
drop table dim_Order_copy 


select * from  [DWH].[dbo].[dim_Order]


