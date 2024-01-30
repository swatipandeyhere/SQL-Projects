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