USE DB_Bank

INSERT INTO Banks VALUES
('HSBC'),
('BNP Paribas'),
('Barclays'),
('Deutsche Bank'),
('Credit Agricole'),
('Royal Bank of Scotland'),
('Societe Cenerale')

INSERT INTO Cities VALUES
('London'),
('Paris'),
('Frankfurt am Main'),
('Montrouge'),
('Edinburgh'),
('Liverpool'),
('Limoges')

INSERT INTO BanksLocation VALUES
(1, 1),
(1, 5),
(2, 2),
(1, 6),
(1, 7),
(2, 4),
(2, 1),
(3, 1),
(3, 6),
(4, 3),
(5, 4),
(5, 2)

INSERT INTO SocialStatuses VALUES
('Able-bodied person'),
('Pensioner'),
('Disabled person'),
('Teenager')

INSERT INTO Clients VALUES
('Leonenko Vladislava Urievna', 1),
('Ermolenko Andrew Aleksandrovich', 1),
('Fedorovich Anastasiya Dmitrievna', 2),
('Dvornik Polina Dmitrievna', 2),
('Goshko Vladislav Vitalevich', 1),
('Lebedinsky Vladislav Evgenevich', 4),
('Stolyarova Ulia Urievna', 1)

INSERT INTO Accounts VALUES
('aladka03', 'D7KBNBKz3bqbpvWlaqNH2rohO5VQ', 3, 1, 2039),
('justErmol', 'U6gndnvYnqdrwJKpCnP1mDYV9EIN', 2, 2, 331),
('nikoDeAngelo', 'HPxBgoqM1FNUWEQU8dRbtFaqx9Cg', 5, 4, 12311),
('black_swan', 'JQiwlv6HNCDv6Kg9PcAxSy92onvU', 4, 6, 10),
('fedya', 'raeymhdcMEVMsZUTDuTAwSG2f5Qh', 7, 3, 4211),
('stacyBee', 'mUOJE1pp0JirjBJinNUvh3w8sE6H', 6, 3, 293),
('vikada', 'e3EoghYYhBDRF0NwkXeRnhcs4Exc', 1, 1, 9132),
('pufic', 'kwJRd8IX0qCPImb9DWp9OzZNDJUh', 4, 3, 19301),
('lisik', 'IXKYw1xildnkVZ5eBvSh7u7HM15e', 6, 5, 47387),
('rapuncel', 'c1RgT78y87g5qHKHkz7EEVbprrhK', 2, 7, 7928),
('bashmachok', 'xNva2x34s6U5R7oiLrCdn9TfCMJn', 1, 2, 9019)

INSERT INTO Cards VALUES
('0144 5887 5724 9869', 1, 1000),
('3515 4621 3268 5992', 3, 1230),
('5471 0271 9707 5934', 4, 10),
('8027 1251 4538 5664', 7, 290),
('5145 8536 2280 2525', 1, 1010),
('2272 9380 3826 8125', 9, 47000),
('6887 7744 6130 7224', 2, 300),
('9952 6478 0344 7002', 5, 4210),
('5030 4041 1841 1647', 2, 30),
('0265 7068 3905 8686', 5, 1),
('8208 8673 9467 9532', 9, 387)