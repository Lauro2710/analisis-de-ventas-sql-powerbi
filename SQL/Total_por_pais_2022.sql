select round((sum(sales_2022.OrderQuantity*ProductPrice)),2) as Ventas, Country 
from sales_2022
join territory on sales_2022.TerritoryKey=territory.SalesTerritoryKey
join products on sales_2022.ProductKey=products.ProductKey
group by Country