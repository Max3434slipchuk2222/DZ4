SELECT 
    o.OrderID, 
    u.FName,
	u.LName, 
    p.Name,
	p.Price,
    o.OrderDate 
FROM Orders o
INNER JOIN Users u ON o.UserID = u.UserID
INNER JOIN Products p ON o.ProductID = p.ProductID;