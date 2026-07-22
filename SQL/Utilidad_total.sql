with total_sales as(select * from sales_2020
union
select * from sales_2021
union
select * from sales_2022)

select round((sum(OrderQuantity*products.ProductPrice)-sum(OrderQuantity*products.ProductCost)),2) as Utilidad_total
from total_sales
join products on total_sales.ProductKey=products.ProductKey