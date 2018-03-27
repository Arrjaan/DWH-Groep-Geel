Create Table FctDeelname (
[DeelnameId] int NOT NULL,
[CursusId] int NOT NULL,
[CursistId] int NOT NULL,
[Bijzonderheden] varchar(400) NULL,
[Status] varchar(16) NOT NULL,
[Checksum] [int] NOT NULL,
[ValidFrom] [datetime] NOT NULL default Getdate(),
[ValidUntil] [datetime] NOT NULL default '9999-12-31',
[CurrentFlag] [bit] NOT NULL default '1'
);