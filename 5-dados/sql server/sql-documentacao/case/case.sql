declare @data datetime
set @data = getdate()-1
select @data,
    case when @data = Getdate() then 'Hoje'
    when @data < Getdate() then "Ontem"
    when @data > Getdate() then "Amanhã"
    end dia

--pode usar else

declare @data datetime
set @data = getdate()-1
select @data,
    case when @data = Getdate() then 'Hoje'
    when @data < Getdate() then 'Ontem'
    when @data > Getdate() then 'Amanhã'
    else 'não sei'
    end dia

--exemplo 

use AdventureWorks2017
SELECT productnumber,
    productline,
    CATEGORIA = CASE productline
        WHEN 'R' THEN 'Road'
        WHEN 'M' THEN 'Mountain'
        WHEN 'T' THEN 'Turing'
        WHEN 'S' THEN 'Other sale items'
        ELSE 'Not for sale' END,
    name
    FROM production.product
    ODER BY productNumber