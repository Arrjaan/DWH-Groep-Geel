Create Table DimStatus (
[DeelnameId] [int] NOT NULL,
[DimKey] [bigint] IDENTITY(1,1) NOT NULL,
[Status] varchar(16) NOT NULL,
[Checksum] [int] NOT NULL,
[ValidFrom] [datetime] NOT NULL default Getdate(),
[ValidUntil] [datetime] NOT NULL default '9999-12-31',
[CurrentFlag] [bit] NOT NULL default '1'
);

Drop Table DimStatus;

Truncate Table Dimstatus;

use Cursus

Update  [Cursus].dbo.[Deelname] set  [Status] = 'Geen zin in' WHERE [DeelnameId] = 280
Update  [Cursus].dbo.[Deelname] set  [Status] = 'Deelgenomen' WHERE [DeelnameId] = 280

-- test constraints per column

use DWH

--DimKey
Update  dbo.DimStatus set  DimKey = 2 WHERE [DimKey] = 1 -- test uniciteit van waarden
SELECT COUNT([DimKey]), COUNT(DISTINCT([DimKey])) from dbo.DimStatus -- test not null

--DeelnameId
SELECT COUNT(DeelnameId), COUNT(DISTINCT(DeelnameId)) from dbo.DimStatus -- test not null
--Status
SELECT COUNT([Status]), COUNT(DISTINCT(Status)) from dbo.DimStatus -- test not null
--Checksum
SELECT COUNT([Checksum]), COUNT(DISTINCT([Checksum])) from dbo.DimStatus -- test not null
--ValidUntil
SELECT COUNT([ValidUntil]), COUNT(DISTINCT([ValidUntil])) from dbo.DimStatus -- test not null
--ValidFrom
SELECT COUNT([ValidFrom]), COUNT(DISTINCT([ValidFrom])) from dbo.DimStatus -- test not null
--CurrentFlag
SELECT COUNT([CurrentFlag]), COUNT(DISTINCT([CurrentFlag])) from dbo.DimStatus -- test not null

select * from  dbo.DimStatus