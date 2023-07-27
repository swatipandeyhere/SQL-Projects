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