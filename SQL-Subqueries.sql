-- Subqueries

SELECT avg(Sales)
	from Customers
-- ^ this pulls the average of all the customers's sales
SELECT * 
	from Customers 
	where Sales > 56951

	-- ^ these are both the same just formatted differently v

SELECT * 
	from Customers 
	Where Sales > 
		(SELECT avg(Sales)
			from Customers)

-- below is practice of what all sales less than sales in columbus equals
Select avg(Sales) 
	from Customers
		where City = 'Columbus'
SELECT *
	from Customers
		where Sales > 73699

SELECT * 
	from Customers
	where Sales < (
		SELECT avg(Sales)
		from Customers
		where City = 'Columbus')

--list of all customer who have sales greater than cincy and cleveland combined

SELECT * 
	from Customers
	where Sales >= (
		SELECT avg(Sales)
			from Customers
			where City in ('Cincinnati', 'Cleveland'))
			order by City, Sales Desc
