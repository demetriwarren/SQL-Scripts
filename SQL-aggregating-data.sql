-- Aggregating Data

Select Sum(Sales)
	from Customers;

-- Give the avg sales for each city's sales
SELECT City, count(*) Count, format(avg(Sales), 'C') Sales
	from Customers
	Group by City


-- this says; Pull/Show the count(count(*)) of the columns of customer
SELECT count(*)
	from Customers; 

-- Group By clauses 
SELECT * 
	from Customers
	group by City;

Select City, count(id) 'Customer Count'
	from Customers
	group by City

--Having Clause
--must use * in having clause since we dont have an Id in the table
--using ">=" in the having clause is equivilant to "false" in the function. (we need a boolean expression in having clauses)
Select City, count(id) 'Customer Count'
	from Customers
	group by City
	having count(*) >= 12;

SELECT City, Sum(Sales) Sales
	from Customers
	Group by City
	Having sum(Sales) > 600000

