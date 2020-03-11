CREATE TABLE [msbicourse].[staging_FactSales] (
    [custid]       INT           NOT NULL,
    [ordermonth]   NVARCHAR (40) NOT NULL,
    [qty]          NVARCHAR (40) NOT NULL,
    [sysCreatedAt] DATETIME      DEFAULT GETUTCDATE() NULL,
    [sysChangedAt] DATETIME      DEFAULT GETUTCDATE() NULL,
    [sysChangedBy] INT           DEFAULT -1 NOT NULL,
    [sysCreatedBy] INT           DEFAULT -1 NOT NULL
);

