CREATE DATABASE ECommerceManagementSystem;

-- Create Login Table

CREATE TABLE tbl_Login(LoginId VARCHAR(10) PRIMARY KEY,
UserName VARCHAR(20) NOT NULL UNIQUE,
UserPassword VARCHAR(20) NOT NULL);

-- Insert Values into Login Table

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login01', 'sunita.sharma', HASHBYTES('MD5', 'password01'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login02', 'ashok.singhal', HASHBYTES('MD5', 'password02'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login03', 'rohit.rana', HASHBYTES('MD5', 'password03'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login04', 'jyoti.lamba', HASHBYTES('MD5', 'password04'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login05', 'sumit.vyas', HASHBYTES('MD5', 'password05'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login06', 'manoj.kaushik', HASHBYTES('MD5', 'password06'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login07', 'chetan.gupta', HASHBYTES('MD5', 'password07'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login08', 'madhuri.thakkar', HASHBYTES('MD5', 'password08'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login09', 'sneha.nair', HASHBYTES('MD5', 'password09'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login10', 'binod.goel', HASHBYTES('MD5', 'password10'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login11', 'tushar.tiwari', HASHBYTES('MD5', 'password11'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login12', 'anubhav.kumar', HASHBYTES('MD5', 'password12'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login13', 'shreya.dubey', HASHBYTES('MD5', 'password13'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login14', 'shubham.sherki', HASHBYTES('MD5', 'password14'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login15', 'arnab.banerjee', HASHBYTES('MD5', 'password15'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login16', 'mahesh.jain', HASHBYTES('MD5', 'password16'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login17', 'neha.kapoor', HASHBYTES('MD5', 'password17'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login18', 'kabir.verma', HASHBYTES('MD5', 'password18'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login19', 'jitendra.singh', HASHBYTES('MD5', 'password19'));

INSERT INTO
tbl_Login(LoginId, UserName, UserPassword)
VALUES('login20', 'priyank.saxena', HASHBYTES('MD5', 'password20'));

-- View Contents of Login Table

SELECT * FROM tbl_Login;

-- Create Customer Table

CREATE TABLE tbl_Customer(CustomerId VARCHAR(10) PRIMARY KEY,
CustomerName VARCHAR(100) NOT NULL,
Email VARCHAR(50) NOT NULL,
PhoneNumber CHAR(10) CHECK(6000000000 <= PhoneNumber AND PhoneNumber <= 9999999999) NOT NULL,
Gender CHAR(1) NOT NULL,
Street VARCHAR(50) NOT NULL,
City VARCHAR(20) NOT NULL,
Pin NUMERIC(6) NOT NULL,
State VARCHAR(20) NOT NULL,
Country VARCHAR(20) NOT NULL);

ALTER TABLE tbl_Customer
ADD CONSTRAINT email_constraint
CHECK(Email LIKE '%@%.com');

-- Insert Values into Customer Table

INSERT INTO tbl_Customer
VALUES('User_01', 'Sunita Sharma', 'sunita.sharma@gmail.com', 9066625436, 'F', 'Malviya Nagar', 'New Delhi', 110017, 'Delhi', 'India');

INSERT INTO tbl_Customer
VALUES('User_02', 'Ashok Singhal', 'ashok.singhal@gmail.com', 9220123123, 'M', 'Railway Colony', 'Samastipur', 848101, 'Bihar', 'India');

INSERT INTO tbl_Customer
VALUES('User_03', 'Rohit Rana', 'rohit.rana@gmail.com', 9123123123, 'M', 'Mohindra Colony', 'Amritsar', 143001, 'Punjab', 'India');

INSERT INTO tbl_Customer
VALUES('User_04', 'Jyoti Lamba', 'jyoti.lamba@gmail.com', 9876543211, 'F', 'Janta Colony', 'Rohtak', 124001, 'Haryana', 'India');

INSERT INTO tbl_Customer
VALUES('User_05', 'Sumit Vyas', 'sumit.vyas@gmail.com', 9321654432, 'M', 'Gayatri Vihar', 'Lucknow', 226009, 'Uttar Pradesh', 'India');

INSERT INTO tbl_Customer
VALUES('User_06', 'Manoj Kaushik', 'manoj.kaushik@gmail.com', 9876123456, 'M', 'Madrampur, Civil Lines', 'Jaipur', 302006, 'Rajasthan', 'India');

INSERT INTO tbl_Customer
VALUES('User_07', 'Chetan Gupta', 'chetan.gupta@gmail.com', 9762785423, 'M', 'Chanakyapuri Colony', 'Rewa', 329376, 'Madhya Pradesh', 'India');

INSERT INTO tbl_Customer
VALUES('User_08', 'Madhuri Thakkar', 'madhuri.thakkar@gmail.com', 9872223456, 'F', 'Alkapuri', 'Vadodara', 100165, 'Gujarat', 'India');

INSERT INTO tbl_Customer
VALUES('User_09', 'Sneha Nair', 'sneha.nair@gmail.com', 9876127776, 'F', 'Thayalangadi', 'Kasaragod', 671121, 'Kerala', 'India');

INSERT INTO tbl_Customer
VALUES('User_10', 'Binod Goel', 'binod.goel@gmail.com', 9387655556, 'M', 'Hanuman Square', 'Nagpur', 331556, 'Maharashtra', 'India');

INSERT INTO tbl_Customer
VALUES('User_11', 'Tushar Tiwari', 'tushar.tiwari@gmail.com', 8756543423, 'M', '123 Main Street', 'New York City', 100010, 'New York', 'USA');

INSERT INTO tbl_Customer
VALUES('User_12', 'Anuhav Kumar', 'anubhav.kumar@gmail.com', 7806453413, 'M', '456 Elm Street', 'Los Angeles', 900010, 'California', 'USA');

INSERT INTO tbl_Customer
VALUES('User_13', 'Shreya Dubey', 'shreya.dubey@gmail.com', 7865446232, 'F', '789 Oak Avenue', 'London', 691010, 'England', 'UK');

INSERT INTO tbl_Customer
VALUES('User_14', 'Shubham Sherki', 'shubham.sherki@gmail.com', 6786565423, 'M', '101 Pine Road', 'Paris', 750010, 'Île-de-France', 'France');

INSERT INTO tbl_Customer
VALUES('User_15', 'Arnab Banerjee', 'arnab.banerjee@gmail.com', 9867543423, 'M', '202 Maple Lane', 'Berlin', 101150, 'Berlin', 'Germany');

INSERT INTO tbl_Customer
VALUES('User_16', 'Mahesh Jain', 'mahesh.jain@gmail.com', 7676545434, 'M', '303 Cedar Court', 'Sydney', 200078, 'New South Wales', 'Australia');

INSERT INTO tbl_Customer
VALUES('User_17', 'Neha Kapoor', 'neha.kapoor@gmail.com', 6754908754, 'F', '404 Birch Street', 'Tokyo', 100006, 'Tokyo', 'Japan');

INSERT INTO tbl_Customer
VALUES('User_18', 'Kabir Verma', 'kabir.verma@gmail.com', 8798564326, 'M', '505 Walnut Avenue', 'Toronto', 756105, 'Ontario', 'Canada');

INSERT INTO tbl_Customer
VALUES('User_19', 'Jitendra Singh', 'jitendra.singh@gmail.com', 6097683945, 'M', '606 Cherry Lane', 'Mumbai', 400001, 'Maharashtra', 'India');

INSERT INTO tbl_Customer
VALUES('User_20', 'Priyank Saxena', 'priyank.saxena@gmail.com', 7097696530, 'M', '707 Aspen Road', 'Cape Town', 800109, 'Western Cape', 'South Africa');

-- View Contents of Customer Table

SELECT * FROM tbl_Customer;

-- Create Category Table

CREATE TABLE tbl_Category(CategoryId VARCHAR(10) PRIMARY KEY,
CategoryName VARCHAR(30) NOT NULL,
CategoryDescription VARCHAR(1000) NOT NULL);

-- Insert Values into Category Table

INSERT INTO tbl_Category VALUES
('CT01', 'Women Clothings', 'Topwear, Bottomwear, Sleepwear, Plus Size'),
('CT02', 'Men Clothings', 'Shirts, Pants, Jackets, Underwear'),
('CT03', 'Electronics', 'Phones, Laptops, Tablets, Cameras'),
('CT04', 'Home Appliances', 'Refrigerators, Washers, Microwaves'),
('CT05', 'Sports Equipment', 'Tennis Rackets, Footballs, Yoga Mats'),
('CT06', 'Beauty Products', 'Skincare, Makeup, Fragrances'),
('CT07', 'Books', 'Fiction, Non-fiction, Self-help'),
('CT08', 'Toys & Games', 'Board Games, Dolls, Lego Sets'),
('CT09', 'Furniture', 'Sofa Sets, Beds, Tables, Chairs'),
('CT10', 'Jewelry', 'Necklaces, Bracelets, Earrings'),
('CT11', 'Groceries', 'Canned Goods, Fresh Produce, Snacks'),
('CT12', 'Pet Supplies', 'Dog Food, Cat Litter, Pet Toys'),
('CT13', 'Automotive', 'Car Parts, Accessories, Tools'),
('CT14', 'Music Instruments', 'Guitars, Keyboards, Drums'),
('CT15', 'Art Supplies', 'Paints, Canvases, Brushes');

-- View Contents of Category Table

SELECT * FROM tbl_Category;

-- Create Products Table

CREATE TABLE tbl_Products(ProductId VARCHAR(10) PRIMARY KEY,
ProductName VARCHAR(50) NOT NULL,
ProductDescription VARCHAR(100) NOT NULL,
UnitAmount FLOAT NOT NULL,
QuantityAvailable INT NOT NULL,
CategoryId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Category(CategoryId) NOT NULL);

-- Insert Values into Products Table

INSERT INTO tbl_Products
(ProductId, ProductName, ProductDescription, UnitAmount, QuantityAvailable, CategoryId)
VALUES
('P01', 'Women T-Shirt', 'Comfortable cotton t-shirt for women', 20.99, 100, 'CT01'),
('P02', 'Men Denim Jeans', 'Classic denim jeans for men', 34.99, 80, 'CT02'),
('P03', 'Samsung Galaxy S20', 'Latest smartphone with advanced features', 899.99, 50, 'CT03'),
('P04', 'LG 55-Inch Smart TV', 'Ultra HD television with smart features', 999.99, 30, 'CT04'),
('P05', 'Nike Tennis Racket', 'High-quality racket for tennis enthusiasts', 79.99, 20, 'CT05'),
('P06', 'MAC Lipstick', 'Long-lasting lipstick with vibrant colors', 24.99, 100, 'CT06'),
('P07', 'The Great Gatsby', 'Classic novel by F. Scott Fitzgerald', 12.99, 50, 'CT07'),
('P08', 'LEGO Star Wars Set', 'Build your own Star Wars universe with LEGO', 59.99, 30, 'CT08'),
('P09', 'Modern Sofa Set', 'Comfortable sofa set for your living room', 599.99, 10, 'CT09'),
('P10', 'Diamond Necklace', 'Exquisite diamond necklace for special occasions', 2999.99, 5, 'CT10'),
('P11', 'Organic Fresh Produce Box', 'Assorted fresh fruits and vegetables', 39.99, 20, 'CT11'),
('P12', 'Premium Dog Food', 'High-quality dog food for your furry friend', 29.99, 50, 'CT12'),
('P13', 'Car Cleaning Kit', 'Complete kit for cleaning and detailing your car', 49.99, 15, 'CT13'),
('P14', 'Yamaha Acoustic Guitar', 'Beautifully crafted acoustic guitar for musicians', 299.99, 10, 'CT14'),
('P15', 'Canvas Paint Set', 'Start your painting journey with this canvas set', 19.99, 25, 'CT15'),
('P16', 'Wireless Bluetooth Earphones', 'High-quality earphones with noise cancellation', 49.99, 50, 'CT03'),
('P17', 'Coffee Maker Machine', 'Brew delicious coffee at home with ease', 79.99, 30, 'CT04'),
('P18', 'Basketball', 'Official size and weight basketball for indoor and outdoor play', 29.99, 20, 'CT05'),
('P19', 'Facial Cleanser', 'Gentle cleanser for refreshing and brightening your skin', 14.99, 100, 'CT06'),
('P20', 'The Hobbit', 'Fantasy novel by J.R.R. Tolkien', 9.99, 50, 'CT07'),
('P21', 'LEGO Harry Potter Hogwarts Castle', 'Build the iconic Hogwarts Castle from LEGO bricks', 129.99, 10, 'CT08'),
('P22', 'Leather Recliner Chair', 'Luxurious leather recliner for ultimate comfort', 699.99, 5, 'CT09'),
('P23', 'Silver Bracelet', 'Elegant silver bracelet for everyday wear', 99.99, 25, 'CT10'),
('P24', 'Organic Quinoa', 'Nutritious and versatile whole grain quinoa', 7.99, 100, 'CT11'),
('P25', 'Catnip Toy', 'Interactive toy filled with catnip for your cat', 4.99, 50, 'CT12'),
('P26', 'Car Tire Pressure Gauge', 'Handy tool for checking tire pressure accurately', 19.99, 30, 'CT13'),
('P27', 'Electric Keyboard', 'Full-size electronic keyboard for music enthusiasts', 249.99, 15, 'CT14'),
('P28', 'Watercolor Paint Set', 'Vibrant watercolor paint set for artistic creations', 29.99, 20, 'CT15'),
('P29', 'Smart Home Security Camera', 'Monitor your home with high-definition security camera', 149.99, 10, 'CT03'),
('P30', 'Robotic Vacuum Cleaner', 'Efficient robotic cleaner for hassle-free floor cleaning', 199.99, 5, 'CT04');

-- View Contents of Products Table

SELECT * FROM tbl_Products;

-- Create Orders Table

CREATE TABLE tbl_Orders(OrderId VARCHAR(10) PRIMARY KEY,
ProductId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Products(ProductId) NOT NULL,
OrderDate DATE NOT NULL,
OrderQuantity INT NOT NULL,
UnitAmount FLOAT NOT NULL,
CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) NOT NULL);

-- Insert into Orders Table

INSERT INTO tbl_Orders
(OrderId, ProductId, OrderDate, OrderQuantity, UnitAmount, CustomerId)
VALUES
('Order01', 'P01', '2024-03-15', 2, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P01'), 'User_01'),
('Order02', 'P03', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P03'), 'User_02'),
('Order03', 'P05', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P05'), 'User_03'),
('Order04', 'P08', '2024-03-15', 2, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P08'), 'User_04'),
('Order05', 'P11', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P11'), 'User_05'),
('Order06', 'P13', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P13'), 'User_06'),
('Order07', 'P16', '2024-03-15', 3, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P16'), 'User_07'),
('Order08', 'P19', '2024-03-15', 2, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P19'), 'User_08'),
('Order09', 'P21', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P21'), 'User_09'),
('Order10', 'P24', '2024-03-15', 3, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P24'), 'User_10'),
('Order11', 'P27', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P27'), 'User_11'),
('Order12', 'P29', '2024-03-15', 2, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P29'), 'User_12'),
('Order13', 'P02', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P02'), 'User_13'),
('Order14', 'P04', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P04'), 'User_14'),
('Order15', 'P06', '2024-03-15', 2, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P06'), 'User_15'),
('Order16', 'P09', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P09'), 'User_16'),
('Order17', 'P12', '2024-03-15', 2, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P12'), 'User_17'),
('Order18', 'P15', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P15'), 'User_18'),
('Order19', 'P18', '2024-03-15', 3, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P18'), 'User_19'),
('Order20', 'P22', '2024-03-15', 1, (SELECT UnitAmount FROM tbl_Products WHERE ProductId = 'P22'), 'User_20');

-- View Contents of Orders Table

SELECT * FROM tbl_Orders;

-- Create Payments Table

CREATE TABLE tbl_Payments(PaymentId VARCHAR(10) PRIMARY KEY,
OrderId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Orders(OrderId) NOT NULL,
PaymentDate DATE NOT NULL,
AccountNumber VARCHAR(20) NOT NULL,
ExpiryDate DATE NOT NULL,
TotalAmount FLOAT NOT NULL);

-- Insert into Payments Table

INSERT INTO tbl_Payments
(PaymentId, OrderId, PaymentDate, AccountNumber, ExpiryDate, TotalAmount)
VALUES
('PAY01', 'Order01', '2024-03-15', '1234567890123456', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order01')),
('PAY02', 'Order02', '2024-03-15', '2345678901234567', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order02')),
('PAY03', 'Order03', '2024-03-15', '3456789012345678', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order03')),
('PAY04', 'Order04', '2024-03-15', '4567890123456789', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order04')),
('PAY05', 'Order05', '2024-03-15', '5678901234567890', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order05')),
('PAY06', 'Order06', '2024-03-15', '6789012345678901', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order06')),
('PAY07', 'Order07', '2024-03-15', '7890123456789012', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order07')),
('PAY08', 'Order08', '2024-03-15', '8901234567890123', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order08')),
('PAY09', 'Order09', '2024-03-15', '9012345678901234', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order09')),
('PAY10', 'Order10', '2024-03-15', '0123456789012345', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order10')),
('PAY11', 'Order11', '2024-03-15', '0987654321098765', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order11')),
('PAY12', 'Order12', '2024-03-15', '9876543210987654', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order12')),
('PAY13', 'Order13', '2024-03-15', '8765432109876543', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order13')),
('PAY14', 'Order14', '2024-03-15', '7654321098765432', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order14')),
('PAY15', 'Order15', '2024-03-15', '6543210987654321', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order15')),
('PAY16', 'Order16', '2024-03-15', '5432109876543210', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order16')),
('PAY17', 'Order17', '2024-03-15', '4321098765432109', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order17')),
('PAY18', 'Order18', '2024-03-15', '3210987654321098', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order18')),
('PAY19', 'Order19', '2024-03-15', '2109876543210987', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order19')),
('PAY20', 'Order20', '2024-03-15', '1098765432109876', '2025-03-15', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = 'Order20'));

-- View Contents of Payments Table

SELECT * FROM tbl_Payments;

-- Create Cart Table

CREATE TABLE tbl_Cart(CartId VARCHAR(10) PRIMARY KEY,
CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) NOT NULL,
ProductId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Products(ProductId) NOT NULL,
Quantity INT NOT NULL,
Date DATE NOT NULL);

-- Insert into Cart Table

INSERT INTO tbl_Cart
(CartId, CustomerId, ProductId, Quantity, Date)
VALUES
('Cart01', 'User_01', 'P01', 1, '2024-03-15'),
('Cart02', 'User_02', 'P03', 1, '2024-03-15'),
('Cart03', 'User_03', 'P05', 1, '2024-03-15'),
('Cart04', 'User_04', 'P08', 1, '2024-03-15'),
('Cart05', 'User_05', 'P11', 1, '2024-03-15'),
('Cart06', 'User_06', 'P13', 1, '2024-03-15'),
('Cart07', 'User_07', 'P16', 1, '2024-03-15'),
('Cart08', 'User_08', 'P19', 1, '2024-03-15'),
('Cart09', 'User_09', 'P21', 1, '2024-03-15'),
('Cart10', 'User_10', 'P24', 1, '2024-03-15');

-- View Contents of Cart Table

SELECT * FROM tbl_Cart;

-- Create Reviews Table

CREATE TABLE tbl_Reviews(ReviewId VARCHAR(10) PRIMARY KEY,
CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) NOT NULL,
ProductId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Products(ProductId) NOT NULL,
Reviews VARCHAR(50),
Ratings FLOAT CHECK(0 < Ratings AND Ratings <= 5) NOT NULL);

-- Insert Values into Reviews Table

INSERT INTO tbl_Reviews
(ReviewId, CustomerId, ProductId, Reviews, Ratings)
VALUES
('Review01', 'User_01', 'P01', 'Great fit and comfortable material!', 4.5),
('Review02', 'User_02', 'P03', 'Excellent phone with amazing camera quality.', 5),
('Review03', 'User_03', 'P05', 'Love the grip and control on this racket.', 4),
('Review04', 'User_04', 'P08', 'Fun and challenging build for LEGO fans.', 4.5),
('Review05', 'User_05', 'P11', 'Fresh and organic produce every time.', 5),
('Review06', 'User_06', 'P13', 'Effective and easy to use car cleaning kit.', 4),
('Review07', 'User_07', 'P16', 'Good sound quality and comfortable fit.', 4.5),
('Review08', 'User_08', 'P19', 'Gentle cleanser with a refreshing scent.', 4),
('Review09', 'User_09', 'P21', 'Detailed LEGO set with great minifigures.', 5),
('Review10', 'User_10', 'P24', 'High-quality and nutritious quinoa.', 4),
('Review11', 'User_11', 'P27', 'Great for beginners and experienced players.', 4.5),
('Review12', 'User_12', 'P29', 'Easy setup and reliable home security camera.', 5),
('Review13', 'User_13', 'P02', 'Perfect fit and comfortable to wear.', 4),
('Review14', 'User_14', 'P04', 'Excellent picture quality and smart features.', 5),
('Review15', 'User_15', 'P06', 'Long-lasting and vibrant colors.', 4.5),
('Review16', 'User_16', 'P09', 'Comfortable and stylish sofa set.', 4),
('Review17', 'User_17', 'P12', 'My dog loves this food!', 4.5),
('Review18', 'User_18', 'P15', 'Great quality canvas paint set for beginners.', 5),
('Review19', 'User_19', 'P18', 'Durable basketball with good grip.', 4),
('Review20', 'User_20', 'P22', 'Luxurious and well-made recliner chair.', 5);

-- View Contents of Reviews Table

SELECT * FROM tbl_Reviews;

-- Create LikedItem Table

CREATE TABLE tbl_LikedItem(ItemId INT IDENTITY PRIMARY KEY,
CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) NOT NULL,
ProductId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Products(ProductId) NOT NULL,
Date DATE NOT NULL);

-- Insert Values into LikedItem Table

INSERT INTO tbl_LikedItem
(CustomerId, ProductId, Date)
VALUES
('User_01', 'P01', '2024-03-18'),
('User_02', 'P03', '2024-03-18'),
('User_03', 'P05', '2024-03-18'),
('User_04', 'P08', '2024-03-18'),
('User_05', 'P11', '2024-03-18'),
('User_06', 'P13', '2024-03-18'),
('User_07', 'P16', '2024-03-18'),
('User_08', 'P19', '2024-03-18'),
('User_09', 'P21', '2024-03-18'),
('User_10', 'P24', '2024-03-18');

-- View Contents of LikedItem Table

SELECT * FROM tbl_LikedItem;

-- Create DeliveryStatus Table

CREATE TABLE tbl_DeliveryStatus(StatusId INT IDENTITY PRIMARY KEY,
CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) NOT NULL,
ProductId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Products(ProductId) NOT NULL,
Status VARCHAR(20) NOT NULL,
DeliveryCharge FLOAT DEFAULT 0);

-- Insert Values into DeliveryStatus Table

INSERT INTO tbl_DeliveryStatus
(CustomerId, ProductId, Status, DeliveryCharge)
VALUES
('User_01', 'P01', 'Delivered', 0),
('User_02', 'P03', 'In Transit', 10.99),
('User_03', 'P05', 'Pending', 0),
('User_04', 'P08', 'Delivered', 0),
('User_05', 'P11', 'Delivered', 0),
('User_06', 'P13', 'In Transit', 8.99),
('User_07', 'P16', 'Pending', 0),
('User_08', 'P19', 'Delivered', 0),
('User_09', 'P21', 'Delivered', 0),
('User_10', 'P24', 'In Transit', 7.99);

-- View Contents of DeliveryStatus Table

SELECT * FROM tbl_DeliveryStatus;

-- Create Discounts Table

CREATE TABLE tbl_Discounts(DiscountId INT IDENTITY PRIMARY KEY,
ProductId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Products(ProductId) NOT NULL,
DiscountPercentage FLOAT DEFAULT 0,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL,
IsActive BIT DEFAULT 0);

-- Insert Values into Discounts Table

INSERT INTO tbl_Discounts
(ProductId, DiscountPercentage, StartDate, EndDate, IsActive)
VALUES
('P01', 10, '2024-03-18', '2024-03-31', 1),
('P03', 5, '2024-03-18', '2024-03-31', 1),
('P05', 15, '2024-03-18', '2024-03-31', 1),
('P08', 10, '2024-03-18', '2024-03-31', 1),
('P11', 20, '2024-03-18', '2024-03-31', 1),
('P13', 5, '2024-03-18', '2024-03-31', 1),
('P16', 15, '2024-03-18', '2024-03-31', 1),
('P19', 10, '2024-03-18', '2024-03-31', 1),
('P21', 20, '2024-03-18', '2024-03-31', 1),
('P24', 5, '2024-03-18', '2024-03-31', 1);

-- View Contents of Discounts Table

SELECT * FROM tbl_Discounts;

-- Create DeliveryStaff Table

CREATE TABLE tbl_DeliveryStaff(DeliveryStaffId INT IDENTITY PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Email VARCHAR(30) CHECK(Email LIKE '%@%.com') NOT NULL,
PhoneNumber CHAR(10) CHECK(6000000000 <= PhoneNumber AND PhoneNumber <= 9999999999) NOT NULL,
Gender CHAR(1) CHECK(Gender = 'M' OR Gender = 'F') NOT NULL,
Address VARCHAR(100) NOT NULL);

-- Insert Values into DeliveryStaff Table

INSERT INTO tbl_DeliveryStaff
(Name, Email, PhoneNumber, Gender, Address)
VALUES
('Ravi Kumar', 'ravi@example.com', '9876543210', 'M', '123 Gandhi Rd, Delhi'),
('Priya Sharma', 'priya@example.com', '8765432109', 'F', '456 Nehru St, Mumbai'),
('Amit Patel', 'amit@example.com', '7654321098', 'M', '789 Tagore Ave, Ahmedabad'),
('Neha Gupta', 'neha@example.com', '6543210987', 'F', '101 Bose Rd, Kolkata'),
('Raj Singh', 'raj@example.com', '6432109876', 'M', '202 Nehru Rd, Jaipur'),
('Anjali Mishra', 'anjali@example.com', '8321098765', 'F', '303 Gandhi St, Lucknow'),
('Suresh Verma', 'suresh@example.com', '9210987654', 'M', '404 Bose St, Chennai'),
('Pooja Tiwari', 'pooja@example.com', '6109876543', 'F', '505 Tagore St, Bangalore'),
('Vikram Malhotra', 'vikram@example.com', '8098765432', 'M', '606 Nehru Ave, Hyderabad'),
('Deepika Reddy', 'deepika@example.com', '7987654321', 'F', '707 Gandhi Ave, Pune');

-- View Contents of DeliveryStaff Table

SELECT * FROM tbl_DeliveryStaff;

-- Add DeliveryStaffId to DeliveryStatus Table

ALTER TABLE tbl_DeliveryStatus
ADD DeliveryStaffId INT
FOREIGN KEY(DeliveryStaffId) REFERENCES tbl_DeliveryStaff(DeliveryStaffId);

-- Update DeliveryStaffId Values in DeliveryStatus Table

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 1
WHERE StatusId = 1;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 2
WHERE StatusId = 2;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 3
WHERE StatusId = 3;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 4
WHERE StatusId = 4;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 5
WHERE StatusId = 5;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 6
WHERE StatusId = 6;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 7
WHERE StatusId = 7;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 8
WHERE StatusId = 8;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 9
WHERE StatusId = 9;

UPDATE tbl_DeliveryStatus
SET DeliveryStaffId = 10
WHERE StatusId = 10;

-- View Contents of DeliveryStatus Table

SELECT * FROM tbl_DeliveryStatus;

-- Create CheckDeliveryStatus Stored Procedure

CREATE PROCEDURE usp_CheckDeliveryStatus
@CustomerId VARCHAR(10)

AS

BEGIN

if(@CustomerId NOT IN(SELECT CustomerId FROM tbl_Orders))
BEGIN
RAISERROR('No Order has been made by this Customer', 16, 1);
END

else
if(@CustomerId = ANY(SELECT CustomerId FROM tbl_Orders))
BEGIN
SELECT ProductId, Status
FROM tbl_DeliveryStatus
WHERE CustomerId = @CustomerId;
END

END

-- Execute CheckDeliveryStatus Stored Procedure

EXECUTE usp_CheckDeliveryStatus 'User_05';

-- Non-Recursive Stored Procedure

CREATE PROCEDURE usp_PlaceOrdersNonRecursively
@CustomerId VARCHAR(10),
@ProductId VARCHAR(10),
@OrderQuantity INT

AS

BEGIN

DECLARE @StockPresent INT;

SELECT @StockPresent = QuantityAvailable
FROM tbl_Products
WHERE ProductId = @ProductId;

DECLARE @UnitAmount FLOAT;

SELECT @UnitAmount = UnitAmount
FROM tbl_Products
WHERE ProductId = @ProductId;

if(@StockPresent < @OrderQuantity)
BEGIN
RAISERROR('Not Enough Stock Available', 16, 1);
END

else
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE tbl_Products
SET QuantityAvailable = (QuantityAvailable - @OrderQuantity)
WHERE ProductId = @ProductId;

DECLARE @MaxOrderId INT, @ExtractOrderId INT;

SELECT @ExtractOrderId = SUBSTRING(OrderId, 6, 2) FROM tbl_Orders;
SELECT @MaxOrderId = CASE WHEN MAX(@ExtractOrderId) IS NULL THEN 0 ELSE MAX(@ExtractOrderId) END FROM tbl_Orders;
SET @MaxOrderId = @MaxOrderId + 1;

DECLARE @OrderId VARCHAR(10);

SELECT @OrderId = CONCAT('Order', @MaxOrderId);

INSERT INTO tbl_Orders
VALUES(@OrderId, @ProductId, GETDATE(), @OrderQuantity, @UnitAmount, @CustomerId);

DECLARE @MaxPaymentId INT, @ExtractPaymentId INT;

SELECT @ExtractPaymentId = SUBSTRING(PaymentId, 4, 2) FROM tbl_Payments;
SELECT @MaxPaymentId = CASE WHEN MAX(@ExtractPaymentId) IS NULL THEN 0 ELSE MAX(@ExtractPaymentId) END FROM tbl_Payments;
SET @MaxPaymentId = @MaxPaymentId + 1;

DECLARE @PaymentId VARCHAR(10);

SELECT @PaymentId = CONCAT('PAY', @MaxPaymentId);

INSERT INTO tbl_Payments
VALUES(@PaymentId, @OrderId, GETDATE(), '0000000000000000', '2025-04-05', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = @OrderId));

COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END

END

-- Execute PlaceOrdersNonRecursively Stored Procedure

EXECUTE usp_PlaceOrdersNonRecursively 'User_05', 'P05', 5;

-- View Products, Orders and Payments tables

SELECT * FROM tbl_Products;
SELECT * FROM tbl_Orders;
SELECT * FROM tbl_Payments;

-- Recursive Stored Procedure

CREATE OR ALTER PROCEDURE usp_PlaceOrdersRecursively
(
@CustomerId VARCHAR(10),
@ProductId VARCHAR(10),
@OrderQuantity INT
)

AS

BEGIN

DECLARE @StockPresent INT;

SELECT @StockPresent = QuantityAvailable
FROM tbl_Products
WHERE ProductId = @ProductId;

DECLARE @UnitAmount FLOAT;

SELECT @UnitAmount = UnitAmount
FROM tbl_Products
WHERE ProductId = @ProductId;

if(@StockPresent < @OrderQuantity)
BEGIN
RAISERROR('Not Enough Stock Available', 16, 1);
END

if(@OrderQuantity <= 5)
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE tbl_Products
SET QuantityAvailable = (QuantityAvailable - @OrderQuantity)
WHERE ProductId = @ProductId;

DECLARE @MaxOrderId INT, @ExtractOrderId INT;

SELECT @ExtractOrderId = SUBSTRING(OrderId, 6, 2) FROM tbl_Orders;
SELECT @MaxOrderId = CASE WHEN MAX(@ExtractOrderId) IS NULL THEN 0 ELSE MAX(@ExtractOrderId) END FROM tbl_Orders;
SET @MaxOrderId = @MaxOrderId + 1;

DECLARE @OrderId VARCHAR(10);

SELECT @OrderId = CONCAT('Order', @MaxOrderId);

INSERT INTO tbl_Orders
VALUES(@OrderId, @ProductId, GETDATE(), @OrderQuantity, @UnitAmount, @CustomerId);

DECLARE @MaxPaymentId INT, @ExtractPaymentId INT;

SELECT @ExtractPaymentId = SUBSTRING(PaymentId, 4, 2) FROM tbl_Payments;
SELECT @MaxPaymentId = CASE WHEN MAX(@ExtractPaymentId) IS NULL THEN 0 ELSE MAX(@ExtractPaymentId) END FROM tbl_Payments;
SET @MaxPaymentId = @MaxPaymentId + 1;

DECLARE @PaymentId VARCHAR(10);

SELECT @PaymentId = CONCAT('PAY', @MaxPaymentId);

INSERT INTO tbl_Payments
VALUES(@PaymentId, @OrderId, GETDATE(), '0000000000000000', '2025-04-05', (SELECT UnitAmount * OrderQuantity FROM tbl_Orders WHERE OrderId = @OrderId));

COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END

else
BEGIN

EXECUTE usp_PlaceOrdersRecursively @CustomerId, @ProductId, 5;

DECLARE @RemainingQuantity INT = @OrderQuantity - 5;

EXECUTE usp_PlaceOrdersRecursively @CustomerId, @ProductId, @RemainingQuantity;

END

END

-- Execute PlaceOrdersRecursively Stored Procedure

EXECUTE usp_PlaceOrdersRecursively 'User_20', 'P20', 20;

-- View Products, Orders and Payments tables

SELECT * FROM tbl_Products;
SELECT * FROM tbl_Orders;
SELECT * FROM tbl_Payments;