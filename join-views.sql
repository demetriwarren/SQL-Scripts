--Join Views

/*
SELECT Date, Orders.Description 'Orders', Product, OrderLines.Description, Quantity, Price 
	from Orders
	join OrderLines  
		on Orderlines.OrdersId = Orders.ID
		Order by Product, Description
*/

/*
SELECT * 
	from Customers c
	join Orders o
		on o.CustomerId = c.Id
	join OrderLines ol
		on ol.OrdersId = o.Id
*/

/*
SELECT *
	from Customers c left join Orders o 
		on o.CustomerId = c.Id 
*/

