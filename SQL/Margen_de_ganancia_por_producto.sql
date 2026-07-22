select ProductName, round((((ProductPrice-ProductCost)/ProductPrice)*100),2) as margen_de_ganancia
from products
order by margen_de_ganancia desc