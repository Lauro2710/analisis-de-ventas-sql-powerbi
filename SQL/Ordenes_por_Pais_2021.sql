select count(OrderNumber) as pedidos, Country
from sales_2021
join territory on sales_2021.TerritoryKey=territory.SalesTerritoryKey
group by Country