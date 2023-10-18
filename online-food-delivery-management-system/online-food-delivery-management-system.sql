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