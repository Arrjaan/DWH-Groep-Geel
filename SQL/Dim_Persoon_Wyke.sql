CREATE TABLE Dim_Persoon(
 [Dimkey] BIGINT NOT NULL IDENTITY(1,1),     --> SK
 [PersoonID] int not null, 
 [Voornaam] varchar(50) null,
 [Tussenvoegsels] varchar(50) null, 
 [Achternaam] varchar(50) null,
 [Mailadres] varchar(128) null,
 [IsCursist] bit null,
 [IsTrainer] bit null,
 [Checksum] INT NOT NULL,
 [ValidFrom] DateTime NOT NULL DEFAULT '1900-01-01',
 [ValidUntill] DateTime NOT NULL DEFAULT '9999-12-31',
 [CurrentFlag] BIT NOT NULL DEFAULT 1
) ON [PRIMARY]; 