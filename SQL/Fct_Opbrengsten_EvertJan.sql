use Cursus

select * from [Order] where OrderType = 'Opbrengsten'

use DWH

drop table [DWH].[dbo].[fct_Opbrengsten]

CREATE TABLE [dbo].[fct_Opbrengsten](
	[SurgetKey] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[DimKey_Order] [bigint] NOT NULL,
	[DimKey_Cursus] [int] NOT NULL,
	[DimKey_Persoon] [int] NOT NULL,-- JunkFinCat toevoegen!!
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
