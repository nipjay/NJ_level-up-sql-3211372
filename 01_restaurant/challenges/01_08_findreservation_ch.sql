-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT 
  R.ReservationID,
  R.CustomerID,
  FirstName,
  LastName,
  Date,
  PartySize
FROM
  Reservations 'R'
INNER JOIN
  Customers 'C'
ON R.CustomerID = C.CustomerID
WHERE
  (FirstName LIKE 'Ste%' OR LastName LIKE 'Ste%') AND Date LIKE '2022-06-14%';
