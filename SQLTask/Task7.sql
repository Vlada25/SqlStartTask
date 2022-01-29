USE DB_Bank

GO
CREATE PROCEDURE TransferMoney
	@accountName VARCHAR(30),
	@cardNumber VARCHAR(19),
	@moneyCount MONEY
AS
	BEGIN
		DECLARE @totalCardBalance MONEY, 
			@accountBalance MONEY

		SET @totalCardBalance = 
			(SELECT SUM(CardBalance)
			FROM Cards
			JOIN Accounts ON Accounts.Id = Cards.AccountId
			WHERE AccountName = @accountName)

		SET @accountBalance = 
			(SELECT Accounts.Balance FROM Accounts
			WHERE AccountName = @accountName)

		IF (@accountBalance - @totalCardBalance < @moneyCount)
			PRINT 'Impossible to transfer money'
		ELSE
			BEGIN
				UPDATE Cards
				SET CardBalance = CardBalance + @moneyCount
				FROM 
					(SELECT CardNumber FROM Cards
					JOIN Accounts ON Accounts.Id = Cards.AccountId
					WHERE AccountName = @accountName AND CardNumber = @cardNumber) 
					AS SelectedCard
				WHERE Cards.CardNumber = SelectedCard.CardNumber
			END;
	END;

GO
CREATE PROCEDURE ViewTableForTask7
	@accountName VARCHAR(30),
	@cardNumber VARCHAR(19)
AS
	SELECT AccountName,
		CardNumber,
		Accounts.Balance,
		CardBalance
	FROM Accounts
	JOIN Cards ON Cards.AccountId = Accounts.Id
	WHERE AccountName = @accountName AND CardNumber = @cardNumber

BEGIN TRY
BEGIN TRANSACTION

DECLARE @account VARCHAR(30), @card VARCHAR(19)
DECLARE @money MONEY

SET @account = 'aladka03'
SET @card = '5145 8536 2280 2525'
SET @money = 10

EXEC ViewTableForTask7 @account, @card
EXEC TransferMoney @account, @card, @money
EXEC ViewTableForTask7 @account, @card

END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION

		SELECT ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage

		RETURN
	END CATCH

COMMIT TRANSACTION