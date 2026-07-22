with devoluciones as(select round(sum((returnQuantity*ProductPrice)),2) as Total_de_devolucion
from returns
join products on returns.ProductKey=products.ProductKey
where year(ReturnDate)=2022)

select (sum(OrderQuantity*ProductPrice))-(select * from devoluciones) as ventas_2022
from sales_2022
join products on sales_2022.ProductKey=products.ProductKey