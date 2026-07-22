select count(OrderNumber) as pedidos, Country
from sales_2022
join territory on sales_2022.TerritoryKey=territory.SalesTerritoryKey
group by Country