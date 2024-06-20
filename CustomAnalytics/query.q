\l CustomAnalytics/employee.q
\l CustomAnalytics/sales.q

// 1. What is the total sales revenue generated for each product?

show select totalRevenue:sum Quantity * Price by Products from SalesData

// 2. Which department has the highest average age of employees?

show select avgAge:max avg Age by Departments from Employee

// 3. How can you use the xkey function to assign the ID column as the primary key of the Employee table?

show `ID xkey Employee

// 4. How can you use the xkey function to set a composite primary key using Products and SaleDate columns in the SalesData table?

show `Products`SaleDate xkey SalesData

// 5. How can you ensure the uniqueness of the Name column in the Employee table using the xkey function?

show `Name xkey Employee