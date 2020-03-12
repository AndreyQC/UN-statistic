CREATE TABLE [msbicourse].[FactSales] (
    [FactSalesKey]   INT      IDENTITY (1, 1) NOT NULL,
    [DimCustomerKey] INT      NOT NULL,
    [DimDateKey]     INT      NOT NULL,
    [quantity]       INT      NOT NULL,
    [sysCreatedAt]   DATETIME DEFAULT GETUTCDATE() NULL,
    [sysChangedAt]   DATETIME DEFAULT GETUTCDATE() NULL,
    [sysChangedBy]   INT      DEFAULT -1 NOT NULL,
    [sysCreatedBy]   INT      DEFAULT -1 NOT NULL,
    CONSTRAINT [PK_FactSalesKey] PRIMARY KEY CLUSTERED ([FactSalesKey] ASC)
);

