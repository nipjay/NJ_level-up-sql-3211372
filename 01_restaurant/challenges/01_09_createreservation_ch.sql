-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

DECLARE @Cust INT 

SELECT @Cust = CustomerID
FROM Customers
WHERE FirstName = 'Sam' AND LastName = 'McAdams'

IF @Cust IS NOT NULL
  BEGIN
    INSERT INTO Reservations 'R' (CustomerID,FirstName,LastName,Date,PartySize)
    VALUES (
    /*(SELECT customerID
      FROM Customers
      WHERE FirstName = 'Sam' AND LastName = 'McAdams')
      @Cust,'Sam','McAdams','2022-08-12 18:00',5)
    SELECT 'Reservataion Successfully Added' Message;
  END
ELSE 
  BEGIN
    SELECT 'Customer should be first added to the DB' AS Message;
  END;