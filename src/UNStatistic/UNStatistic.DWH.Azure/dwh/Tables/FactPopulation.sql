CREATE TABLE [dwh].[FactPopulation] (
    [FactPopulation]    INT      IDENTITY (1, 1) NOT NULL,
    [FactPopulationKey] INT      DEFAULT -1 NOT NULL,
    [DimGeographyKey]   INT      DEFAULT -1 NOT NULL,
    [DimDateKey]        INT      DEFAULT -1 NOT NULL,
    [Population]        BIGINT   NOT NULL,
    [sysCreatedAt]      DATETIME DEFAULT GETUTCDATE() NULL,
    [sysChangedAt]      DATETIME DEFAULT GETUTCDATE() NULL,
    [sysChangedBy]      INT      DEFAULT -1 NOT NULL,
    [sysCreatedBy]      INT      DEFAULT -1 NOT NULL,
    PRIMARY KEY CLUSTERED ([FactPopulation] ASC)
);

