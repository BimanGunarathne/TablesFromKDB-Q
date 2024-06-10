\l products.q
\l customer.q

show Products

// 1. Write a kdb+/q query to select the "Name" and "Model" of products where the "Price" is greater than 100000.

show select Name,Model,Price from Products where Price>100000

// 2. Write a kdb+/q query to find all products with the "Name" 'APPL' and display their "ID," "Model," and "Quantity".

show select ID,Name,Model,Quantity from Products where Name = `APPL

// 3. Write a kdb+/q query to count the number of products for each unique "Name".

show select count i by Name from Products

// 4. Write a kdb+/q query to find the average "Price" of products where the "Quantity" is less than 10.

show select avgPrice:avg Price, Quantity from Products where Quantity<10 

// 5. Write a kdb+/q query to list all products that have an "Outstock" date before the year 2024.

show select Name,Outstock from Products where Outstock < 2024.01.01

// 6. Write a kdb+/q query to display the "ID," "Name," and "Price" of products that were in stock on or after January 1, 2023.

show select ID,Name,Price,Instock from Products where Instock >= 2023.01.01

// 7. Write a kdb+/q query to find the maximum "Quantity" of products grouped by "Name".

show select max Quantity by Name from Products

// 8. Write a kdb+/q query to list products that have a "Quantity" between 5 and 15, inclusive.

show select Name,Quantity from Products where 5 <= Quantity <= 15 

// 9. Write a kdb+/q query to select the "ID," "Name," and "Model" of products where the "Price" is within the range of 50000 to 100000.

show select ID,Name,Model from Products where 50000 <= Price <= 100000

// 10. Write a kdb+/q query to display the "Name" and "Price" of the top 10 most expensive products.

show select Name,Price from Products where Price > 500000

// 11. What is the total number of products currently in stock?

show select qty:sum Quantity from Products where not null Instock

// 12. How would you write a query to list all products with a price greater than 300,000?

show select from Products where Price > 300000

// 13. Connelct Customer Table To the Product Table

show select from (Customer lj Products)

// 14. What is the maximum price from the products dataset for brands with a price less than the average price for each brand name?

show select avgPrice:Price from Products where ID<(avg;Price) fby Name

// 15. Update the price of a specific product in the Products table

show Products:update Price:45000 from Products where ID = 9

// 16. Update the quantity of a specific product in the Products table

show Products:update Quantity:5 from Products where ID = 9

// 17. Delete a specific customer from the Customer table

show Customer:delete from Customer where ID = 9

// 18. Update the model number of a specific product in the Products table

show Products:update Model:2334 from Products where ID = 11

// 19. Delete products with a specific brand name from the Products table

show Products:delete from Products where Name = `APPL

// 20. Update the in-stock date of a specific product in the Products table

show Products:update Instock:.z.d from Products where ID = 15

// 21. Delete all products that are out of stock from 2023.01.01 in the Products table

show Products:delete from Products where Outstock = 2023.01.01

// 22. Update the customer name of a specific customer in the Customer table

show Customer:update CustomerName:`BIMA from Customer where ID = 1

// 23. Delete a specific product by its ID from the Products table

show Products:delete from Products where ID = 18

// 24. Update the phone number of a specific customer in the Customer table

show Customer:update PhoneNumber:1234567891 from Customer where ID = 3