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