USE DB_Bank

SELECT StatusName, COUNT(Cards.Id) AS CountOfCards
FROM SocialStatuses
FULL OUTER JOIN Clients ON Clients.StatusId = SocialStatuses.Id
FULL OUTER JOIN Accounts ON Accounts.ClientId = Clients.Id
FULL OUTER JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
GROUP BY (StatusName)

SELECT StatusName,
	(SELECT COUNT(Cards.Id) FROM Cards
	JOIN Clients ON Clients.StatusId = SocialStatuses.Id
	JOIN Accounts ON Accounts.ClientId = Clients.Id
	WHERE Cards.AccountNumber = Accounts.AccountNumber) AS CardsCount
FROM SocialStatuses