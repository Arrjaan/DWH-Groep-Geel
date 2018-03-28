
CREATE VIEW 
[Persoon_Cursist] 
AS SELECT 
[DimKey] AS [Cursist_DimKey],
[Voornaam] AS [Cursist_Voornaam],
[Tussenvoegsel] AS [Cursist_Tussenvoegsel],
[Achternaam] AS [Cursist_Achternaam],
[Checksum] AS [Cursist_Checksum],
[Currentflag] AS [Cursist_Currentflag],
[ValidFrom] AS [Cursist_ValidFrom],
[ValidUntil] AS [Cursist_ValidUntil]
FROM [dim_Persoon]
WHERE 
 [dim_Persoon].[isCursist] = 1

 CREATE VIEW 
[Persoon_Trainer] 
AS SELECT 
[DimKey] AS [Trainer_DimKey],
[Voornaam] AS [Trainer_Voornaam],
[Tussenvoegsel] AS [Trainer_Tussenvoegsel],
[Achternaam] AS [Trainer_Achternaam],
[Checksum] AS [Trainer_Checksum],
[Currentflag] AS [Trainer_Currentflag],
[ValidFrom] AS [Trainer_ValidFrom],
[ValidUntil] AS [Trainer_ValidUntil]
FROM [dim_Persoon]
WHERE 
 [dim_Persoon].[isTrainer] = 1

