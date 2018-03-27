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