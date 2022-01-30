USE DB_Bank

GO
CREATE PROCEDURE AddMoney 
	@socialStatus VARCHAR(50)
AS
	UPDATE Accounts
	SET Balance = Balance + 10
	FROM 
		(SELECT Accounts.AccountName FROM Accounts
		JOIN Clients ON Clients.Id = Accounts.ClientId
		JOIN SocialStatuses ON SocialStatuses.Id = StatusId
		WHERE (SocialStatuses.StatusName = @socialStatus)
		) AS SelectedAccount
	WHERE Accounts.AccountName = SelectedAccount.AccountName

GO
CREATE PROCEDURE View5 AS
	SELECT Accounts.AccountName, 
		Clients.FullName, 
		SocialStatuses.StatusName, 
		Accounts.Balance
	FROM Accounts
	JOIN Clients ON Clients.Id = Accounts.ClientId
	JOIN SocialStatuses ON SocialStatuses.Id = StatusId

DECLARE @status VARCHAR(50)

SET @status = 'Pensioner'

EXEC View5
EXEC AddMoney @status
EXEC View5