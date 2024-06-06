SELECT Date, Orders.Description 'Orders', Product, OrderLines.Description, Quantity, Price 
	from Orders
	join OrderLines  
		on Orderlines.OrdersId = Orders.ID
		Order by Product, Description
