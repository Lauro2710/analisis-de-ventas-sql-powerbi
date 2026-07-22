select count(*)  as Ordenes_Canceladas_2020
from returns
where year(ReturnDate)="2020"