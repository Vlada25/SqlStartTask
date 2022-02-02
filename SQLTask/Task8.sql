USE DB_Bank

GO
CREATE TRIGGER TR_Accounts_ChangeBalance
ON Accounts
AFTER INSERT, UPDATE
AS
	IF Exists
		(SELECT  SUM(Cards.CardBalance)
		FROM Cards
			JOIN Accounts ON Accounts.AccountNumber = Cards.AccountNumber
		GROUP BY Accounts.AccountNumber
		HAVING AVG(Accounts.Balance) < SUM(Cards.CardBalance)) 
	BEGIN
		PRINT 'The account balance should not be less than the amount of the cards balance'
		ROLLBACK TRANSACTION
	END;

GO
CREATE TRIGGER TR_Cards_ChangeBalance
ON Cards
AFTER INSERT, UPDATE
AS
	IF Exists
		(SELECT  SUM(Cards.CardBalance)
		FROM Cards
			JOIN Accounts ON Accounts.AccountNumber = Cards.AccountNumber
		GROUP BY Accounts.AccountNumber
		HAVING AVG(Accounts.Balance) < SUM(Cards.CardBalance))
	BEGIN
		PRINT 'The amount of the cards balance should not be more than the account balance'
		ROLLBACK TRANSACTION
	END;

UPDATE Accounts
SET Accounts.Balance = 30000
WHERE AccountName = 'aladka03'

UPDATE Cards
SET Cards.CardBalance = 300
WHERE CardNumber = '5145 8536 2280 2525'

SELECT AccountName,
	AVG(Accounts.Balance) AS AccountBalance,
	SUM(Cards.CardBalance) AS TotalCardBalance
FROM Accounts
	JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
GROUP BY Accounts.AccountNumber, AccountName