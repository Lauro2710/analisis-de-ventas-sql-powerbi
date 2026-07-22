select round(sum((returnQuantity*ProductPrice)),2) as Total_de_devolucion
from returns
join products on returns.ProductKey=products.ProductKey
where year(ReturnDate)=2020
