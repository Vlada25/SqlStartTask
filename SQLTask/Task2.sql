USE DB_Bank

SELECT CardNumber, 
	Accounts.AccountName, 
	Banks.BankName, 
	Accounts.Balance
FROM Cards
JOIN Accounts ON Accounts.AccountNumber = Cards.AccountNumber
JOIN Banks ON Accounts.BankId = Banks.Id
