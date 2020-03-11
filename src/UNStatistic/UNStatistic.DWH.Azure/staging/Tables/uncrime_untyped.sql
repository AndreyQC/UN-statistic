CREATE TABLE [staging].[uncrime_untyped] (
    [FileName]      NVARCHAR (100) NULL,
    [SourceItemId]  INT            DEFAULT -1 NOT NULL,
    [RegionName]    NVARCHAR (100) NULL,
    [SubRegionName] NVARCHAR (100) NULL,
    [CountryName]   NVARCHAR (100) NULL,
    [Year]          NVARCHAR (100) NULL,
    [Count]         NVARCHAR (100) NULL,
    [sysCreatedAt]  DATETIME       DEFAULT GETUTCDATE() NULL,
    [sysChangedAt]  DATETIME       DEFAULT GETUTCDATE() NULL,
    [sysChangedBy]  INT            DEFAULT -1 NOT NULL,
    [sysCreatedBy]  INT            DEFAULT -1 NOT NULL
);

