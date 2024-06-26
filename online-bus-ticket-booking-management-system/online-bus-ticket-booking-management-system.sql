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

-- Create Booking Table

CREATE TABLE tbl_Booking(BookingId INT PRIMARY KEY,
UserId VARCHAR(10) NOT NULL,
BusId VARCHAR(10) NOT NULL,
SeatsBooked TINYINT NOT NULL,
TotalFare DECIMAL(10, 2) NOT NULL,
FOREIGN KEY(UserId) REFERENCES tbl_User(UserId),
FOREIGN KEY(BusId) REFERENCES tbl_Bus(BusId));

-- Insert Values into Booking Table

INSERT INTO
tbl_Booking(BookingId, UserId, BusId, SeatsBooked, TotalFare)
VALUES
(1, 'user_007', 'bus_011', 4, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_011') * 4),
(2, 'user_002', 'bus_004', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_004') * 2),
(3, 'user_009', 'bus_006', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_006') * 3),
(4, 'user_015', 'bus_002', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_002') * 1),
(5, 'user_012', 'bus_008', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_008') * 2),
(6, 'user_003', 'bus_013', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_013') * 1),
(7, 'user_010', 'bus_010', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_010') * 2),
(8, 'user_005', 'bus_003', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_003') * 3),
(9, 'user_011', 'bus_015', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_015') * 1),
(10, 'user_008', 'bus_007', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_007') * 2),
(11, 'user_001', 'bus_012', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_012') * 3),
(12, 'user_017', 'bus_001', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_001') * 1),
(13, 'user_016', 'bus_014', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_014') * 2),
(14, 'user_020', 'bus_009', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_009') * 3),
(15, 'user_019', 'bus_005', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_005') * 1),
(16, 'user_018', 'bus_003', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_003') * 2),
(17, 'user_013', 'bus_014', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_014') * 3),
(18, 'user_004', 'bus_010', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_010') * 1),
(19, 'user_006', 'bus_006', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_006') * 2),
(20, 'user_011', 'bus_009', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_009') * 3),
(21, 'user_012', 'bus_008', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_008') * 1),
(22, 'user_014', 'bus_015', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_015') * 2),
(23, 'user_016', 'bus_001', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_001') * 3),
(24, 'user_017', 'bus_005', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_005') * 1),
(25, 'user_019', 'bus_012', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_012') * 2),
(26, 'user_001', 'bus_004', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_004') * 3),
(27, 'user_002', 'bus_007', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_007') * 1),
(28, 'user_003', 'bus_011', 2, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_011') * 2),
(29, 'user_005', 'bus_013', 3, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_013') * 3),
(30, 'user_007', 'bus_002', 1, (SELECT Fare FROM tbl_Bus WHERE BusId = 'bus_002') * 1);

-- View Contents of Booking Table

SELECT * FROM tbl_Booking;

-- Create Payment Table

CREATE TABLE tbl_Payment(PaymentId INT PRIMARY KEY,
BookingId INT NOT NULL,
TotalAmount DECIMAL(10, 2) NOT NULL,
PaymentDate DATETIME NOT NULL,
FOREIGN KEY(BookingId) REFERENCES tbl_Booking(BookingId));

-- Insert Values into Payment Table

INSERT INTO
tbl_Payment(PaymentId, BookingId, TotalAmount, PaymentDate)
VALUES
(1, 1, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 1), '2024-04-06 10:30:00'),
(2, 2, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 2), '2024-04-06 11:15:00'),
(3, 3, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 3), '2024-04-06 11:45:00'),
(4, 4, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 4), '2024-04-06 12:00:00'),
(5, 5, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 5), '2024-04-06 12:30:00'),
(6, 6, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 6), '2024-04-06 13:15:00'),
(7, 7, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 7), '2024-04-06 13:45:00'),
(8, 8, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 8), '2024-04-06 14:00:00'),
(9, 9, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 9), '2024-04-06 14:30:00'),
(10, 10, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 10), '2024-04-06 15:15:00'),
(11, 11, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 11), '2024-04-06 15:45:00'),
(12, 12, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 12), '2024-04-06 16:00:00'),
(13, 13, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 13), '2024-04-06 16:30:00'),
(14, 14, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 14), '2024-04-06 17:15:00'),
(15, 15, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 15), '2024-04-06 17:45:00'),
(16, 16, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 16), '2024-04-06 18:00:00'),
(17, 17, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 17), '2024-04-06 18:30:00'),
(18, 18, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 18), '2024-04-06 19:00:00'),
(19, 19, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 19), '2024-04-06 19:30:00'),
(20, 20, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 20), '2024-04-06 20:00:00'),
(21, 21, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 21), '2024-04-06 20:30:00'),
(22, 22, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 22), '2024-04-06 21:00:00'),
(23, 23, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 23), '2024-04-06 21:30:00'),
(24, 24, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 24), '2024-04-06 22:00:00'),
(25, 25, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 25), '2024-04-06 22:30:00'),
(26, 26, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 26), '2024-04-06 23:00:00'),
(27, 27, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 27), '2024-04-06 23:30:00'),
(28, 28, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 28), '2024-04-07 00:00:00'),
(29, 29, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 29), '2024-04-07 00:30:00'),
(30, 30, (SELECT TotalFare FROM tbl_Booking WHERE BookingId = 30), '2024-04-07 01:00:00');

-- View Contents of Payment Table

SELECT * FROM tbl_Payment;

-- Create Reviews Table

CREATE TABLE tbl_Reviews(ReviewId VARCHAR(10) PRIMARY KEY,
UserId VARCHAR(10) NOT NULL,
BusId VARCHAR(10) NOT NULL,
Rating TINYINT NOT NULL,
Review VARCHAR(255) NOT NULL,
FOREIGN KEY(UserId) REFERENCES tbl_User(UserId),
FOREIGN KEY(BusId) REFERENCES tbl_Bus(BusId));

-- Insert Values into Reviews Table

INSERT INTO
tbl_Reviews(ReviewId, UserId, BusId, Rating, Review)
VALUES
('review_001', 'user_001', 'bus_001', 4, 'Great service and comfortable journey.'),
('review_002', 'user_002', 'bus_002', 5, 'Excellent bus with punctual timings.'),
('review_003', 'user_003', 'bus_003', 3, 'Average experience, could improve cleanliness.'),
('review_004', 'user_004', 'bus_004', 4, 'Friendly staff and smooth ride.'),
('review_005', 'user_005', 'bus_005', 5, 'Highly recommended, fantastic service.'),
('review_006', 'user_006', 'bus_006', 3, 'Decent journey, but seats were a bit uncomfortable.'),
('review_007', 'user_007', 'bus_007', 4, 'Good value for money, will book again.'),
('review_008', 'user_008', 'bus_008', 5, 'Impressive service, would definitely travel again.'),
('review_009', 'user_009', 'bus_009', 3, 'Satisfactory experience, but could be better.'),
('review_010', 'user_010', 'bus_010', 4, 'Nice bus with courteous staff.'),
('review_011', 'user_011', 'bus_011', 5, 'Absolutely loved the journey, no complaints.'),
('review_012', 'user_012', 'bus_012', 3, 'Average journey, nothing exceptional.'),
('review_013', 'user_013', 'bus_013', 4, 'Comfortable seats and pleasant journey.'),
('review_014', 'user_014', 'bus_014', 5, 'Great experience overall, would recommend to others.'),
('review_015', 'user_015', 'bus_015', 4, 'Good service, reached destination on time.'),
('review_016', 'user_016', 'bus_001', 3, 'Decent journey, but could be more comfortable.'),
('review_017', 'user_017', 'bus_002', 4, 'Enjoyed the trip, good service overall.'),
('review_018', 'user_018', 'bus_003', 5, 'Excellent experience, highly satisfied.'),
('review_019', 'user_019', 'bus_004', 4, 'Smooth ride and friendly staff.'),
('review_020', 'user_020', 'bus_005', 3, 'Average service, nothing exceptional.'),
('review_021', 'user_001', 'bus_006', 4, 'Comfortable seats and timely arrival.'),
('review_022', 'user_002', 'bus_007', 5, 'Superb journey, exceeded expectations.'),
('review_023', 'user_003', 'bus_008', 4, 'Good value for money, would travel again.'),
('review_024', 'user_004', 'bus_009', 3, 'Decent service, but could improve cleanliness.'),
('review_025', 'user_005', 'bus_010', 4, 'Nice bus with courteous staff.');

-- View Contents of Reviews Table

SELECT * FROM tbl_Reviews;

-- Create Seats Table

CREATE TABLE tbl_Seats(BusId VARCHAR(10) NOT NULL,
TotalSeats TINYINT NOT NULL,
AvailableSeats TINYINT NOT NULL,
FOREIGN KEY(BusId) REFERENCES tbl_Bus(BusId));

-- Insert Values into Seats Table

INSERT INTO
tbl_Seats(BusId, TotalSeats, AvailableSeats)
VALUES
('bus_001', 50, 50 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_001')),
('bus_002', 40, 40 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_002')),
('bus_003', 60, 60 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_003')),
('bus_004', 55, 55 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_004')),
('bus_005', 45, 45 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_005')),
('bus_006', 50, 50 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_006')),
('bus_007', 40, 40 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_007')),
('bus_008', 60, 60 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_008')),
('bus_009', 55, 55 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_009')),
('bus_010', 45, 45 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_010')),
('bus_011', 50, 50 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_011')),
('bus_012', 40, 40 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_012')),
('bus_013', 60, 60 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_013')),
('bus_014', 55, 55 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_014')),
('bus_015', 30, 30 - (SELECT SUM(SeatsBooked) FROM tbl_Booking WHERE BusId = 'bus_015'));

-- View Contents of Seats Table

SELECT * FROM tbl_Seats;

-- Create a Stored Procedure to Check Seat Availability for a Specified Bus

CREATE PROCEDURE usp_CheckSeatAvailabilityForSpecifiedBus
@BusId VARCHAR(10)

AS

BEGIN

SELECT s.BusId, BusName, AvailableSeats
FROM tbl_Seats s
INNER JOIN
tbl_Bus b
ON s.BusId = @BusId
AND s.BusId = b.BusId;

END

-- Execute CheckSeatAvailabilityForSpecifiedBus Stored Procedure

EXECUTE usp_CheckSeatAvailabilityForSpecifiedBus 'bus_010';

-- Create a Stored Procedure to Check Bus Availability on a Specified Date

CREATE PROCEDURE usp_CheckBusAvailabilityOnSpecifiedDate
@BusId VARCHAR(10),
@Date DATETIME

AS

BEGIN

SELECT BusId, BusName
FROM tbl_Bus
WHERE BusId = @BusId
AND DepartureTime > @Date;

END

-- Execute CheckBusAvailabilityOnSpecifiedDate Stored Procedure

EXECUTE usp_CheckBusAvailabilityOnSpecifiedDate 'bus_005', '2024-04-05 12:00:00';

-- Create a Stored Procedure to retrieve Bus Reviews

CREATE PROCEDURE usp_BusReviews
@BusId VARCHAR(10)

AS

BEGIN

SELECT u.FirstName + ' ' + u.LastName AS UserName, b.BusName, r.Rating, r.Review
FROM tbl_User u
INNER JOIN tbl_Reviews r
ON u.UserId = r.UserId
INNER JOIN tbl_Bus b
ON r.BusId = b.BusId
WHERE r.BusId = @BusId;

END;

-- Execute BusReviews Stored Procedure

EXECUTE usp_BusReviews 'bus_005';

-- Create a Stored Procedure to Provide a Reply based on Bus Rating

CREATE PROCEDURE usp_ProvideReplyBasedOnBusRating(@BusId VARCHAR(10))

AS

BEGIN

-- Create a Temporary Table

CREATE TABLE #temp(ReviewId VARCHAR(10) PRIMARY KEY,
UserId VARCHAR(10) NOT NULL,
BusId VARCHAR(10) NOT NULL,
Rating TINYINT NOT NULL,
Review VARCHAR(255) NOT NULL,
-- New Column for Reply
Reply VARCHAR(255));

-- Insert Values from Reviews table into the Temporary table

INSERT INTO #temp
SELECT ReviewId, UserId, BusId, Rating, Review,
CASE WHEN Rating > 3 THEN 'Thank You!'
ELSE 'We Apologize!'
END AS Reply
FROM tbl_Reviews
WHERE BusId = @BusId;

-- Return the Temporary table

SELECT * FROM #temp;

END;

-- Execute ProvideReplyBasedOnBusRating Stored Procedure

EXECUTE usp_ProvideReplyBasedOnBusRating 'bus_005';

-- Non-Recursive Stored Procedure

CREATE PROCEDURE usp_BookSeatsNonRecursively
@UserId VARCHAR(10),
@BusId VARCHAR(10),
@BookSeats TINYINT

AS

BEGIN

DECLARE @SeatsAvailable TINYINT;

SELECT @SeatsAvailable = AvailableSeats
FROM tbl_Seats
WHERE BusId = @BusId;

if(@SeatsAvailable < @BookSeats)
BEGIN
RAISERROR('Not Enough Seats Available', 16, 1);
END

ELSE
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE tbl_Seats
SET AvailableSeats = (AvailableSeats - @BookSeats)
WHERE BusId = @BusId;

DECLARE @MaxBookingId INT;

SELECT @MaxBookingId = CASE WHEN MAX(BookingId) IS NULL THEN 0 ELSE MAX(BookingId) END FROM tbl_Booking;
SET @MaxBookingId = @MaxBookingId + 1;

DECLARE @MaxPaymentId INT;

SELECT @MaxPaymentId = CASE WHEN MAX(PaymentId) IS NULL THEN 0 ELSE MAX(PaymentId) END FROM tbl_Payment;
SET @MaxPaymentId = @MaxPaymentId + 1;

INSERT INTO tbl_Booking
VALUES(@MaxBookingId, @UserId, @BusId, @BookSeats, @BookSeats * (SELECT Fare FROM tbl_Bus WHERE BusId = @BusId));

INSERT INTO tbl_Payment
VALUES(@MaxPaymentId, @MaxBookingId, @BookSeats * (SELECT Fare FROM tbl_Bus WHERE BusId = @BusId), GETDATE());

COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END

END

-- Execute BookSeatsNonRecursively Stored Procedure

EXECUTE usp_BookSeatsNonRecursively 'user_005', 'bus_005', 5;

-- View Contents of Seats, Booking and Payment Tables

SELECT * FROM  tbl_Seats;
SELECT * FROM tbl_Booking;
SELECT * FROM tbl_Payment;

-- Recursive Stored Procedure

CREATE PROCEDURE usp_BookSeatsRecursively
@UserId VARCHAR(10),
@BusId VARCHAR(10),
@BookSeats TINYINT

AS

BEGIN

DECLARE @SeatsAvailable TINYINT;

SELECT @SeatsAvailable = AvailableSeats
FROM tbl_Seats
WHERE BusId = @BusId;

if(@SeatsAvailable < @BookSeats)
BEGIN
RAISERROR('Not Enough Seats Available', 16, 1);
END

if(@BookSeats <= 5)
BEGIN
BEGIN TRY
BEGIN TRAN
UPDATE tbl_Seats
SET AvailableSeats = (AvailableSeats - @BookSeats)
WHERE BusId = @BusId;

DECLARE @MaxBookingId INT;

SELECT @MaxBookingId = CASE WHEN MAX(BookingId) IS NULL THEN 0 ELSE MAX(BookingId) END FROM tbl_Booking;
SET @MaxBookingId = @MaxBookingId + 1;

DECLARE @MaxPaymentId INT;

SELECT @MaxPaymentId = CASE WHEN MAX(PaymentId) IS NULL THEN 0 ELSE MAX(PaymentId) END FROM tbl_Payment;
SET @MaxPaymentId = @MaxPaymentId + 1;

INSERT INTO tbl_Booking
VALUES(@MaxBookingId, @UserId, @BusId, @BookSeats, @BookSeats * (SELECT Fare FROM tbl_Bus WHERE BusId = @BusId));

INSERT INTO tbl_Payment
VALUES(@MaxPaymentId, @MaxBookingId, @BookSeats * (SELECT Fare FROM tbl_Bus WHERE BusId = @BusId), GETDATE());

COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
END CATCH
END

else
BEGIN

EXECUTE usp_BookSeatsRecursively @UserId, @BusId, 5;

DECLARE @RemainingSeats TINYINT = @BookSeats - 5;

EXECUTE usp_BookSeatsRecursively @UserId, @BusId, @RemainingSeats;

END

END

-- Execute BookSeatsRecursively Stored Procedure

EXECUTE usp_BookSeatsRecursively 'user_005', 'bus_005', 10;

-- View Seats, Booking and Payment Tables

SELECT * FROM tbl_Seats;
SELECT * FROM tbl_Booking;
SELECT * FROM tbl_Payment;

-- Create a Function to Check Seat Availability

CREATE FUNCTION fn_CheckSeatAvailability(@BusName VARCHAR(25))
RETURNS INT

AS

BEGIN

RETURN(SELECT AvailableSeats FROM tbl_Seats s
INNER JOIN tbl_Bus b
ON s.BusId = b.BusId
AND BusName = @BusName)

END

SELECT dbo.fn_CheckSeatAvailability('Rajdhani Express') AS 'Seat Availability';

-- Create a Function to retrieve Bus Reviews

CREATE FUNCTION fn_BusReviews(@BusName VARCHAR(25))
RETURNS TABLE

AS

RETURN(SELECT BusName, Review FROM tbl_Reviews r
INNER JOIN tbl_Bus b
ON r.BusId = b.BusId
AND BusName = @BusName)

SELECT * FROM fn_BusReviews('Rajdhani Express');

-- Create a Function to Check the Seat Availability Status

CREATE FUNCTION fn_CheckSeatAvailabilityStatus(@BusId VARCHAR(10), @Seats TINYINT)
RETURNS VARCHAR(15)

AS

BEGIN

RETURN(SELECT CASE WHEN @Seats < AvailableSeats THEN 'Available'
ELSE 'Unavailable' END AS 'Seat Availability Status'
FROM tbl_Seats
WHERE BusId = @BusId)

END

SELECT dbo.fn_CheckSeatAvailabilityStatus('bus_005', 20) AS 'Seat Availability Status';

-- Create a Function to Check the Seat Availability Status by Bus Name

CREATE FUNCTION fn_CheckSeatAvailabilityStatusByBusName(@BusName VARCHAR(25), @Seats TINYINT)
RETURNS VARCHAR(15)

AS

BEGIN

RETURN(SELECT CASE WHEN @Seats < AvailableSeats THEN 'Available'
ELSE 'Unavailable' END AS 'Seat Availability Status'
FROM tbl_Seats s
INNER JOIN tbl_Bus b
ON s.BusId = b.BusId
AND BusName = @BusName)

END

SELECT dbo.fn_CheckSeatAvailabilityStatusByBusName('Rajdhani Express', 20) AS 'Seat Availability Status';

-- Create a Function to retrieve Average Bus Rating

CREATE FUNCTION fn_AverageBusRating(@BusName VARCHAR(25))
RETURNS TABLE

AS

RETURN(SELECT BusName, AVG(Rating) AS 'Average Bus Rating'
FROM tbl_Reviews r
INNER JOIN tbl_Bus b
ON r.BusId = b.BusId
AND BusName = @BusName
GROUP BY BusName)

SELECT * FROM fn_AverageBusRating('Rajdhani Express');

-- Create a CTE to retrieve the Total Fare of all Buses

WITH cte_GetTotalFareOfAllBuses
AS
(
SELECT SUM(TotalFare) AS TotalFare FROM tbl_Booking
)

SELECT TotalFare FROM cte_GetTotalFareOfAllBuses;

-- Create a CTE to retrieve the Total Fare of each Bus

WITH cte_GetTotalFareOfEachBus
AS
(
SELECT tbl_Bus.BusId, BusName, SUM(TotalFare) AS TotalFare
FROM tbl_Booking
INNER JOIN tbl_Bus
ON tbl_Bus.BusId = tbl_Booking.BusId
GROUP BY tbl_Bus.BusId, BusName
)

SELECT BusName, TotalFare FROM cte_GetTotalFareOfEachBus;

-- Create a CTE to calculate Total Seats Booked for each Bus

WITH cte_TotalSeatsBooked
AS
(
SELECT b.BusId, b.BusName, ISNULL(SUM(bk.SeatsBooked), 0) AS TotalSeatsBooked
FROM tbl_Bus b
LEFT JOIN tbl_Booking bk
ON b.BusId = bk.BusId
GROUP BY b.BusId, b.BusName
)

SELECT * FROM cte_TotalSeatsBooked;

-- Create a CTE to calculate Average Rating of each Bus

WITH cte_AverageRatingOfEachBus
AS
(
SELECT b.BusId, b.BusName, AVG(r.Rating) AS AverageRating
FROM tbl_Bus b
LEFT JOIN tbl_Reviews r
ON b.BusId = r.BusId
GROUP BY b.BusId, b.BusName
)

SELECT * FROM cte_AverageRatingOfEachBus;

-- Create a View briefing Bus Booking Details

CREATE VIEW vw_BusBookingDetails
AS
SELECT
b.BookingId,
u.UserId,
CONCAT(u.FirstName, ' ', u.LastName) AS UserName,
b.BusId,
bb.BusName,
bb.Source,
bb.Destination,
bb.DepartureTime,
bb.ArrivalTime,
b.SeatsBooked,
b.TotalFare,
p.PaymentDate
FROM tbl_Booking b
INNER JOIN tbl_User u
ON b.UserId = u.UserId
INNER JOIN tbl_Bus bb
ON b.BusId = bb.BusId
INNER JOIN tbl_Payment p
ON b.BookingId = p.BookingId;

-- View Contents of BusBookingDetails

SELECT * FROM vw_BusBookingDetails;