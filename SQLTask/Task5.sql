USE DB_Bank

GO
CREATE PROCEDURE AddMoney AS
	UPDATE Accounts
	SET Balance = Balance + 10
	FROM 
		(SELECT Accounts.AccountName FROM Accounts
		JOIN Clients ON Clients.Id = Accounts.ClientId
		JOIN SocialStatuses ON SocialStatuses.Id = StatusId
		WHERE (SocialStatuses.StatusName = 'Pensioner' OR SocialStatuses.StatusName = 'Disabled person')
		) AS SelectedAccount
	WHERE Accounts.AccountName = SelectedAccount.AccountName

GO
CREATE PROCEDURE ViewTableForTask5 AS
	SELECT Accounts.AccountName, 
		Clients.FullName, 
		SocialStatuses.StatusName, 
		Accounts.Balance
	FROM Accounts
	JOIN Clients ON Clients.Id = Accounts.ClientId
	JOIN SocialStatuses ON SocialStatuses.Id = StatusId

EXEC ViewTableForTask5
EXEC AddMoney
EXEC ViewTableForTask5