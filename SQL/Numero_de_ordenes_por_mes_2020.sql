select count(OrderNumber),monthname(OrderDate)
from sales_2020
group by monthname(OrderDate)