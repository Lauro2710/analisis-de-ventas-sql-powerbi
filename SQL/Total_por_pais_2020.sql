select round((sum(sales_2020.OrderQuantity*ProductPrice)),2) as Ventas, Country 
from sales_2020
join territory on sales_2020.TerritoryKey=territory.SalesTerritoryKey
join products on sales_2020.ProductKey=products.ProductKey
group by Country