INSERT INTO `sales` (
  `User_Id`,
  `OrderAmount`
) 
SELECT `User_Id`, RAND() * 10000 FROM `users`;


SELECT `User_Id`, RAND() * 10000 FROM `users`;

UPDATE `users` SET `Name` = CONCAT(`Name`, ' - CN');
UPDATE `sales` SET `Order_Id` = `Order_Id` + 4000;

SELECT COUNT(*) FROM `users`;

