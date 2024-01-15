SELECT Getdate() date_hora,
    Datename(day, Getdate()) DIA_N,
    Datename(month, Getdate()) MES_N,
    Datename(year, Getdate()) ANO_N

SELECT Datepart(day, Getdate()) DIA_P,
    Datepart(month, Getdate()) MES_P,
    Datepart(year, Getdate()) ANO_P

SELECT Day(Getdate()) DIA,
    Month(Getdate()) MES,
    Year(Getdate()) ANO

SELECT Datetimefromparts(2017,11,30,3,45,59,1) HORA

