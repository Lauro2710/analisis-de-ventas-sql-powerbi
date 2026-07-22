with total_sales as(select * from sales_2020
union
select * from sales_2021
union
select * from sales_2022)

select count(OrderNumber) as Ordenes_totales
from total_sales
join products on total_sales.ProductKey=products.ProductKey