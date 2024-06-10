--Declaring cursors

Declare CustomerCursor CURSOR For
	Select Id, Name, City, State, Sales
		from Customers
		Order by Sales desc;
	
	Open CustomerCursor;

	DECLARE @Id int, @Name varchar(30), @City varchar(30), @State char(2), @Sales decimal(9,2)
	
	Fetch Next from CustomerCursor into @Id, @Name, @City, @State, @Sales;

	While @@FETCH_STATUS = 0 Begin

		print Concat(@Name, ' - ', @sales);

		Fetch Next from CustomerCursor into @Id, @Name, @City, @State, @Sales;
	End

	print @Name;

	Close CustomerCursor;

Deallocate CustomerCursor;
	