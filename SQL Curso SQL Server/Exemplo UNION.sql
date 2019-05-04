SELECT City, Country FROM Customers ORDER BY City;

SELECT City, Country FROM Suppliers ORDER BY City;

SELECT City, Country FROM Customers
	UNION
		SELECT City, Country FROM Suppliers
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country = 'Germany'
	UNION
		SELECT City, Country FROM Suppliers
		WHERE Country = 'Germany'
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country = 'Germany'
	UNION ALL
		SELECT City, Country FROM Suppliers
		WHERE Country = 'Germany'
ORDER BY City;