CREATE TABLE [msbicourse].[FactSales]
( 
     [FactSalesKey] [int] IDENTITY(1,1) NOT NULL,
     [DimCustomerKey] [int]  NOT NULL, 
     [DimDateKey] [int]  NOT NULL, 
     [quantity] [int]  NOT NULL, 
     [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedBy] INT NOT NULL DEFAULT -1,
     [sysCreatedBy] INT NOT NULL DEFAULT -1, 
    CONSTRAINT [PK_FactSalesKey] PRIMARY KEY CLUSTERED ([FactSalesKey])
)
GO
