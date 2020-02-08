CREATE TABLE [msbicourse].[staging_Customer]
(
 [custid] [int] IDENTITY(1,1) NOT NULL,
 [companyname] [nvarchar](40) NOT NULL,
 [contactname] [nvarchar](30) NOT NULL,
 [contacttitle] [nvarchar](30) NOT NULL,
 [address] [nvarchar](60) NOT NULL,
 [city] [nvarchar](15) NOT NULL,
 [region] [nvarchar](15) NULL,
 [postalcode] [nvarchar](10) NULL,
 [country] [nvarchar](15) NOT NULL,
 [phone] [nvarchar](24) NOT NULL,
 [fax] [nvarchar](24) NULL,
)
