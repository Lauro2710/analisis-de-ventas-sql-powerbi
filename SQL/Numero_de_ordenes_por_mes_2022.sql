select count(OrderNumber),monthname(OrderDate)
from sales_2022
group by monthname(OrderDate)