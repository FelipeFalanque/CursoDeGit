SELECT ContactName FROM Customers WHERE ContactName LIKE '_e%' /*Segunda Letra Do Nome "E"*/ 

SELECT ContactName FROM Customers WHERE ContactName LIKE '[PHF]e%' /*Começe com P,H ou F e Segunda Letra Do Nome "E"*/

SELECT ContactName FROM Customers WHERE ContactName NOT LIKE '[PHF]%' /*Não Começe com P,H ou F*/ 
