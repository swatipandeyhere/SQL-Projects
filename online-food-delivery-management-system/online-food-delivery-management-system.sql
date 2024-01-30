CREATE DATABASE OnlineFoodDeliveryManagementSystem;

-- Create Customer Table

CREATE TABLE tbl_Customer(CustomerId INT IDENTITY(100, 1) PRIMARY KEY,
FirstName VARCHAR(15) NOT NULL,
LastName VARCHAR(15) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(25) NOT NULL,
State VARCHAR(30) NOT NULL,
ZipCode INT NOT NULL,
ContactNumber BIGINT NOT NULL UNIQUE CONSTRAINT tbl_Customer_ContactNumber CHECK(LEN(ContactNumber) = 10));

-- Insert Values into Customer Table

INSERT INTO tbl_Customer
VALUES
('Sunita', 'Sharma', 'Malviya Nagar', 'New Delhi', 'Delhi', 110017, '9066625436'),
('Ashok', 'Singhal', 'Railway Colony', 'Samastipur', 'Bihar', 848101, '9220123123'),
('Rohit', 'Rana', 'Mohindra Colony', 'Amritsar', 'Punjab', 143001, '9123123123'),
('Jyoti', 'Lamba', 'Janta Colony', 'Rohtak', 'Haryana', 124001, '9876543211'),
('Sumit', 'Vats', 'Gayatri Vihar', 'Lucknow', 'Uttar Pradesh', 226009, '9321654432'),
('Manoj', 'Kaushik', 'Madrampur, Civil Lines', 'Jaipur', 'Rajasthan', 302006, '9876123456'),
('Chetan', 'Gupta', 'Chanakyapuri Colony', 'Rewa', 'Madhya Pradesh', 329376, '9762785423'),
('Madhuri', 'Thakkar', 'Alkapuri', 'Vadodara', 'Gujarat', 100165, '9872223456'),
('Sneha', 'Nair', 'Thayalangadi', 'Kasaragod', 'Kerala', 671121, '9876127776'),
('Binod', 'Goel', 'Hanuman Square', 'Nagpur', 'Maharashtra', 331556, '9387655556');

-- View Contents of Customer Table

SELECT * FROM tbl_Customer;

-- Create Login Table

CREATE TABLE tbl_Login(UserName VARCHAR(15) PRIMARY KEY,
CustomerId INT REFERENCES tbl_Customer(CustomerId),
Password VARBINARY(20),
Email VARCHAR(30) NOT NULL,
CONSTRAINT tbl_Login_Email CHECK(Email LIKE '%@%.%'));

-- Insert Values into Login Table

INSERT INTO
tbl_Login(UserName, CustomerId, Password, Email)
VALUES
('sunita.sharma', 100, HASHBYTES('MD5', 'password00'), 'sunita.sharma@gmail.com'),
('ashok.singhal', 101, HASHBYTES('MD5', 'password01'), 'ashok.singhal@gmail.com'),
('rohit.rana', 102, HASHBYTES('MD5', 'password02'), 'rohit.rana@gmail.com'),
('jyoti.lamba', 103, HASHBYTES('MD5', 'password03'), 'jyoti.lamba@gmail.com'),
('sumit.vats', 104, HASHBYTES('MD5', 'password04'), 'sumit.vats@gmail.com'),
('manoj.kaushik', 105, HASHBYTES('MD5', 'password05'), 'manoj.kaushik@gmail.com'),
('chetan.gupta', 106, HASHBYTES('MD5', 'password06'), 'chetan.gupta@gmail.com'),
('madhuri.thakkar', 107, HASHBYTES('MD5', 'password07'), 'madhuri.thakkar@gmail.com'),
('sneha.nair', 108, HASHBYTES('MD5', 'password08'), 'sneha.nair@gmail.com'),
('binod.goel', 109, HASHBYTES('MD5', 'password09'), 'binod.goel@gmail.com');

-- View Contents of Login Table

SELECT * FROM tbl_Login;

-- Create Chef Table

CREATE TABLE tbl_Chef(ChefId INT PRIMARY KEY,
FirstName VARCHAR(10),
LastName VARCHAR(10),
Experience INT,
Speciality VARCHAR(30));

-- Insert Values into Chef Table

INSERT INTO
tbl_Chef(ChefId, FirstName, LastName, Experience, Speciality)
VALUES
(1, 'John', 'Doe', 5, 'Italian Cuisine'),
(2, 'Alice', 'Smith', 8, 'French Cuisine'),
(3, 'Bob', 'Johnson', 10, 'Japanese Cuisine'),
(4, 'Eva', 'Brown', 6, 'Mediterranean Cuisine'),
(5, 'David', 'White', 3, 'Vegetarian Cuisine'),
(6, 'Sophia', 'Jones', 12, 'Mexican Cuisine'),
(7, 'Michael', 'Clark', 7, 'Asian Fusion'),
(8, 'Olivia', 'Miller', 9, 'Indian Cuisine'),
(9, 'Daniel', 'Taylor', 4, 'Seafood'),
(10, 'Emma', 'Davis', 11, 'BBQ');

-- View Contents of Chef Table

SELECT * FROM tbl_Chef;

-- Create Restaurant Table

CREATE TABLE tbl_Restaurant(RestaurantId INT IDENTITY(200, 1) PRIMARY KEY,
RestaurantName VARCHAR(30) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(15) NOT NULL,
State VARCHAR(10) NOT NULL,
ZipCode INT NOT NULL,
OperatingHours VARCHAR(20) NOT NULL,
OperatingDays VARCHAR(10) NOT NULL,
ChefId INT REFERENCES tbl_Chef(ChefId));

-- Insert Values into Restaurant Table

INSERT INTO
tbl_Restaurant(RestaurantName, Address, City, State, ZipCode, OperatingHours, OperatingDays, ChefId)
VALUES
('Cuisine Haven', '123 Main St', 'Cityville', 'CA', 12345, '10:00 AM - 9:00 PM', 'Mon-Sun', 1),
('La Petite Brasserie', '456 Oak St', 'Townsville', 'NY', 67890, '11:00 AM - 10:00 PM', 'Tue-Sat', 2),
('Sakura Sushi House', '789 Elm St', 'Villagetown', 'TX', 54321, '12:00 PM - 8:00 PM', 'Wed-Sun', 3),
('Mediterranean Delights', '987 Pine St', 'Hillside', 'FL', 87654, '9:00 AM - 7:00 PM', 'Mon-Fri', 4),
('Green Bites', '654 Birch St', 'Grove City', 'OH', 23456, '8:00 AM - 6:00 PM', 'Thu-Sun', 5),
('Taco Fiesta', '321 Maple St', 'Parkville', 'AZ', 34567, '1:00 PM - 11:00 PM', 'Fri-Sun', 6),
('Fusion Flavors', '876 Cedar St', 'Riverdale', 'IL', 87623, '3:00 PM - 10:00 PM', 'Mon-Wed', 7),
('Spice Haven', '543 Walnut St', 'Harbortown', 'WA', 23478, '2:00 PM - 9:00 PM', 'Tue-Sat', 8),
('Seafood Paradise', '234 Oak St', 'Beach City', 'CA', 56789, '12:00 PM - 8:00 PM', 'Wed-Sun', 9),
('BBQ Junction', '765 Pine St', 'Grilltown', 'TX', 87654, '4:00 PM - 11:00 PM', 'Thu-Sat', 10);

-- View Contents of Restaurant Table

SELECT * FROM tbl_Restaurant;

-- Create FoodItems Table

CREATE TABLE tbl_FoodItems(FoodItemId INT IDENTITY(300, 1) PRIMARY KEY,
FoodName VARCHAR(40) NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
Category VARCHAR(15) NOT NULL,
RestaurantId INT REFERENCES tbl_Restaurant(RestaurantId),
FoodDescription VARCHAR(100) NOT NULL);

-- Insert Values into FoodItems Table

INSERT INTO
tbl_FoodItems(FoodName, Price, Category, RestaurantId, FoodDescription)
VALUES
('Margherita Pizza', 12.99, 'Pizza', 200, 'Classic tomato and mozzarella'),
('Coq au Vin', 18.50, 'Main Course', 201, 'Chicken braised in red wine with mushrooms and onions'),
('Sushi Platter', 24.99, 'Sushi', 202, 'Assortment of fresh sushi and sashimi'),
('Greek Salad', 8.99, 'Salad', 203, 'Fresh vegetables with feta cheese and olives'),
('Vegetarian Wrap', 10.50, 'Wrap', 204, 'Grilled veggies wrapped in a tortilla'),
('Taco Sampler', 14.75, 'Tacos', 205, 'Assorted tacos with different fillings'),
('Fusion Pasta', 16.99, 'Pasta', 206, 'Pasta with a fusion of flavors'),
('Spicy Curry Bowl', 13.50, 'Curry', 207, 'Spicy curry with a mix of vegetables and protein'),
('Seafood Platter', 22.99, 'Seafood', 208, 'Assorted seafood delights'),
('BBQ Ribs', 19.99, 'BBQ', 209, 'Slow-cooked BBQ ribs with a tangy glaze');

-- View Contents of FoodItems Table

SELECT * FROM tbl_FoodItems;

-- Create Card Table

CREATE TABLE tbl_Card(CardId INT IDENTITY(400, 1) PRIMARY KEY,
CustomerId INT REFERENCES tbl_Customer(CustomerId),
CardNumber BIGINT NOT NULL,
CONSTRAINT tbl_Card_CardNumber CHECK(LEN(CONVERT(VARCHAR, CardNumber)) = 16),
CardHolderName VARCHAR(15) NOT NULL,
ExpiryDate DATE NOT NULL,
CardType VARCHAR(20) NOT NULL,
CVV INT NOT NULL,
CONSTRAINT tbl_Card_CVV CHECK(LEN(CONVERT(VARCHAR, CVV)) = 3 OR LEN(CONVERT(VARCHAR, CVV)) = 4));

-- Insert Values into Card Table

INSERT INTO tbl_Card
VALUES
(100, 4111222233334444, 'Sunita Sharma', '2025-12-31', 'Visa', 123),
(101, 5105105105105100, 'Ashok Singhal', '2024-09-30', 'MasterCard', 456),
(102, 6011122233344445, 'Rohit Rana', '2023-05-15', 'Discover', 789),
(103, 3411222233334446, 'Jyoti Lamba', '2024-11-28', 'American Express', 2346),
(104, 5100123412341234, 'Sumit Vats', '2023-08-22', 'MasterCard', 567),
(105, 4111222233331234, 'Manoj Kaushik', '2025-04-17', 'Visa', 890),
(106, 6011222233344445, 'Chetan Gupta', '2023-12-05', 'Discover', 123),
(107, 3411222233345674, 'Madhuri Thakkar', '2024-06-10', 'American Express', 4567),
(108, 5100123412349876, 'Sneha Nair', '2022-10-03', 'MasterCard', 789),
(109, 4111222233337654, 'Binod Goel', '2023-02-14', 'Visa', 321);

-- View Contents of Card Table

SELECT * FROM tbl_Card;

-- Create Promocode Table

CREATE TABLE tbl_Promocode(Promocode VARCHAR(40) PRIMARY KEY,
StartDate DATETIME NOT NULL,
EndDate DATETIME NOT NULL,
Discount DECIMAL(10, 2) NOT NULL);

ALTER TABLE tbl_Promocode
ADD CONSTRAINT tbl_Promocode_EndDate CHECK(EndDate > StartDate);

-- Insert Values into Promocode Table

INSERT INTO
tbl_Promocode(Promocode, StartDate, EndDate, Discount)
VALUES
('CODE01', '2024-02-01 10:00:00', '2024-02-15 18:30:00', 10.00),
('CODE02', '2024-03-05 08:45:00', '2024-03-20 20:15:00', 15.50),
('CODE03', '2024-04-10 12:30:00', '2024-04-25 16:45:00', 20.00),
('CODE04', '2024-05-15 14:00:00', '2024-05-30 22:30:00', 25.75),
('CODE05', '2024-06-20 09:15:00', '2024-07-05 17:45:00', 30.00),
('CODE06', '2024-08-01 11:30:00', '2024-08-15 14:45:00', 12.25),
('CODE07', '2024-09-05 16:45:00', '2024-09-20 19:00:00', 18.50),
('CODE08', '2024-10-10 18:00:00', '2024-10-25 21:15:00', 22.75),
('CODE09', '2024-11-15 20:15:00', '2024-11-30 23:30:00', 28.00),
('CODE10', '2024-12-20 22:30:00', '2025-01-05 02:00:00', 32.50);

-- View Contents of Promocode Table

SELECT * FROM tbl_Promocode;

-- Create DeliveryStaff Table

CREATE TABLE tbl_DeliveryStaff(DeliveryStaffId INT IDENTITY(500, 1) PRIMARY KEY,
FirstName VARCHAR(15) NOT NULL,
LastName VARCHAR(15) NOT NULL,
ContactNumber BIGINT
CONSTRAINT tbl_DeliveryStaff_ContactNumber CHECK(LEN(ContactNumber) = 10));

-- Insert Values into DeliveryStaff Table

INSERT INTO
tbl_DeliveryStaff(FirstName, LastName, ContactNumber)
VALUES
('John', 'Doe', 1234567890),
('Jane', 'Smith', 9876543210),
('Bob', 'Johnson', 5551234567),
('Alice', 'Williams', 7890123456),
('Charlie', 'Brown', 4567890123),
('David', 'Miller', 3216549870),
('Eva', 'Jones', 6543217890),
('Frank', 'White', 8765432109),
('Grace', 'Davis', 2345678901),
('Henry', 'Taylor', 7890123456);

-- View Contents of DeliveryStaff Table

SELECT * FROM tbl_DeliveryStaff;