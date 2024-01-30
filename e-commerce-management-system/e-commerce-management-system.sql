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