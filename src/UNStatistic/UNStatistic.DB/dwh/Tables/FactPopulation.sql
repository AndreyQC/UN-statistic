CREATE TABLE [dwh].[FactPopulation]
(
	[FactPopulationKey]	INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[DimGeographyKey]	INT NOT NULL DEFAULT -1,
	[DimDateKey]		INT NOT NULL DEFAULT -1,
	[Population]		BIGINT NOT NULL,
	[sysCreatedAt]		DATETIME DEFAULT GETUTCDATE(),
	[sysChangedAt]		DATETIME DEFAULT GETUTCDATE(),
	[sysChangedBy]		INT NOT NULL DEFAULT -1,
	[sysCreatedBy]		INT NOT NULL DEFAULT -1
)
