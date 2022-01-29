USE DB_Bank

SELECT CardNumber, Accounts.AccountName, Banks.BankName, Accounts.Balance
FROM Cards
JOIN Accounts ON Accounts.Id = Cards.AccountId
JOIN Banks ON Accounts.BankId = Banks.Id
