USE DB_Bank

GO
CREATE TRIGGER TR_Accounts_ChangeBalance
ON Accounts
AFTER INSERT, UPDATE
AS
	BEGIN
		DECLARE @isBalanceCorrect MONEY

		SET @isBalanceCorrect = 
			(SELECT  SUM(Cards.CardBalance)
			FROM Cards
			JOIN Accounts ON Accounts.AccountNumber = Cards.AccountNumber
			GROUP BY AccountName
			HAVING AVG(Accounts.Balance) < SUM(Cards.CardBalance))

		IF @isBalanceCorrect IS NOT NULL
			ROLLBACK TRANSACTION
	END;

GO
CREATE TRIGGER TR_Cards_ChangeBalance
ON Cards
AFTER INSERT, UPDATE
AS
	BEGIN
		DECLARE @isBalanceCorrect MONEY

		SET @isBalanceCorrect = 
			(SELECT  SUM(Cards.CardBalance)
			FROM Cards
			JOIN Accounts ON Accounts.AccountNumber = Cards.AccountNumber
			GROUP BY AccountName
			HAVING AVG(Accounts.Balance) < SUM(Cards.CardBalance))

		IF @isBalanceCorrect IS NOT NULL
			ROLLBACK TRANSACTION
	END;

UPDATE Accounts
SET Accounts.Balance = 3000
WHERE AccountName = 'aladka03'

UPDATE Cards
SET Cards.CardBalance = 300
WHERE CardNumber = '5145 8536 2280 2525'

SELECT AccountName,
	AVG(Accounts.Balance) AS AccountBalance,
	SUM(Cards.CardBalance) AS TotalCardBalance
FROM Accounts
JOIN Cards ON Cards.AccountNumber = Accounts.AccountNumber
GROUP BY AccountName