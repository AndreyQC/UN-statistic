CREATE TABLE [etl].[PackageStream](
    [PackageStreamID] [int] IDENTITY(1,1) NOT NULL,
    [PackageName] [nvarchar](50) NOT NULL,
    [StreamID] [int] NOT NULL,
    [Order] [int] NULL
)