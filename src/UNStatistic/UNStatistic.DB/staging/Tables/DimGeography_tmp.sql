CREATE TABLE [staging].[DimGeography_tmp](
	[Country] [nvarchar](255) NOT NULL,
	[CountryCode] [nvarchar](3) NOT NULL,
[sysCreatedAt] datetime
    CONSTRAINT [DF_DimGeography_tmp_typed_sysCreatedAt] 
        DEFAULT GETUTCDATE(),
[sysChangedAt] datetime
    CONSTRAINT [DF_DimGeography_tmp_typed_sysChangedAt] 
        DEFAULT GETUTCDATE(),
[sysCreatedBy] int NOT NULL
    CONSTRAINT [DF_DimGeography_tmp_typed_sysCreatedBy] 
        DEFAULT -1,
[sysChangedBy] int NOT NULL
    CONSTRAINT [DF_DimGeography_tmp_typed_sysChangedBy] 
        DEFAULT -1

) ON [PRIMARY]