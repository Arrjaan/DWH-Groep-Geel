use Cursus

select * from [Order]

use DWH

drop table [DWH].[dbo].[dim_Order]

CREATE TABLE [dbo].[dim_Order](
	[DimKey] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNummer] [bigint] NULL,
	[OrderType] [varchar](32) NOT NULL,
	[OrderOmschrijving] [varchar](100) NOT NULL,
	[OrderCategorie1] [varchar](32) NULL,
	[OrderCategorie2] [nvarchar](32) NULL,
	[OrderDatum] [date] NOT NULL,
	[OrderBedrag] [decimal](10,2) NOT NULL,
	[Checksum] [int] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidUntil] [datetime] NOT NULL,
	[CurrentFlag] [bit] NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dim_Order] ADD  DEFAULT ('1900-01-01') FOR [ValidFrom]
GO

ALTER TABLE [dbo].[dim_Order] ADD  DEFAULT ('9999-12-31') FOR [ValidUntil]
GO

ALTER TABLE [dbo].[dim_Order] ADD  DEFAULT ((1)) FOR [CurrentFlag]
GO

ALTER TABLE [dbo].[dim_Order] ADD  DEFAULT ((0)) FOR [CheckSum]
GO

select * from [DWH].[dbo].[dim_Order]


-- test case updating and history

use Cursus

Update  [Cursus].[Order] set  [Cursus].[Order].[Omschrijving] = 'Dagelijks bachanaal' WHERE [Omschrijving] = 'Lunchkosten'
Update  [Cursus].[Order] set  [Cursus].[Order].[Omschrijving] = 'Lunchkosten' WHERE [Omschrijving] = 'Dagelijks bachanaal'

-- test constraints per column

use DWH

--DimKey
Update  [DWH].[dim_Order] set  [Cursus].[dim_Order].[DimKey] = 2 WHERE [DimKey] = 1 -- test uniciteit van waarden
SELECT COUNT([DimKey]), COUNT(DISTINCT([DimKey])) from [DWH].[dim_Order] -- test not null

--OrderType
SELECT COUNT([OrderType]), COUNT(DISTINCT([OrderType])) from [DWH].[dim_Order] -- test not null
--OrderOmschrijving
SELECT COUNT([OrderOmschrijving]), COUNT(DISTINCT([OrderOmschrijving])) from [DWH].[dim_Order] -- test not null
--Bedrag
SELECT COUNT([Bedrag]), COUNT(DISTINCT([Bedrag])) from [DWH].[dim_Order] -- test not null
--Checksum
SELECT COUNT([Checksum]), COUNT(DISTINCT([Checksum])) from [DWH].[dim_Order] -- test not null
--ValidUntil
SELECT COUNT([ValidUntil]), COUNT(DISTINCT([ValidUntil])) from [DWH].[dim_Order] -- test not null
--ValidFrom
SELECT COUNT([ValidFrom]), COUNT(DISTINCT([ValidFrom])) from [DWH].[dim_Order] -- test not null
--CurrentFlag
SELECT COUNT([CurrentFlag]), COUNT(DISTINCT([CurrentFlag])) from [DWH].[dim_Order] -- test not null

select * from  [DWH].[dim_Order]
