CREATE DATABASE OnlineHotelBookingManagementSystem;

-- Create RoomDetail Table

CREATE TABLE tbl_RoomDetail(RoomTypeId VARCHAR(10) PRIMARY KEY,
RoomType VARCHAR(10) UNIQUE NOT NULL,
RoomPricePerDay NUMERIC(10, 2) NOT NULL,
TotalRooms TINYINT NOT NULL);

-- Insert Values into RoomDetail Table

INSERT INTO
tbl_RoomDetail(RoomTypeId, RoomType, RoomPricePerDay, TotalRooms)
VALUES('RT1', 'Non-AC', 1000.00, 20);

INSERT INTO
tbl_RoomDetail(RoomTypeId, RoomType, RoomPricePerDay, TotalRooms)
VALUES('RT2', 'AC', 2000.00, 20);

INSERT INTO
tbl_RoomDetail(RoomTypeId, RoomType, RoomPricePerDay, TotalRooms)
VALUES('RT3', 'Deluxe', 5000.00, 10);

INSERT INTO
tbl_RoomDetail(RoomTypeId, RoomType, RoomPricePerDay, TotalRooms)
VALUES('RT4', 'Suite', 10000.00, 10);

-- View Contents of RoomDetail Table

SELECT * FROM tbl_RoomDetail;

-- Create Customer Table

CREATE TABLE tbl_Customer(CustomerId VARCHAR(10) PRIMARY KEY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
ContactNumber CHAR(10) NOT NULL UNIQUE CHECK(ContactNumber LIKE '[6789]%' AND LEN(ContactNumber) = 10),
City VARCHAR(20) NOT NULL,
CheckIn SMALLDATETIME NOT NULL,
CheckOut SMALLDATETIME NOT NULL,
NumberOfAdults TINYINT NOT NULL,
NumberOfKids TINYINT NOT NULL,
NumberOfRooms TINYINT NOT NULL,
RoomType VARCHAR(10) FOREIGN KEY REFERENCES tbl_RoomDetail(RoomTypeId));

-- Create RoomAvailabilityLog Table

CREATE TABLE tbl_RoomAvailabilityLog(RoomType VARCHAR(10) NOT NULL,
CheckIn SMALLDATETIME NOT NULL,
NumberOfRoomsBooked TINYINT NOT NULL,
NumberOfRoomsAvailable TINYINT NOT NULL,
CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) ON DELETE CASCADE);

-- Create Billing Table

CREATE TABLE tbl_Billing(CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) ON DELETE CASCADE,
RoomType VARCHAR(10) NOT NULL,
NumberOfRoomsBooked TINYINT NOT NULL,
RoomPricePerDay NUMERIC(10, 2) NOT NULL,
TotalPrice NUMERIC(10, 2) NOT NULL);

-- Create FoodDetail Table

CREATE TABLE tbl_FoodDetail(CustomerId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) ON DELETE CASCADE,
Breakfast VARCHAR(3),
Lunch VARCHAR(3),
Dinner VARCHAR(3));

-- Insert Values into FoodDetail Table

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user1', 'No', 'No', 'No');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user2', 'No', 'No', 'Yes');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user3', 'No', 'Yes', 'No');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user4', 'No', 'Yes', 'Yes');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user5', 'Yes', 'No', 'No');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user6', 'Yes', 'No', 'Yes');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user7', 'Yes', 'Yes', 'No');

INSERT INTO
tbl_FoodDetail(CustomerId, Breakfast, Lunch, Dinner)
VALUES('user8', 'Yes', 'Yes', 'Yes');

-- View Contents of FoodDetail Table

SELECT * FROM tbl_FoodDetail;

-- Create Rating Table

CREATE TABLE tbl_Rating(UserId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) ON DELETE CASCADE,
Rating NUMERIC (2, 1));

-- Insert Values into Rating Table

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user1', 3.0);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user2', 5.0);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user3', 4.5);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user4', 2.5);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user5', 4.0);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user6', 5.0);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user7', 4.0);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user8', 4.0);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user9', 3.5);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user10', 4.5);

INSERT INTO
tbl_Rating(UserId, Rating)
VALUES('user11', 4.3);

-- View Contents of Rating Table

SELECT * FROM tbl_Rating;

-- Create Review Table

CREATE TABLE tbl_Review(UserId VARCHAR(10) FOREIGN KEY REFERENCES tbl_Customer(CustomerId) ON DELETE CASCADE,
Review VARCHAR(1000));

-- Insert Values into Review Table

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user1',
'Hotel stay was quite pleasant. But the room was not kept clean during CheckIn. No amenities were present in the room. We had to ask for the amenities. Food was excellent but the plates on which they were served were not good.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user2',
'The rooms were well maintained and furnished with good quality products. The staff was very polite and good, and their food was amazing. It was a hassle free CheckIn and CheckOut. The hotel is located at a very good location with some beautiful views.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user3',
'Very good service and hygiene maintained. The staff was so cooperative.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user4',
'The orders were very late as well as rude behaviour of the waiters.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user5',
'Service was good. Food was okay. Location was a bit average.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user6',
'The stay was very comfortable. Rooms were very clean & hygiene standards were maintained.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user7',
'Good decor with friendly staff.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user8',
'Food was good, the room was clean and well decorated (a bit smaller). Overall experience was good, price is a bit on the higher side.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user9',
'Overall good stay but the geyser was not working for the whole day.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user10',
'Please provide sanitizer in rooms too.');

INSERT INTO
tbl_Review(UserId, Review)
VALUES('user11',
'Had an amazing time.');

-- View Contents of Review Table

SELECT * FROM tbl_Review;

-- Create CustomerBooking Stored Procedure which inserts data values into Customer, RoomAvailabilityLog and Billing Tables

CREATE PROCEDURE usp_CustomerBooking
@CustomerId VARCHAR(10),
@FirstName VARCHAR(30),
@LastName VARCHAR(30),
@ContactNumber CHAR(10),
@City VARCHAR(20),
@CheckIn SMALLDATETIME,
@CheckOut SMALLDATETIME,
@NumberOfAdults TINYINT,
@NumberOfKids TINYINT,
@NumberOfRooms TINYINT,
@RoomType VARCHAR(10)

AS

BEGIN

DECLARE @BookedRooms TINYINT, @TotalRooms TINYINT, @AvailableRooms TINYINT;

SELECT @BookedRooms = SUM(NumberOfRooms) FROM tbl_Customer
WHERE CheckIn = @CheckIn AND RoomType = @RoomType;

SELECT @TotalRooms = TotalRooms FROM tbl_RoomDetail 
WHERE RoomTypeId = @RoomType;

SELECT @AvailableRooms = @TotalRooms - @BookedRooms;

if(@CheckOut <= @CheckIn)
BEGIN
RAISERROR('Date and Time of CheckOut must be after the Date and Time of CheckIn', 16, 1);
END

else if((@NumberOfAdults / @NumberOfRooms) > 2)
BEGIN
RAISERROR('Only 2 Adults are Allowed in a Room. Please Add a Room', 16, 1);
END

else if(@NumberOfRooms > @AvailableRooms)
BEGIN
RAISERROR('Number exceeds the Rooms Available for the CheckIn Date', 16, 1);
END

else
BEGIN
BEGIN TRY
BEGIN TRAN
INSERT INTO
tbl_Customer(CustomerId, FirstName, LastName, ContactNumber, City, CheckIn, CheckOut, NumberOfAdults, NumberOfKids, NumberOfRooms, RoomType)
VALUES(@CustomerId, @FirstName, @LastName, @ContactNumber, @City, @CheckIn, @CheckOut, @NumberOfAdults, @NumberOfKids, @NumberOfRooms, @RoomType);
COMMIT TRAN

BEGIN

DECLARE @Booked TINYINT, @Total TINYINT, @Available TINYINT;

SELECT @Booked = SUM(NumberOfRooms) FROM tbl_Customer
WHERE CheckIn = @CheckIn AND RoomType = @RoomType;

SELECT @Total = TotalRooms FROM tbl_RoomDetail 
WHERE RoomTypeId = @RoomType;

SELECT @Available = @Total - @Booked;

BEGIN TRAN
INSERT INTO
tbl_RoomAvailabilityLog(RoomType, CheckIn, NumberOfRoomsBooked, NumberOfRoomsAvailable, CustomerId)
VALUES(@RoomType, @CheckIn, @NumberOfRooms, @Available, @CustomerId);
COMMIT TRAN

END

BEGIN

DECLARE @TotalPrice NUMERIC(10, 2), @RoomPricePerDay NUMERIC(10, 2);

SELECT @RoomPricePerDay = RoomPricePerDay FROM tbl_RoomDetail
WHERE RoomTypeId = @RoomType;

SELECT @TotalPrice = @RoomPricePerDay * @NumberOfRooms;

BEGIN TRAN
INSERT INTO
tbl_Billing(CustomerId, RoomType, NumberOfRoomsBooked, RoomPricePerDay, TotalPrice)
VALUES(@CustomerId, @RoomType, @NumberOfRooms, @RoomPricePerDay, @TotalPrice);
COMMIT TRAN

END

END TRY

BEGIN CATCH
ROLLBACK TRAN
END CATCH

END

END

-- Execute CustomerBooking Stored Procedure

EXECUTE usp_CustomerBooking 'user1', 'Sunita', 'Sharma', 8739390628, 'Delhi', '2023-07-24 12:00:00', '2023-07-25 12:00:00', 2, 0, 1, 'RT4'

EXECUTE usp_CustomerBooking 'user2', 'Ashok', 'Singhal', 9963020627, 'Bangalore', '2023-07-24 12:00:00', '2023-07-25 12:00:00', 2, 1, 1, 'RT2'

EXECUTE usp_CustomerBooking 'user3', 'Rohit', 'Rana', 7645031279, 'Chennai', '2023-07-24 12:00:00', '2023-07-25 12:00:00', 4, 1, 2, 'RT2'

EXECUTE usp_CustomerBooking 'user4', 'Jyoti', 'Lamba', 6094512380, 'Chandigarh', '2023-07-25 12:00:00', '2023-07-26 12:00:00', 2, 1, 1, 'RT2'

EXECUTE usp_CustomerBooking 'user5', 'Sumit', 'Vats', 7985634009, 'Pune', '2023-07-25 12:00:00', '2023-07-26 12:00:00', 12, 4, 6, 'RT3'

EXECUTE usp_CustomerBooking 'user6', 'Manoj', 'Kaushik', 9890645239, 'Jaipur', '2023-07-25 12:00:00', '2023-07-26 12:00:00', 2, 0, 1, 'RT1'

EXECUTE usp_CustomerBooking 'user7', 'Chetan', 'Gupta', 6704385421, 'Varanasi', '2023-07-25 12:00:00', '2023-07-26 12:00:00', 5, 1, 3, 'RT1'

EXECUTE usp_CustomerBooking 'user8', 'Madhuri', 'Thakkar', 8562017429, 'Ahmedabad', '2023-07-26 12:00:00', '2023-07-27 12:00:00', 2, 2, 1, 'RT1'

EXECUTE usp_CustomerBooking 'user9', 'Sneha', 'Nair', 6597341042, 'Kochi', '2023-07-26 12:00:00', '2023-07-27 12:00:00', 6, 0, 3, 'RT3'

EXECUTE usp_CustomerBooking 'user10', 'Binod', 'Goel', 7953853109, 'Patna', '2023-07-27 12:00:00', '2023-07-28 12:00:00', 7, 3, 4, 'RT2'

EXECUTE usp_CustomerBooking 'user11', 'Tushar', 'Tiwari', 7054298530, 'Lucknow', '2023-07-27 12:00:00', '2023-07-28 12:00:00', 5, 2, 3, 'RT2'

EXECUTE usp_CustomerBooking 'user12', 'Shravan', 'Deshmukh', 8640392803, 'Nashik', '2023-07-27 12:00:00', '2023-07-28 12:00:00', 1, 0, 1, 'RT1'

EXECUTE usp_CustomerBooking 'user13', 'Mahesh', 'Jain', 9458631803, 'Udaipur', '2023-07-27 12:00:00', '2023-07-28 12:00:00', 3, 1, 2, 'RT3'

-- Exceptions

EXECUTE usp_CustomerBooking 'user12', 'Anubhav', 'Kumar', 6087439429, 'Jamshedpur', '2023-07-28 12:00:00', '2023-07-27 12:00:00', 1, 1, 1, 'RT2'

EXECUTE usp_CustomerBooking 'user13', 'Shreya', 'Dubey', 7965439054, 'Mirzapur', '2023-07-28 12:00:00', '2023-07-28 12:00:00', 3, 0, 2, 'RT1'

EXECUTE usp_CustomerBooking 'user14', 'Shubham', 'Sherki', 8096493842, 'Chandrapur', '2023-07-28 12:00:00', '2023-07-29 12:00:00', 4, 0, 1, 'RT3'

EXECUTE usp_CustomerBooking 'user15', 'Arnab', 'Banerjee', 9076398530, 'Kolkata', '2023-07-27 12:00:00', '2023-07-28 12:00:00', 31, 10, 15, 'RT2'

-- View Contents of Customer, RoomAvailabilityLog and Billing Tables

SELECT * FROM tbl_Customer;
SELECT * FROM tbl_RoomAvailabilityLog;
SELECT * FROM tbl_Billing;

-- Create FoodCost Stored Procedure to calculate the Total Food Cost for all the Customers

CREATE PROCEDURE usp_FoodCost
@CustomerId VARCHAR(10)

AS

BEGIN

DECLARE @Breakfast VARCHAR(3), @Lunch VARCHAR(3), @Dinner VARCHAR(3);

SELECT @Breakfast = Breakfast FROM tbl_FoodDetail
WHERE CustomerId = @CustomerId;

SELECT @Lunch = Lunch FROM tbl_FoodDetail
WHERE CustomerId = @CustomerId;

SELECT @Dinner = Dinner FROM tbl_FoodDetail
WHERE CustomerId = @CustomerId;

DECLARE @NumberOfPeople TINYINT;

SELECT @NumberOfPeople = (NumberOfAdults + NumberOfKids) FROM tbl_Customer
WHERE CustomerId = @CustomerId;

DECLARE @TotalCost SMALLINT = 0;

if(@Breakfast = 'Yes')
BEGIN
SELECT @TotalCost = @TotalCost + (250 * @NumberOfPeople)
END

if(@Lunch = 'Yes')
BEGIN
SELECT @TotalCost = @TotalCost + (250 * @NumberOfPeople)
END

if(@Dinner = 'Yes')
BEGIN
SELECT @TotalCost = @TotalCost + (250 * @NumberOfPeople)
END

PRINT @TotalCost;

END

-- Execute FoodCost Stored Procedure

EXECUTE usp_FoodCost 'user1'

EXECUTE usp_FoodCost 'user2'

EXECUTE usp_FoodCost 'user3'

EXECUTE usp_FoodCost 'user4'

EXECUTE usp_FoodCost 'user5'

EXECUTE usp_FoodCost 'user6'

EXECUTE usp_FoodCost 'user7'

EXECUTE usp_FoodCost 'user8'

-- Create TotalBookings Stored Procedure to calculate the Total Bookings made on each CheckIn date on the basis of RoomType

CREATE PROCEDURE usp_TotalBookings

AS

BEGIN

SELECT CheckIn, RoomType, SUM(NumberOfRooms) AS 'Total Bookings'
FROM tbl_Customer
GROUP BY CheckIn, RoomType 
ORDER BY CheckIn, RoomType;

END

-- Execute TotalBookings Stored Procedure

EXECUTE usp_TotalBookings;

-- Create AverageRating Stored Procedure to calculate the Average Rating on the basis of RoomType up to two decimal places

CREATE PROCEDURE usp_AverageRating(@RoomType VARCHAR(10))

AS

BEGIN

SELECT RoomType, CAST(AVG(Rating) AS NUMERIC(5, 2)) AS 'Average Rating'
FROM tbl_Rating AS r
JOIN tbl_Customer AS c
ON r.UserId = c.CustomerId
GROUP BY RoomType
HAVING RoomType = @RoomType;

END

-- Execute AverageRating Stored Procedure

EXECUTE usp_AverageRating 'RT1'

EXECUTE usp_AverageRating 'RT2'

EXECUTE usp_AverageRating 'RT3'

EXECUTE usp_AverageRating 'RT4'

-- Create PrintBookingSuccessMessage Trigger on Insertion of Customer details

CREATE TRIGGER tr_PrintBookingSuccessMessage
ON tbl_Customer
FOR INSERT

AS

BEGIN

PRINT('The Hotel Booking has been successfully completed!');

END

-- Create BookingAudit Table

CREATE TABLE tbl_BookingAudit(Id INT IDENTITY, AuditData VARCHAR(MAX));

-- Create a Trigger to Insert data into BookingAudit table on Insertion of Customer details

CREATE TRIGGER tr_tbl_Customer_ForInsert
ON tbl_Customer
FOR INSERT

AS

BEGIN

DECLARE
@CustomerId VARCHAR(10),
@NumberOfRooms TINYINT,
@RoomType VARCHAR(10),
@CheckIn SMALLDATETIME,
@CheckOut SMALLDATETIME

SELECT @CustomerId = CustomerId,
@NumberOfRooms = NumberOfRooms,
@RoomType = RoomType,
@CheckIn = CheckIn,
@CheckOut = CheckOut
FROM inserted;

INSERT INTO tbl_BookingAudit(AuditData)
VALUES('A New Customer with id ' +
CAST(@CustomerId AS VARCHAR) +
' has booked ' +
CAST(@NumberOfRooms AS VARCHAR) +
' ' +
@RoomType +
' room(s) ' +
'from ' +
CAST(@CheckIn AS VARCHAR) +
' to ' +
CAST(@CheckOut AS VARCHAR))

END

-- View Contents of BookingAudit Table

SELECT * FROM tbl_BookingAudit;

-- Create a Trigger to Insert data into BookingAudit table on Updation of Customer details

CREATE TRIGGER tr_tbl_Customer_ForUpdate
ON tbl_Customer
FOR UPDATE

AS

BEGIN

DECLARE @CustomerId VARCHAR(10)
DECLARE @OldCheckIn SMALLDATETIME, @NewCheckIn SMALLDATETIME
DECLARE @OldCheckOut SMALLDATETIME, @NewCheckOut SMALLDATETIME
DECLARE @OldRoomType VARCHAR(10), @NewRoomType VARCHAR(10)

DECLARE @AuditText VARCHAR(MAX);

SELECT * INTO #TempTable FROM inserted

WHILE(EXISTS(SELECT CustomerId FROM #TempTable))
BEGIN
SET @AuditText = ''

SELECT TOP 1 @CustomerId = CustomerId,
@NewCheckIn = CheckIn,
@NewCheckOut = CheckOut,
@NewRoomType = RoomType
FROM #TempTable;

SELECT @OldCheckIn = CheckIn,
@OldCheckOut = CheckOut,
@OldRoomType = RoomType
FROM deleted
WHERE CustomerId = @CustomerId;

SET @AuditText = 'An Existing Customer with id ' + CAST(@CustomerId AS VARCHAR) + ' has changed'

if(@OldCheckIn <> @NewCheckIn)
SET @AuditText = @AuditText + ' CheckIn Date/Time from ' + CAST(@OldCheckIn AS VARCHAR) + ' to ' + CAST(@NewCheckIn AS VARCHAR)

if(@OldCheckOut <> @NewCheckOut)
SET @AuditText = @AuditText + ' CheckOut Date/Time from ' + CAST(@OldCheckOut AS VARCHAR) + ' to ' + CAST(@NewCheckOut AS VARCHAR)

if(@OldRoomType <> @NewRoomType)
SET @AuditText = @AuditText + ' RoomType from ' + @OldRoomType + ' to ' + @NewRoomType

INSERT INTO tbl_BookingAudit(AuditData)
VALUES(@AuditText);

DELETE FROM #TempTable
WHERE CustomerId = @CustomerId;

END

END

-- Update RoomType of a Customer

UPDATE tbl_Customer
SET RoomType = 'RT2'
WHERE CustomerId = 'user13';

-- View Contents of Customer, RoomAvailabilityLog, Billing and BookingAudit Tables

SELECT * FROM tbl_Customer;
SELECT * FROM tbl_RoomAvailabilityLog;
SELECT * FROM tbl_Billing;
SELECT * FROM tbl_BookingAudit;

-- Create a Trigger to Update CheckIn in tbl_RoomAvailabilityLog table when CheckIn in tbl_Customer table is Updated

CREATE TRIGGER tr_tbl_Customer_ForUpdateCheckIn
ON tbl_Customer
FOR UPDATE

AS

if(UPDATE (CheckIn))

BEGIN

UPDATE tbl_RoomAvailabilityLog
SET tbl_RoomAvailabilityLog.CheckIn = inserted.CheckIn
FROM tbl_RoomAvailabilityLog
JOIN inserted
ON tbl_RoomAvailabilityLog.CustomerId = inserted.CustomerId;

END

-- Create a Trigger to Update RoomType and NumberOfRoomsAvailable in tbl_RoomAvailabilityLog table and RoomType, RoomPricePerDay and TotalPrice in tbl_Billing table when RoomType in tbl_Customer table is Updated

CREATE TRIGGER tr_tbl_Customer_ForUpdateRoomType
ON tbl_Customer
FOR UPDATE

AS

if(UPDATE (RoomType))

BEGIN

UPDATE tbl_RoomAvailabilityLog
SET tbl_RoomAvailabilityLog.RoomType = inserted.RoomType
FROM tbl_RoomAvailabilityLog
JOIN inserted
ON tbl_RoomAvailabilityLog.CustomerId = inserted.CustomerId;

DECLARE @BookedRooms TINYINT, @TotalRooms TINYINT, @AvailableRooms TINYINT;

SELECT @BookedRooms = SUM(tbl_Customer.NumberOfRooms)
FROM tbl_Customer
JOIN inserted
ON tbl_Customer.CheckIn = inserted.CheckIn
AND tbl_Customer.RoomType = inserted.RoomType;

SELECT @TotalRooms = TotalRooms
FROM tbl_RoomDetail
JOIN inserted
ON tbl_RoomDetail.RoomTypeId = inserted.RoomType;

SELECT @AvailableRooms = @TotalRooms - @BookedRooms;

UPDATE tbl_RoomAvailabilityLog
SET tbl_RoomAvailabilityLog.NumberOfRoomsAvailable = @AvailableRooms
FROM tbl_RoomAvailabilityLog
JOIN inserted
ON tbl_RoomAvailabilityLog.CustomerId = inserted.CustomerId;

UPDATE tbl_Billing
SET tbl_Billing.RoomType = inserted.RoomType
FROM tbl_Billing
JOIN inserted
ON tbl_Billing.CustomerId = inserted.CustomerId;

DECLARE @RoomPricePerDay NUMERIC(10, 2);

SELECT @RoomPricePerDay = RoomPricePerDay
FROM tbl_RoomDetail
JOIN inserted
ON tbl_RoomDetail.RoomTypeId = inserted.RoomType;

UPDATE tbl_Billing
SET RoomPricePerDay = @RoomPricePerDay
FROM tbl_Billing
JOIN inserted
ON tbl_Billing.CustomerId = inserted.CustomerId;

UPDATE tbl_Billing
SET TotalPrice = RoomPricePerDay * NumberOfRoomsBooked
FROM tbl_Billing
JOIN inserted
ON tbl_Billing.CustomerId = inserted.CustomerId;

END

-- Create a Trigger to Insert data into BookingAudit table on Updation of Rating

CREATE TRIGGER tr_tbl_Rating_ForUpdateRating
ON tbl_Rating
FOR UPDATE

AS

BEGIN

DECLARE @UserId VARCHAR(10);
DECLARE @OldRating NUMERIC(2, 1), @NewRating NUMERIC(2, 1);

DECLARE @AuditText VARCHAR(MAX);

SELECT * INTO #TempTable FROM inserted;

WHILE(EXISTS(SELECT UserId FROM #TempTable))
BEGIN
SET @AuditText = ''

SELECT TOP 1 @UserId = UserId,
@NewRating = Rating
FROM #TempTable;

SELECT @OldRating = Rating
FROM deleted
WHERE UserId = @UserId;

if(@OldRating <> @NewRating)
SET @AuditText = 'An Existing Customer with id ' + CAST(@UserId AS VARCHAR) + ' has changed Rating from ' + CAST(@OldRating AS VARCHAR) + ' to ' + CAST(@NewRating AS VARCHAR)

INSERT INTO tbl_BookingAudit(AuditData)
VALUES(@AuditText);

DELETE FROM #TempTable
WHERE UserId = @UserId;

END

END

-- Update Rating of any Customer

UPDATE tbl_Rating
SET Rating = 5.0
WHERE UserId = 'user3';

-- View Contents of Rating and BookingAudit tables

SELECT * FROM tbl_Rating;
SELECT * FROM tbl_BookingAudit;

-- Create a Trigger to Insert data into BookingAudit table on Deletion of Customer details

CREATE TRIGGER tr_tbl_Customer_ForDelete
ON tbl_Customer
FOR DELETE

AS

BEGIN

DECLARE @CustomerId VARCHAR(10);

SELECT @CustomerId = CustomerId
FROM deleted;

INSERT INTO tbl_BookingAudit(AuditData)
VALUES('An Existing Customer with id ' + @CustomerId + ' has cancelled their Room Booking at ' + CAST(GETDATE() AS VARCHAR));

END