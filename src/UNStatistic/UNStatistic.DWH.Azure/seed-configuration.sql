
DECLARE @JSON  NVARCHAR(MAX);

SELECT @JSON = N'[
{
"ConfigurationKey": "container",
"ConfigurationValue": "unstatisticsourcedata"
},
{
"ConfigurationKey": "UNCrimepath",
"ConfigurationValue": "UNCrime"
},
{
"ConfigurationKey": "Newparam",
"ConfigurationValue": "nevalue"
}
]'



EXEC [adf].[usp_Configuration_Seed] @JSON

SELECT * FROM [adf].[Configuration]

EXEC [adf].[usp_Configuration_Get]