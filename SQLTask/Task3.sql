USE DB_Bank

SELECT AccountName,
	AVG(Balance) AS AccountBalance,
	SUM(Cards.CardBalance) AS SUM_CardBalance, 
	AVG(Balance) - SUM(Cards.CardBalance) AS Difference 
FROM Accounts
JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
GROUP BY Accounts.AccountNumber, AccountName
HAVING SUM(Cards.CardBalance) < AVG(Balance)