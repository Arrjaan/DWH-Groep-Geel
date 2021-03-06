drop table  [DWH].dbo.[dim_Persoon]
create table [DWH].dbo.[dim_Persoon](
[PersoonId]  [int] NOT NULL,
[DimKey] [bigint] IDENTITY(1,1) NOT NULL ,
[Voornaam] [varchar](50) NULL ,
[Tussenvoegsel] [varchar](50) NULL,
[Achternaam] [varchar](50) NULL,
[IsTrainer] [bit] NOT NULL,
[IsCursist] [bit] NOT NULL,
[Checksum] [int] NOT NULL,
[Currentflag] [bit] NOT NULL default 1,
[ValidFrom] [datetime] NOT NULL,
[ValidUntil]  [datetime] NOT NULL)