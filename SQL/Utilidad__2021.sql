select round(sum(OrderQuantity*(ProductPrice-ProductCost)),2) as total_de_ordenes_2021
from sales_2021
join products on sales_2021.ProductKey=products.ProductKey