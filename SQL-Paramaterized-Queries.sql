--Paramaterized Queries

-- high and low sales example: 
Declare @LowSales int = 20000;
Declare @HighSales int = 50000;

Select * 
	from Customers
	where Sales between @LowSales and @HighSales;

-- Procedural SET & declaring a parameter
Declare @Counter int = 0;

while @counter < 10
begin

	PRINT 'Iteration ' + str(@Counter)

	SET @Counter = @Counter + 1
end