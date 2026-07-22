select count(*) as Devoluciones_2022
from returns
where year(returnDate)=2022
