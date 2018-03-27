drop table DimEmployee

CREATE TABLE [dbo].[DimEmployee](
	[DimKey] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[JobTitle] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[Gender] [nchar](1) NULL,
	[HireDate] [date] NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Checksum] [int] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidUntil] [datetime] NOT NULL,
	[CurrentFlag] [bit] NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimEmployee] ADD  DEFAULT ('1900-01-01') FOR [ValidFrom]
GO

ALTER TABLE [dbo].[DimEmployee] ADD  DEFAULT ('9999-12-31') FOR [ValidUntil]
GO

ALTER TABLE [dbo].[DimEmployee] ADD  DEFAULT ((1)) FOR [CurrentFlag]
GO

ALTER TABLE [dbo].[DimEmployee] ADD  DEFAULT ((0)) FOR [CheckSum]
GO

select * from DimEmployee


-- test case updating and history


Update  [AdventureWorks2014].[HumanResources].[Employee] set  [AdventureWorks2014].[HumanResources].[Employee].[JobTitle] = 'Coffee Manager' WHERE [JobTitle] = 'Design Engineer'
Update  [AdventureWorks2014].[HumanResources].[Employee] set  [AdventureWorks2014].[HumanResources].[Employee].[JobTitle] = 'Design Engineer' WHERE [JobTitle] = 'Coffee Manager'


select * from  [AdventureWorks2014].[HumanResources].[Employee]
