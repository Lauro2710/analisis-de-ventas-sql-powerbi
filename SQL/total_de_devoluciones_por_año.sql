select round(sum((returnQuantity*ProductPrice)),2) as devoluciones_de_venta, round(sum((returnQuantity*ProductCost)),2) as devoluciones_de_costo,year(ReturnDate) as año
from returns
join products on returns.ProductKey=products.ProductKey
group by year(ReturnDate)