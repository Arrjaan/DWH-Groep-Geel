Create Table DimStatus (
[DeelnameId] [int] NOT NULL,
[DimKey] [bigint] IDENTITY(1,1) NOT NULL,
[Status] nvarchar(16) NOT NULL,
[Checksum] [int] NOT NULL,
[ValidFrom] [datetime] NOT NULL,
[ValidUntil] [datetime] NOT NULL,
[CurrentFlag] [bit] NOT NULL
);

Drop Table DimStatus;