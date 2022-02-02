USE DB_Bank

SELECT Banks.BankName, 
	Cities.CityName
FROM Banks
	JOIN BanksLocation ON BankId = Banks.Id
	JOIN Cities ON CityId = Cities.Id 
WHERE Cities.CityName = 'London'