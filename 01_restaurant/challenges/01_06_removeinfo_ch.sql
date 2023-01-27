-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT *
From Customers
Where FirstName = 'Norby' --CustomerID=64

SELECT* FROM Reservations
WHERE CustomerID = 64
Order By Date DESC; --- ReservationID = 2000

SELECT* FROM Reservations
WHERE Date = '2022-07-29 18:30:00';

 DELETE FROM Reservations WHERE ReservationID = 2000;

SELECT Customers.CustomerID, Reservations.ReservationID, Reservations.Date
From Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
Where FirstName = 'Norby' AND Reservations.Date > '2022-07-24'


DELETE FROM Reservations
WHERE ReservationID = 2000;

 