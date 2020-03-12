CREATE TABLE [adf].[Configuration] (
    [ConfigurationId]    INT            IDENTITY (1, 1) NOT NULL,
    [ConfigurationKey]   NVARCHAR (150) NOT NULL,
    [ConfigurationValue] NVARCHAR (500) NOT NULL,
    [sysCreatedAt]       DATETIME       CONSTRAINT [DF_Configuration_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt]       DATETIME       CONSTRAINT [DF_Configuration_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]       INT            CONSTRAINT [DF_Configuration_sysCreatedBy] DEFAULT ((-1)) NULL,
    [sysChangedBy]       INT            CONSTRAINT [DF_Configuration_sysChangedBy] DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_Configuration] PRIMARY KEY CLUSTERED ([ConfigurationId] ASC),
    CONSTRAINT [UQ_ConfigurationKey] UNIQUE NONCLUSTERED ([ConfigurationKey] ASC)
);



