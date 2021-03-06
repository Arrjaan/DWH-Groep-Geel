DROP TABLE DWH.[dbo].[dim_Cursus]

CREATE TABLE DWH.[dbo].[dim_Cursus](
	[DimKey] int IDENTITY(1,1) PRIMARY KEY,
	[CursusId] [int] NOT NULL,
	[TrainerId] [int] NOT NULL,
	[StartDatum] [date] NOT NULL,
	[MaxAantalDeelnemers] [tinyint] NOT NULL,
	[MinAantalDeelnemers] [tinyint] NOT NULL,
	[Omschrijving] [ntext] NULL,
	[AantalDagen] [int] NOT NULL,
	[Checksum] [int] NOT NULL,
	[CurrentFlag] [bit] NOT NULL DEFAULT 1,
	[ValidFrom] [datetime] NOT NULL,
	[ValidUntil] [datetime] NOT NULL DEFAULT '9999-12-31'
)