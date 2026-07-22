select count(OrderNumber) as pedidos, Country
from sales_2020
join territory on sales_2020.TerritoryKey=territory.SalesTerritoryKey
group by Country