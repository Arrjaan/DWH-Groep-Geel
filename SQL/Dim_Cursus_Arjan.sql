DROP TABLE DWH.[dbo].[dim_Cursus]

CREATE TABLE DWH.[dbo].[dim_Cursus](
	[DimKey] int NOT NULL,
	[CursusId] [int] NOT NULL,
	[TrainerId] [int] NOT NULL,
	[StartDatum] [date] NOT NULL,
	[MaxAantalDeelnemers] [tinyint] NOT NULL,
	[MinAantalDeelnemers] [tinyint] NOT NULL,
	[Omschrijving] [ntext] NULL,
	[AantalDagen] [int] NOT NULL,
	[Checksum] [int] NOT NULL,
	[CurrentFlag] [bit] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTill] [datetime] NOT NULL
 CONSTRAINT [PK_DimKey] PRIMARY KEY CLUSTERED 
(
	[DimKey] ASC
)
)