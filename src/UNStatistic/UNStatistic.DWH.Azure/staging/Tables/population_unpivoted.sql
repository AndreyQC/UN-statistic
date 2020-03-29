CREATE TABLE [staging].[population_unpivoted]
(
	[RowId]	INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	[Year]	CHAR(4)  NOT NULL,
	[CountryCode]	CHAR(3) NOT NULL,
	[Population]	BIGINT NOT NULL,
    [sysCreatedAt] datetime
        CONSTRAINT [DF_population_unpivoted_sysCreatedAt] 
            DEFAULT GETUTCDATE(),
    [sysChangedAt] [DateTime]
        CONSTRAINT [DF_population_unpivoted_sysChangedAt] 
            DEFAULT GETUTCDATE(),
    [sysCreatedBy] int NOT NULL
        CONSTRAINT [DF_population_unpivoted_sysCreatedBy] 
            DEFAULT -1,
    [sysChangedBy] int NOT NULL
        CONSTRAINT [DF_population_unpivoted_sysChangedBy] 
            DEFAULT -1
)