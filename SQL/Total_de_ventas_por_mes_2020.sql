select monthname(OrderDate) as Mes,round(sum(sales_2020.OrderQuantity*ProductPrice),2) as Ventas
from sales_2020
join products on sales_2020.ProductKey=products.ProductKey
group by monthname(OrderDate)