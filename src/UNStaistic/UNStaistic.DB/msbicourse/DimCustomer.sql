CREATE TABLE [msbicourse].[DimCustomer]
( 
     [DimCustomerKey] [int] IDENTITY(1,1) NOT NULL,
     [CustomerBK] [int]  NOT NULL, 
     [contactname] [nvarchar](30) NOT NULL,
     [contacttitle] [nvarchar](30) NOT NULL,
     [city] [nvarchar](15) NOT NULL,
     [region] [nvarchar](15) NULL,
     [postalcode] [nvarchar](10) NULL,
     [country] [nvarchar](15) NOT NULL,
     [phone] [nvarchar](24) NOT NULL,
     [fax] [nvarchar](24) NULL,
     [IsCurrent] [int]  NOT NULL, 
     [ValidFromDate] DATETIME DEFAULT GETUTCDATE(), 
     [ValidToDate]  DATETIME NULL,
     [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedBy] INT NOT NULL DEFAULT -1,
     [sysCreatedBy] INT NOT NULL DEFAULT -1, 
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([DimCustomerKey])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'business key of entry (custid)',
    @level0type = N'SCHEMA',
    @level0name = N'msbicourse',
    @level1type = N'TABLE',
    @level1name = N'DimCustomer',
    @level2type = N'COLUMN',
    @level2name = N'CustomerBK'