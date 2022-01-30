USE DB_Bank

SELECT Clients.FullName,
	AVG(TotalBalance.SumBalance) AS FullBalance,
	COALESCE(SUM(Cards.CardBalance), 0) AS CardsSum,
	COALESCE(AVG(TotalBalance.SumBalance) - SUM(Cards.CardBalance), AVG(TotalBalance.SumBalance)) AS AvailableMoney
FROM (SELECT Clients.FullName, 
		SUM(Accounts.Balance) AS SumBalance
	FROM Clients
	FULL OUTER JOIN Accounts ON Accounts.ClientId = Clients.Id
	GROUP BY Clients.FullName) AS TotalBalance
FULL OUTER JOIN Clients ON Clients.FullName = TotalBalance.FullName
FULL OUTER JOIN Accounts ON Accounts.ClientId = Clients.Id
FULL OUTER JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
GROUP BY Clients.Id, Clients.FullName