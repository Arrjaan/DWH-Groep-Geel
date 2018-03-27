use DWH 
CREATE TABLE Fct_Resultaten(
[DimKey] BIGINT NOT NULL IDENTITY(1,1),
[PersoonID] int not null,
[CursusID] int not null,
[Geslaagd] bit not null, 
[DatumGeslaagd] date not null,
[Checksum] INT NOT NULL,
[ValidFrom] DateTime NOT NULL DEFAULT '1900-01-01',
[ValidUntill] DateTime NOT NULL DEFAULT '9999-12-31',
[CurrentFlag] BIT NOT NULL DEFAULT 1
) ON [PRIMARY];