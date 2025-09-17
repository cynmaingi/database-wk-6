-- Retrieve employee details with office information using INNER JOIN
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees AS e
INNER JOIN 
    offices AS o ON e.officeCode = o.officeCode;


-- Retrieve product details with product line info using LEFT JOIN
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM 
    products AS p
LEFT JOIN 
    productlines AS pl ON p.productLine = pl.productLine;



-- Retrieve order details using RIGHT JOIN to include all orders
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers AS c
RIGHT JOIN 
    orders AS o ON c.customerNumber = o.customerNumber
LIMIT 10;
