-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT count(Title)
FROM Books
WHERE Title = 'Dracula'

SELECT count(L.BookID) 'Not Returned Books'
FROM Loans L
JOIN Books B
ON L.BookID = B.BookID
WHERE B.Title = 'Dracula' AND L.ReturnedDate IS NULL

SELECT 
  (SELECT count(Title)
  FROM Books
  WHERE Title = 'Dracula') -
  (SELECT count(L.BookID) 'Not Returned Books'
  FROM Loans L
  JOIN Books B
  ON L.BookID = B.BookID
  WHERE B.Title = 'Dracula' AND L.ReturnedDate IS NULL)
  AS 'Number of Available Books'