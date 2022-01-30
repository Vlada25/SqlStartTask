USE DB_Bank

SELECT StatusName, 
	COUNT(Cards.Id) AS CountOfCards
FROM SocialStatuses
LEFT JOIN Clients ON Clients.StatusId = SocialStatuses.Id
LEFT JOIN Accounts ON Accounts.ClientId = Clients.Id
LEFT JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
GROUP BY SocialStatuses.Id, StatusName

SELECT StatusName,
	(SELECT COUNT(Cards.Id) FROM Cards
	JOIN Clients ON Clients.StatusId = SocialStatuses.Id
	JOIN Accounts ON Accounts.ClientId = Clients.Id
	WHERE Cards.AccountNumber = Accounts.AccountNumber) AS CardsCount
FROM SocialStatuses