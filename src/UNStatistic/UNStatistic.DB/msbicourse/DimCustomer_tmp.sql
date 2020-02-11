CREATE TABLE [msbicourse].[DimCustomer_tmp]
( 
     [RowID] [int] IDENTITY(1,1) NOT NULL,
     [DimCustomerKey] [int] NULL,
     [CustomerBK] [int]   NULL, 
     [contactname] [nvarchar](30)  NULL,
     [contacttitle] [nvarchar](30)  NULL,
     [city] [nvarchar](15)  NULL,
     [region] [nvarchar](15) NULL,
     [postalcode] [nvarchar](10) NULL,
     [country] [nvarchar](15)  NULL,
     [phone] [nvarchar](24)  NULL,
     [fax] [nvarchar](24) NULL,
     [IsCurrent] [int]   NULL, 
     [ValidFromDate] DATETIME NULL, 
     [ValidToDate]  DATETIME NULL,
     [action]  INT NOT NULL, 
     [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedBy] INT NOT NULL DEFAULT -1,
     [sysCreatedBy] INT NOT NULL DEFAULT -1, 
    CONSTRAINT [PK_DimCustomer_tmp] PRIMARY KEY CLUSTERED ([RowID])
)

GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'1 - to insert , 2 - update',
    @level0type = N'SCHEMA',
    @level0name = N'msbicourse',
    @level1type = N'TABLE',
    @level1name = N'DimCustomer_tmp',
    @level2type = N'COLUMN',
    @level2name = N'action'