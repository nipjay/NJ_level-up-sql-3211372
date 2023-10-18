-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT 
  Published PublishedYear,
  count(DISTINCT(Title)) NumberofTitles,
  GROUP_CONCAT(DISTINCT(Title))
FROM Books
GROUP BY Published
ORDER BY NumberofTitles DESC;

SELECT
  count(L.BookID) NumberofLoans,
  Title
FROM Loans L 
JOIN Books B 
ON L.BookID = B.BookID
GROUP BY B.Title
ORDER BY NumberofLoans DESC;
