\l products.q

cols Products
show Products

show select Instock,Name,Model,Price,Quantity from Products where Quantity>6

show select Instock,Name,Model,Price,Quantity from Products where Instock = min Instock, Quantity>6

\ts show select Instock,Name,Model,Price,Quantity from Products where Instock = min Instock, Quantity>6

\ts show select Instock,Name,Model,Price,Quantity from Products where Quantity>6, Instock = min Instock

\ts show select Instock,Name,Model,Price,Quantity from Products where Quantity>6

show select count i from Products where Instock = min Instock

show select minPrice: min Price, maxPrice:max Price from Products

show select Name,Price by ID from Products

show select count i by Price from Products

