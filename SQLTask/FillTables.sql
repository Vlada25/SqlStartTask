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
('D7KBNBKz3bqbpvWlaqNH2rohO5VQ', 'aladka03', 3, 1, 2039),
('U6gndnvYnqdrwJKpCnP1mDYV9EIN', 'justErmol', 2, 2, 331),
('HPxBgoqM1FNUWEQU8dRbtFaqx9Cg', 'nikoDeAngelo', 5, 4, 12311),
('JQiwlv6HNCDv6Kg9PcAxSy92onvU', 'black_swan', 4, 6, 10),
('raeymhdcMEVMsZUTDuTAwSG2f5Qh', 'fedya', 7, 3, 4211),
('mUOJE1pp0JirjBJinNUvh3w8sE6H', 'stacyBee', 6, 3, 293),
('e3EoghYYhBDRF0NwkXeRnhcs4Exc', 'vikada', 1, 1, 9132),
('kwJRd8IX0qCPImb9DWp9OzZNDJUh', 'pufic', 4, 3, 19301),
('IXKYw1xildnkVZ5eBvSh7u7HM15e', 'lisik', 6, 5, 47387),
('c1RgT78y87g5qHKHkz7EEVbprrhK', 'rapuncel', 2, 7, 7928),
('xNva2x34s6U5R7oiLrCdn9TfCMJn', 'bashmachok', 1, 2, 9019)

INSERT INTO Cards VALUES
('0144 5887 5724 9869', 'D7KBNBKz3bqbpvWlaqNH2rohO5VQ', 1000),
('3515 4621 3268 5992', 'HPxBgoqM1FNUWEQU8dRbtFaqx9Cg', 1230),
('5471 0271 9707 5934', 'JQiwlv6HNCDv6Kg9PcAxSy92onvU', 10),
('8027 1251 4538 5664', 'e3EoghYYhBDRF0NwkXeRnhcs4Exc', 290),
('5145 8536 2280 2525', 'D7KBNBKz3bqbpvWlaqNH2rohO5VQ', 1010),
('2272 9380 3826 8125', 'IXKYw1xildnkVZ5eBvSh7u7HM15e', 47000),
('6887 7744 6130 7224', 'U6gndnvYnqdrwJKpCnP1mDYV9EIN', 300),
('9952 6478 0344 7002', 'raeymhdcMEVMsZUTDuTAwSG2f5Qh', 4210),
('5030 4041 1841 1647', 'U6gndnvYnqdrwJKpCnP1mDYV9EIN', 30),
('0265 7068 3905 8686', 'raeymhdcMEVMsZUTDuTAwSG2f5Qh', 1),
('8208 8673 9467 9532', 'IXKYw1xildnkVZ5eBvSh7u7HM15e', 387)