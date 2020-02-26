CREATE VIEW [dbo].[vw_DimDate]
    AS 
    
    SELECT 
        [DateSK]
        ,[DateBK]
        ,[CalendarMonth] 
        ,[CalendarMonthLongName] 
        ,[CalendarMonthShortName] 
        ,[CalendarQuarter] 
        ,[CalendarQuarterShortName] 
        ,[CalendarYear]
        ,[CalendarYearMonth]
        ,[CalendarYearQuarter]
        ,[DayLongName] 
        ,[DayShortName] 
        ,[DayWeekNumber]
    FROM dwh.DimDate
