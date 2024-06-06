\l products.q

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