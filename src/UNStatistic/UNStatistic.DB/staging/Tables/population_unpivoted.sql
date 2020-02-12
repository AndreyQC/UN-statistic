CREATE TABLE [staging].[population_unpivoted]
(
	[RowId]	INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[Year]	CHAR(4)  NOT NULL,
	[CountryCode]	CHAR(3) NOT NULL,
	[Population]	BIGINT NOT NULL,
	[sysCreatedAt]	DATETIME DEFAULT GETUTCDATE(),
	[sysChangedAt]	DATETIME DEFAULT GETUTCDATE(),
	[sysChangedBy]	INT NOT NULL DEFAULT -1,
	[sysCreatedBy]	INT NOT NULL DEFAULT -1
)