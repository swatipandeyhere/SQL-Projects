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