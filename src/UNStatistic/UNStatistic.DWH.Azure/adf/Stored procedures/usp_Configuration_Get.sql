-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [adf].[usp_Configuration_Get]
AS
BEGIN
/*
 Do not blame me for this code. There is a limitation in ADF with manipulating with sets
*/
    SET NOCOUNT ON
    BEGIN
        --SELECT 
        --    datalakecontainer =  (SELECT [ConfigurationValue] FROM [adf].[Configuration] WHERE [ConfigurationKey]='datalakecontainer'),
        --    datalakefolderstaging =  (SELECT [ConfigurationValue] FROM [adf].[Configuration] WHERE [ConfigurationKey]='datalakefolderstaging'),
        --    datalakefolderods =  (SELECT [ConfigurationValue] FROM [adf].[Configuration] WHERE [ConfigurationKey]='datalakefolderods')

        DECLARE @cols AS NVARCHAR(MAX),
            @query  AS NVARCHAR(MAX)

        select @cols = STUFF((SELECT ',' + QUOTENAME([ConfigurationKey]) 
                            from [adf].[Configuration]
                            group by [ConfigurationKey], [ConfigurationId]
                            order by [ConfigurationId]
                    FOR XML PATH(''), TYPE
                    ).value('.', 'NVARCHAR(MAX)') 
                ,1,1,'')

        set @query = N'SELECT ' + @cols + N' from 
                     (
                        select [ConfigurationValue], [ConfigurationKey]
                        from [adf].[Configuration]
                    ) x
                    pivot 
                    (
                        max([ConfigurationValue])
                        for [ConfigurationKey] in (' + @cols + N')
                    ) p '
        exec sp_executesql @query;

    END
END

