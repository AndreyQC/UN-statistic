CREATE TABLE [staging].[uncrime_typed] (
    [FileName]      NVARCHAR (100) NULL,
    [SourceItemId]  INT            DEFAULT -1 NOT NULL,
    [RegionName]    NVARCHAR (100) NULL,
    [SubRegionName] NVARCHAR (100) NULL,
    [CountryName]   NVARCHAR (100) NULL,
    [Year]          INT            NOT NULL,
    [Count]         INT            NOT NULL,
    [sysCreatedAt]  DATETIME       DEFAULT GETUTCDATE() NULL,
    [sysChangedAt]  DATETIME       DEFAULT GETUTCDATE() NULL,
    [sysChangedBy]  INT            DEFAULT -1 NOT NULL,
    [sysCreatedBy]  INT            DEFAULT -1 NOT NULL
);

