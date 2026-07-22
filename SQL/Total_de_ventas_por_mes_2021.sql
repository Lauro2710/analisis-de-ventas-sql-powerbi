select monthname(OrderDate) as Mes,round(sum(sales_2021.OrderQuantity*ProductPrice),2) as Ventas
from sales_2021
join products on sales_2021.ProductKey=products.ProductKey
group by monthname(OrderDate)