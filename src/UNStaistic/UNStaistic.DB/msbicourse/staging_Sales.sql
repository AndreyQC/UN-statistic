CREATE TABLE [msbicourse].[staging_FactSales]
(
 [custid] [int]  NOT NULL,
 [ordermonth] [nvarchar](40) NOT NULL,
 [qty] [nvarchar](40) NOT NULL,
    [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
     [sysChangedBy] INT NOT NULL DEFAULT -1,
     [sysCreatedBy] INT NOT NULL DEFAULT -1, 
)
