Create Table DimStatus (
[DeelnameId] [int] NOT NULL,
[DimKey] [bigint] IDENTITY(1,1) NOT NULL,
[Status] nvarchar(16) NOT NULL,
[Checksum] [int] NOT NULL,
[ValidFrom] [datetime] NOT NULL default Getdate(),
[ValidUntill] [datetime] NOT NULL default '9999-12-31',
[CurrentFlag] [bit] NOT NULL default '1'
);

Drop Table DimStatus;