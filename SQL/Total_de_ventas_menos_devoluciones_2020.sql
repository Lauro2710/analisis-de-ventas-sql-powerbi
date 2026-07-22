with devoluciones as(select round(sum((returnQuantity*ProductPrice)),2) as Total_de_devolucion
from returns
join products on returns.ProductKey=products.ProductKey
where year(ReturnDate)=2020)

select (sum(OrderQuantity*ProductPrice))-(select * from devoluciones) as ventas_2020 
from sales_2020
join products on sales_2020.ProductKey=products.ProductKey