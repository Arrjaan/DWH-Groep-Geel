Create Table FctDeelname (
[FctKey] [bigint] IDENTITY(1,1) NOT NULL,
[DeelnameId] int NOT NULL Primary Key,
[Bijzonderheden] varchar(400) NULL,
[DimKey_Status] int NOT NULL,
[DimKey_Persoon] int NOT NULL,
[DimKey_Cursus] int NOT NULL,
[Checksum] [int] NOT NULL,
[ValidFrom] [datetime] NOT NULL default Getdate(),
[ValidUntil] [datetime] NOT NULL default '9999-12-31',
[CurrentFlag] [bit] NOT NULL default '1'
);

Drop table dbo.FctDeelname;

Select * From FctDeelname Where DeelnameId = 266;

Truncate Table FctDeelname;