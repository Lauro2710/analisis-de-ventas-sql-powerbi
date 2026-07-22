with total_sales as(select * from sales_2020
union
select * from sales_2021
union
select * from sales_2022)

select round(sum(total_sales.OrderQuantity*ProductPrice),2) as Total_de_venta, round(sum(total_sales.OrderQuantity*ProductCost),2) as Costo_total, year(OrderDate) as Año
from total_sales
join products on total_sales.ProductKey=products.ProductKey
group by year(OrderDate)