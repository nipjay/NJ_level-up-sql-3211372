-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT *
FROM Dishes
ORDER BY price ASC;

SELECT *
FROM Dishes
WHERE type IN ('Appetizer','Beverage');

SELECT *
FROM Dishes
WHERE type<>'Beverage';