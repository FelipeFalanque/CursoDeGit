select o.OrderID,
	o.OrderDate,
	month(o.OrderDate) mes,
	year(o.OrderDate) ano
	from Orders o;

select year(o.OrderDate) ano,
	month(o.OrderDate) mes,
	COUNT(*) qtd
	from Orders o
	group by year(o.OrderDate), month(o.OrderDate)
	order by year(o.OrderDate), month(o.OrderDate);

select year(o.OrderDate) ano,
	COUNT(*) qtd
	from Orders o
	group by year(o.OrderDate)
	order by year(o.OrderDate);