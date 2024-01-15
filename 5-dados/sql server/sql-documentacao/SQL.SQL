----vendas de produtos por país
select
	sod.SalesOrderID,
	P.NAME PRODUTO,
	SOD.OrderQty QUANTIDADE,
	SOD.UnitPrice PRECO_UNITARIO,
	SOD.SpecialOfferID COD_PROMO,
	SOD.UnitPriceDiscount,
	SOD.LineTotal TOTAL,
	(
		SELECT NAME FROM Sales.SalesTerritory ST
		WHERE ST.TerritoryID = SOH.TerritoryID
	) REGIAO,
	SOD.ModifiedDate DATA_VENDA
from Sales.SalesOrderDetail SOD
LEFT JOIN Production.Product P
ON SOD.ProductID = P.ProductID
LEFT JOIN Sales.SalesOrderHeader SOH
ON SOD.SalesOrderID = SOH.SalesOrderID

--vendas
SELECT 
	SOH.SalesOrderID,
	soh.DueDate,
	SOH.SalesPersonID,
	(SELECT CONCAT(P.FIRSTNAME, ' ', P.LastName) FROM Person.Person P WHERE P.BusinessEntityID = SOH.SalesPersonID) VENDEDOR,
	SP.CommissionPct PERC_COMISSAO,
	SOH.CustomerID,
	(SELECT CONCAT(P.FirstName, ' ', P.LastName) FROM Person.Person P where P.BusinessEntityID = SOH.CustomerID) CLIENTE,
	SOH.Status,
	SOH.OnlineOrderFlag ONLINE_VEND,
	ST.Name TERRITORIO,
	SOH.SubTotal SUBTOTAL,
	SOH.TaxAmt IMPOSTO,
	soh.Freight FRETE,
	SOH.TotalDue TOTAL_VENDA
FROM Sales.SalesOrderHeader SOH
LEFT JOIN Sales.Customer C
ON SOH.CustomerID = C.CustomerID
left join Sales.SalesPerson sp
on sp.BusinessEntityID = SOH.SalesPersonID
LEFT JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID