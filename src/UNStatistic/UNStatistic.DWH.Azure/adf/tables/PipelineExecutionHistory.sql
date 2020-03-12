CREATE TABLE [adf].[PipelineExecutionHistory] (
    [PipelineExecutionHistoryId] INT            IDENTITY (1, 1) NOT NULL,
    [PipelineName]               NVARCHAR (255) NOT NULL,
    [PipelineRunId]              NVARCHAR (255) NOT NULL,
    [Status]                     NVARCHAR (255) NULL,
    [Description]                NVARCHAR (MAX) NULL,
    [executionstart]             DATETIME       CONSTRAINT [DF_PipelineExecutionHistory_executionstart] DEFAULT (getutcdate()) NULL,
    [executionend]               DATETIME       NULL,
    [sysCreatedAt]               DATETIME       CONSTRAINT [DF_PipelineExecutionHistory_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt]               DATETIME       CONSTRAINT [DF_PipelineExecutionHistory_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]               INT            CONSTRAINT [DF_PipelineExecutionHistory_sysCreatedBy] DEFAULT ((-1)) NULL,
    [sysChangedBy]               INT            CONSTRAINT [DF_PipelineExecutionHistory_sysChangedBy] DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_PipelineExecutionHistory] PRIMARY KEY CLUSTERED ([PipelineExecutionHistoryId] ASC)
);


