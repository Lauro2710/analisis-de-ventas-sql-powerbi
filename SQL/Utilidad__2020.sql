select round(sum(OrderQuantity*(ProductPrice-ProductCost)),2) as total_de_ordenes_2020
from sales_2020
join products on sales_2020.ProductKey=products.ProductKey