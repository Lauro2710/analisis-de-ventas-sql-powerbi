select round((sum(sales_2021.OrderQuantity*ProductPrice)),2) as Ventas, Country 
from sales_2021
join territory on sales_2021.TerritoryKey=territory.SalesTerritoryKey
join products on sales_2021.ProductKey=products.ProductKey
group by Country