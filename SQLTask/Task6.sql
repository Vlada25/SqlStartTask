USE DB_Bank

SELECT Clients.FullName,
	(SELECT SUM(Accounts.Balance)
	 FROM Accounts
	 WHERE Accounts.ClientId = Clients.Id) AS FullBalance,
	(SELECT COALESCE(SUM(Cards.CardBalance), 0) 
	 FROM Cards
		JOIN Accounts ON Accounts.ClientId = Clients.Id
	 WHERE Cards.AccountNumber = Accounts.AccountNumber) AS CardsSum,
	(SELECT SUM(DISTINCT Accounts.Balance) - COALESCE(SUM(Cards.CardBalance), 0)
	 FROM Accounts
		LEFT JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
	 WHERE Accounts.ClientId = Clients.Id) AS AvailableMoney
FROM Clients