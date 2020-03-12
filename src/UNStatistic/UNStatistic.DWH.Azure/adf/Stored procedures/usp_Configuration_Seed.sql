

CREATE PROCEDURE [adf].[usp_Configuration_Seed]
(
    @JSON NVARCHAR(MAX)
)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

            DELETE FROM [adf].[Configuration];

            INSERT INTO [adf].[Configuration]
                       (
                        [ConfigurationKey],
                        [ConfigurationValue]
                    )
            SELECT 
                [ConfigurationKey],
                [ConfigurationValue]
            FROM OPENJSON(@JSON)
              WITH (
                        [ConfigurationKey]               NVARCHAR(150) '$.ConfigurationKey',
                        [ConfigurationValue]             NVARCHAR(500) '$.ConfigurationValue'
                    );
            
        COMMIT TRANSACTION;
    END TRY

    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000);
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
END;