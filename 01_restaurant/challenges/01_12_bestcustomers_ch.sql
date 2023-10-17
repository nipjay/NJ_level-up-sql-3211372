-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT
  Count(O.CustomerID) NumberofOrders,  
  C.CustomerID,
  C.FirstName,
  C.LastName,
  c.Email
FROM
  Orders O
INNER JOIN Customers C
ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerID
ORDER BY NumberofOrders DESC
