-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT Customers.LastName,Customers.CustomerID, Customers.FirstName,
Reservations.ReservationID,Reservations.Date, Reservations.PartySize
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.LastName LIKE 'St%'
AND Reservations.PartySize =4
Order BY Reservations.Date DESC;
