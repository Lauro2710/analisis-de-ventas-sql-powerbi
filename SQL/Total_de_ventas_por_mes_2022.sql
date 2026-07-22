select monthname(OrderDate) as Mes,round(sum(sales_2022.OrderQuantity*ProductPrice),2) as Ventas
from sales_2022
join products on sales_2022.ProductKey=products.ProductKey
group by monthname(OrderDate)