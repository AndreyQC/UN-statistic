CREATE PROCEDURE [adf].[usp_PipelineExecutionHistory_Create]
(
    @PipelineName [NVARCHAR](255),
    @PipelineRunId [NVARCHAR](255)
)
AS
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
            INSERT INTO [adf].[PipelineExecutionHistory]
                       (
                       [PipelineName],
                       [PipelineRunId],
                       [Status],
                       [executionstart]
                       )
                 VALUES
                       (
                       @PipelineName,
                       @PipelineRunId,
                       N'Started',
                       GETUTCDATE()
                       )
            
        COMMIT TRANSACTION;
    END TRY

    BEGIN CATCH
        DECLARE @ErrorMessage [NVARCHAR](4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SET @ErrorMessage = ERROR_MESSAGE();
        SET @ErrorSeverity = ERROR_SEVERITY();
        SET @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        IF @@TRANCOUNT > 0
            BEGIN
                ROLLBACK TRANSACTION;
            END
    END CATCH
