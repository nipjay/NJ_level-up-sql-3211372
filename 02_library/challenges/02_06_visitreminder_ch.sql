-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT 
  COUNT(L.LoanID) NumberofBooks,
  L.PatronID,
  P.FirstName,
  P.Email
FROM Loans L
JOIN Patrons P 
ON L.PatronID = P.PatronID
GROUP BY L.PatronID
ORDER BY NumberofBooks 
