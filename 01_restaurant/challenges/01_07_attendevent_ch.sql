-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
Alter TABLE CustomersResponses
RENAME NumberOfPeople to PartySize;

SELECT * FROM Customers
WHERE Email='atapley2j@kinetecoinc.com';

SELECT CustomerID FROM Customers WHERE Email='atapley2j@kinetecoinc.com';

INSERT INTO CustomersResponses (CustomerID,PartySize)
VALUES (
(SELECT CustomerID 
FROM Customers 
WHERE Email='atapley2j@kinetecoinc.com'), 3);

SELECT * FROM CustomersResponses;

