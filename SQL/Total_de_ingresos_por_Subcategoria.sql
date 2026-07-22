with total_sales as(select * from sales_2020
union
select * from sales_2021
union
select * from sales_2022)

select round(sum(OrderQuantity*ProductPrice),2) as Ventas_por_subcategoria, SubcategoryName
from total_sales
join products on total_sales.ProductKey=products.ProductKey
join product_subcategories on products.ProductSubcategoryKey=product_subcategories.ProductSubcategoryKey
group by SubcategoryName