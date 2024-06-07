-- Aggregating Data

Select Sum(Sales)
	from Customers;

-- Give the avg sales for each city's sales
SELECT City, count(*) Count, format(avg(Sales), 'C') Sales
	from Customers
	Group by City
