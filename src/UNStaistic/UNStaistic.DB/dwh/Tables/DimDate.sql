CREATE TABLE [dwh].[DimDate] (
    [DateSK] INT NOT NULL,
    [DateBK] DATE NULL,
    [CalendarMonth] SMALLINT NULL,
    [CalendarMonthLongName] NVARCHAR(9) NULL,
    [CalendarMonthShortName] NVARCHAR(3) NULL,
    [CalendarQuarter] SMALLINT NULL,
    [CalendarQuarterShortName] NVARCHAR(2) NULL,
    [CalendarYear] NVARCHAR(4) NULL,
    [CalendarYearMonth] NVARCHAR(7) NULL,
    [CalendarYearQuarter] NVARCHAR(10) NULL,
    [DayLongName] NVARCHAR(9) NULL,
    [DayShortName] NVARCHAR(3) NULL,
    [DayWeekNumber] SMALLINT NULL,
    [sysCreatedAt] DATETIME DEFAULT GETUTCDATE(),
    [sysChangedAt] DATETIME DEFAULT GETUTCDATE(),
    [sysChangedBy] INT NOT NULL DEFAULT -1,
    [sysCreatedBy] INT NOT NULL DEFAULT -1,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
[DateSK] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)