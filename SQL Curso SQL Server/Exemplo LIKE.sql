SELECT ContactName FROM Customers WHERE ContactName LIKE '_e%' /*Segunda Letra Do Nome "E"*/ 

SELECT ContactName FROM Customers WHERE ContactName LIKE '[PHF]e%' /*Come�e com P,H ou F e Segunda Letra Do Nome "E"*/

SELECT ContactName FROM Customers WHERE ContactName NOT LIKE '[PHF]%' /*N�o Come�e com P,H ou F*/ 
