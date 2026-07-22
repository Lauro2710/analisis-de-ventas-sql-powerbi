select round(sum(OrderQuantity*(ProductPrice-ProductCost)),2) as total_de_ordenes_2022
from sales_2022
join products on sales_2022.ProductKey=products.ProductKey