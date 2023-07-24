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