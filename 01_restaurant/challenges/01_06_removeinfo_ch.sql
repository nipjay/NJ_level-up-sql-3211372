-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT ReservationID, Date, C.CustomerID, FirstName, LastName
FROM reservations 'R'
INNER JOIN customers 'C'
ON R.CustomerID = C.CustomerID
WHERE C.FirstName = 'Norby' AND R.Date > '2022-07-24'

DELETE FROM Reservations
WHERE ReservationID = 2000