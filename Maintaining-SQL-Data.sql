-- Maintaining SQL Data

Select *
	from Customers 
	where Sales < 10000

--delete the rows for just huntington from the table
	--this is the select to identify how many are getting deleted
Select *
	from Customers
	where Name = 'Huntington'
	--this is the delete statement
Delete 
	from Customers 
	where Name like 'Hunt%'


-- Delete 
SELECT * 
	from Customers 
		where Id in (
			SELECT Id from Customers where City = 'Cincinnati' and Sales > 30000
	);
--this would delete Kroger (Id #1)
Select *
--Delete
	from Customers
	where Id = 1; 

--Updates 
-- this is would add 100 to every customer's sales
UPDATE Customers Set
	Sales = Sales + 100

--to change multiple columns, use a comma (see below)
Update Customers Set 
	Sales = Sales + 100,
	City = 'Cleveland'
	where id = 15

--Swagelok is moving to Columbus and increase sales by 10k
Select *
	from Customers
	where Name = 'Swagelok'

Update Customers Set
	City = 'Columbus', 
	Sales = Sales + 10000
	where Id = 22


-- INSERT STATEMENTS
	--inside of parenthesis u must add all columns you want to add data into. (if not NULL, must enter data into that row for an insert)
	--for Active, it must be true or false (using 1 or 0)
INSERT into Customers(Name, City, State, Sales, Active)
				VALUES ('TQL', 'Tampa', 'FL', 0, 0)
Select *
	from Customers
	
-- INSERT Multiple Columns at once
INSERT into Customers(Name, City, State, Sales, Active)
				VALUES 
				('TQL', 'Charlotte', 'NC', 0, 0),
				('TQL', 'Richmond', 'VA', 0, 0),
				('TQL', 'Erlanger', 'KY', 0, 0);
--Rules for Inserts
--HAVE TO PUT IN COLUMN LIST IN INSERTs. DO NOT PUT PK in list if SQL generated
--MUST PUT Column in list if Column name cannot be NULL and/or Column doesnt have default value
--IF a column allows NULL, you can leave it out of the list and it will automatically be added as null

--add an order 
--Tie it to TQL customer, customer id must be tied properly

Insert into Orders
	(CustomerId, Date, Description)
	values
	((Select Id from Customers where id = 36), '2024-06-07', 'TQL 1st Order');

Select *
	from orders o
	join customers c on c.id = o.CustomerId
	where Name = 'TQL'
	order by o.id desc;
