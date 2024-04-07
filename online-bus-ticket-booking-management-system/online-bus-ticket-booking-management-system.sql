CREATE DATABASE OnlineBusTicketBookingManagementSystem;

-- Create User Table

CREATE TABLE tbl_User(
UserId VARCHAR(10) PRIMARY KEY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Email VARCHAR(30) UNIQUE NOT NULL CHECK(Email LIKE '%@%.%'),
Pass VARCHAR(20) NOT NULL);

-- Insert Values into User Table

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_001', 'Sunita', 'Sharma', 'sunita.sharma@gmail.com', HASHBYTES('MD2', 'password1'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_002', 'Ashok', 'Singhal', 'ashok.singhal@yahoo.com', HASHBYTES('MD2', 'password2'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_003', 'Rohit', 'Rana', 'rohit.rana@gmail.com', HASHBYTES('MD2', 'password3'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_004', 'Jyoti', 'Lamba', 'jyoti.lamba@yahoo.com', HASHBYTES('MD2', 'password4'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_005', 'Sumit', 'Vyas', 'sumit.vyas@gmail.com', HASHBYTES('MD2', 'password5'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_006', 'Manoj', 'Kaushik', 'manoj.kaushik@yahoo.com', HASHBYTES('MD2', 'password6'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_007', 'Chetan', 'Gupta', 'chetan.gupta@gmail.com', HASHBYTES('MD2', 'password7'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_008', 'Madhuri', 'Thakkar', 'madhuri.thakkar@yahoo.com', HASHBYTES('MD2', 'password8'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_009', 'Sneha', 'Nair', 'sneha.nair@gmail.com', HASHBYTES('MD2', 'password9'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_010', 'Binod', 'Goel', 'binod.goel@yahoo.com', HASHBYTES('MD2', 'password10'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_011', 'Tushar', 'Tiwari', 'tushar.tiwari@gmail.com', HASHBYTES('MD2', 'password11'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_012', 'Anubhav', 'Kumar', 'anubhav.kumar@gmail.com', HASHBYTES('MD2', 'password12'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_013', 'Shreya', 'Dubey', 'shreya.dubey@gmail.com', HASHBYTES('MD2', 'password13'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_014', 'Shubham', 'Sherki', 'shubham.sherki@gmail.com', HASHBYTES('MD2', 'password14'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_015', 'Arnab', 'Banerjee', 'arnab.banerjee@gmail.com', HASHBYTES('MD2', 'password15'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_016', 'Mahesh', 'Jain', 'mahesh.jain@gmail.com', HASHBYTES('MD2', 'password16'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_017', 'Neha', 'Kapoor', 'neha.kapoor@yahoo.com', HASHBYTES('MD2', 'password17'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_018', 'Kabir', 'Verma', 'kabir.verma@gmail.com', HASHBYTES('MD2', 'password18'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_019', 'Jitendra', 'Singh', 'jitendra.singh@gmail.com', HASHBYTES('MD2', 'password19'));

INSERT INTO
tbl_User(UserId, FirstName, LastName, Email, Pass)
VALUES('user_020', 'Priyank', 'Saxena', 'priyank.saxena@gmail.com', HASHBYTES('MD2', 'password20'));

-- View Contents of User Table

SELECT * FROM tbl_User;

-- Create Bus Table

CREATE TABLE tbl_Bus(BusId VARCHAR(10) PRIMARY KEY,
BusName VARCHAR(25) NOT NULL,
Source VARCHAR(25) NOT NULL,
Destination VARCHAR(25) NOT NULL,
DepartureTime DATETIME NOT NULL,
ArrivalTime DATETIME NOT NULL,
Fare DECIMAL(10, 2) NOT NULL);

-- Insert Values into Bus Table

INSERT INTO
tbl_Bus(BusId, BusName, Source, Destination, DepartureTime, ArrivalTime, Fare)
VALUES
('bus_001', 'Rajdhani Express', 'Delhi', 'Mumbai', '2024-04-06 08:00:00', '2024-04-06 14:00:00', 100.00),
('bus_002', 'Shatabdi Express', 'Mumbai', 'Bangalore', '2024-04-06 09:00:00', '2024-04-06 15:00:00', 90.00),
('bus_003', 'Garib Rath', 'Bangalore', 'Chennai', '2024-04-06 10:00:00', '2024-04-06 16:00:00', 120.00),
('bus_004', 'Duronto Express', 'Chennai', 'Kolkata', '2024-04-06 11:00:00', '2024-04-06 17:00:00', 110.00),
('bus_005', 'Jan Shatabdi', 'Kolkata', 'Delhi', '2024-04-06 12:00:00', '2024-04-06 18:00:00', 95.00),
('bus_006', 'Vande Bharat Express', 'Delhi', 'Varanasi', '2024-04-06 13:00:00', '2024-04-06 19:00:00', 150.00),
('bus_007', 'Gatimaan Express', 'Varanasi', 'Agra', '2024-04-06 14:00:00', '2024-04-06 20:00:00', 130.00),
('bus_008', 'Tejas Express', 'Agra', 'Jaipur', '2024-04-06 15:00:00', '2024-04-06 21:00:00', 110.00),
('bus_009', 'Mahamana Express', 'Jaipur', 'Ahmedabad', '2024-04-06 16:00:00', '2024-04-06 22:00:00', 120.00),
('bus_010', 'Antyodaya Express', 'Ahmedabad', 'Surat', '2024-04-06 17:00:00', '2024-04-06 23:00:00', 80.00),
('bus_011', 'Humsafar Express', 'Surat', 'Pune', '2024-04-06 18:00:00', '2024-04-07 00:00:00', 100.00),
('bus_012', 'Yuva Express', 'Pune', 'Hyderabad', '2024-04-06 19:00:00', '2024-04-07 01:00:00', 110.00),
('bus_013', 'Sampark Kranti Express', 'Hyderabad', 'Chandigarh', '2024-04-06 20:00:00', '2024-04-07 02:00:00', 130.00),
('bus_014', 'Swarna Jayanti Express', 'Chandigarh', 'Amritsar', '2024-04-06 21:00:00', '2024-04-07 03:00:00', 90.00),
('bus_015', 'Rajya Rani Express', 'Amritsar', 'Jammu', '2024-04-06 22:00:00', '2024-04-07 04:00:00', 70.00);

-- View Contents of Bus Table

SELECT * FROM tbl_Bus;