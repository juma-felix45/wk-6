-- Question 1 Select employee details and their office code --
SELECT 
    e.firstName,   -- employee's first name
    e.lastName,    -- employee's last name
    e.email,       -- employee's email
    e.officeCode   -- code of the office the employee belongs to
FROM employees e
-- INNER JOIN ensures we only get employees that are linked to an office
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- Question 2 Select product details and their product line
SELECT 
    p.productName,   -- name of the product
    p.productVendor, -- vendor/supplier of the product
    p.productLine    -- product line category
FROM products p
-- LEFT JOIN ensures all products are included 
-- even if some do not have a matching product line in the productlines table
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;
    

-- Question 3 Select order details and the customer who placed the order --
SELECT 
    o.orderDate,      -- date when the order was placed
    o.shippedDate,    -- date when the order was shipped
    o.status,         -- status of the order (e.g., Shipped, In Process)
    o.customerNumber  -- customer ID who placed the order
FROM customers c
-- RIGHT JOIN ensures we include all orders, 
-- even if some do not have a matching customer record
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
-- Sort orders in chronological order
ORDER BY o.orderDate ASC
-- Limit the result to the first 10 orders
LIMIT 10;

