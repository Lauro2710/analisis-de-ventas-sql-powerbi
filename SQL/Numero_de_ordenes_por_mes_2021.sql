select count(OrderNumber),monthname(OrderDate)
from sales_2021
group by monthname(OrderDate)