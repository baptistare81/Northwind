create procedure usp_teste_2
as
select	c.CustomerID, c.CompanyName
from	OrdersBig o
join	CustomersBig c
	on	o.CustomerID = c.CustomerID