select round(sum(OrderQuantity*ProductPrice),2) as ventas_2021
from sales_2021
join products on sales_2021.ProductKey=products.ProductKey