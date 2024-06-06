-- Unions

select *, 'A' 'Class'
	from customers
	where sales >= 80000
union
select *, 'B' 'Class'
	from customers
	where sales < 80000 and sales >= 20000
union
select *, 'C' 'Class'
	from customers
	where sales < 20000
	order by Class