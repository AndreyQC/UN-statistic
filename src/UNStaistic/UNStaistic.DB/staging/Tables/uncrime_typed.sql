CREATE TABLE [staging].[uncrime_typed] 
(
    [FileName] NVARCHAR(100) NULL,
    [SourceItemId] INT NOT NULL  DEFAULT -1,
    [RegionName] NVARCHAR(100) NULL,
    [SubRegionName] NVARCHAR(100) NULL,
    [CountryName] NVARCHAR(100) NULL,
    [Year] INT NOT NULL,
    [Count] INT NOT NULL,
    [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
    [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
    [sysChangedBy] INT NOT NULL DEFAULT -1,
    [sysCreatedBy] INT NOT NULL DEFAULT -1,
)