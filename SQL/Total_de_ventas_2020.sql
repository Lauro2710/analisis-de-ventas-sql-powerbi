select round(sum(OrderQuantity*ProductPrice),2) as ventas_2020 
from sales_2020
join products on sales_2020.ProductKey=products.ProductKey