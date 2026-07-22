select round(sum(OrderQuantity*ProductPrice),2) as ventas_2022
from sales_2022
join products on sales_2022.ProductKey=products.ProductKey