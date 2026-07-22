select count(*) as Devoluciones_2021
from returns
where year(returnDate)=2021
