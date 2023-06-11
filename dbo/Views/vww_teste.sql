create view vww_teste
as
select	top 10 c.CustomerID, c.CompanyName
from	OrdersBig o
join	CustomersBig c
	on	o.CustomerID = c.CustomerID