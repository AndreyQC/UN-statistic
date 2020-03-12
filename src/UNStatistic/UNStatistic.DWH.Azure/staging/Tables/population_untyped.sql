﻿CREATE TABLE [staging].[population_untyped] (
    [FileName]      NVARCHAR (100) NULL,
    [SourceItemId]  NVARCHAR (100) CONSTRAINT [DF_population_untyped_SourceItemId] DEFAULT (N'-1') NULL,
    [CountryName]   NVARCHAR (100) NULL,
    [CountryCode]   NVARCHAR (100) NULL,
    [IndicatorName] NVARCHAR (100) NULL,
    [IndicatorCode] NVARCHAR (100) NULL,
    [1960]          NVARCHAR (100) NULL,
    [1961]          NVARCHAR (100) NULL,
    [1962]          NVARCHAR (100) NULL,
    [1963]          NVARCHAR (100) NULL,
    [1964]          NVARCHAR (100) NULL,
    [1965]          NVARCHAR (100) NULL,
    [1966]          NVARCHAR (100) NULL,
    [1967]          NVARCHAR (100) NULL,
    [1968]          NVARCHAR (100) NULL,
    [1969]          NVARCHAR (100) NULL,
    [1970]          NVARCHAR (100) NULL,
    [1971]          NVARCHAR (100) NULL,
    [1972]          NVARCHAR (100) NULL,
    [1973]          NVARCHAR (100) NULL,
    [1974]          NVARCHAR (100) NULL,
    [1975]          NVARCHAR (100) NULL,
    [1976]          NVARCHAR (100) NULL,
    [1977]          NVARCHAR (100) NULL,
    [1978]          NVARCHAR (100) NULL,
    [1979]          NVARCHAR (100) NULL,
    [1980]          NVARCHAR (100) NULL,
    [1981]          NVARCHAR (100) NULL,
    [1982]          NVARCHAR (100) NULL,
    [1983]          NVARCHAR (100) NULL,
    [1984]          NVARCHAR (100) NULL,
    [1985]          NVARCHAR (100) NULL,
    [1986]          NVARCHAR (100) NULL,
    [1987]          NVARCHAR (100) NULL,
    [1988]          NVARCHAR (100) NULL,
    [1989]          NVARCHAR (100) NULL,
    [1990]          NVARCHAR (100) NULL,
    [1991]          NVARCHAR (100) NULL,
    [1992]          NVARCHAR (100) NULL,
    [1993]          NVARCHAR (100) NULL,
    [1994]          NVARCHAR (100) NULL,
    [1995]          NVARCHAR (100) NULL,
    [1996]          NVARCHAR (100) NULL,
    [1997]          NVARCHAR (100) NULL,
    [1998]          NVARCHAR (100) NULL,
    [1999]          NVARCHAR (100) NULL,
    [2000]          NVARCHAR (100) NULL,
    [2001]          NVARCHAR (100) NULL,
    [2002]          NVARCHAR (100) NULL,
    [2003]          NVARCHAR (100) NULL,
    [2004]          NVARCHAR (100) NULL,
    [2005]          NVARCHAR (100) NULL,
    [2006]          NVARCHAR (100) NULL,
    [2007]          NVARCHAR (100) NULL,
    [2008]          NVARCHAR (100) NULL,
    [2009]          NVARCHAR (100) NULL,
    [2010]          NVARCHAR (100) NULL,
    [2011]          NVARCHAR (100) NULL,
    [2012]          NVARCHAR (100) NULL,
    [2013]          NVARCHAR (100) NULL,
    [2014]          NVARCHAR (100) NULL,
    [2015]          NVARCHAR (100) NULL,
    [2016]          NVARCHAR (100) NULL,
    [2017]          NVARCHAR (100) NULL,
    [2018]          NVARCHAR (100) NULL,
    [2019]          NVARCHAR (100) NULL,
    [sysCreatedAt]  DATETIME       CONSTRAINT [DF_population_untyped_sysCreatedAt] DEFAULT GETUTCDATE() NULL,
    [sysChangedAt]  DATETIME       CONSTRAINT [DF_population_untyped_sysChangedAt] DEFAULT GETUTCDATE() NULL,
    [sysCreatedBy]  INT            CONSTRAINT [DF_population_untyped_sysCreatedBy] DEFAULT -1 NOT NULL,
    [sysChangedBy]  INT            CONSTRAINT [DF_population_untyped_sysChangedBy] DEFAULT -1 NOT NULL
);

