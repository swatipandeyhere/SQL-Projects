CREATE DATABASE OnlineMovieTicketBookingManagementSystem;

-- Create User Table

CREATE TABLE tbl_User(UserId VARCHAR(10) PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(255) NOT NULL UNIQUE,
ContactNumber CHAR(10) NOT NULL UNIQUE CHECK(ContactNumber LIKE '[6789]%' AND LEN(ContactNumber) = 10),
CreatedAt SMALLDATETIME DEFAULT GETDATE());

ALTER TABLE tbl_User
ADD CONSTRAINT CheckEmailHasAtSymbol CHECK(Email LIKE '%@%');

ALTER TABLE tbl_User
ADD UserPassword VARCHAR(20) NOT NULL;

-- Insert Values into User Table

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user1', 'Sunita Sharma', 'sunita.sharma@gmail.com', 8739390628, HASHBYTES('MD2', 'password1'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user2', 'Ashok Singhal', 'ashok.singhal@gmail.com', 9963020627, HASHBYTES('MD2', 'password2'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user3', 'Rohit Rana', 'rohit.rana@gmail.com', 7645031279, HASHBYTES('MD2', 'password3'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user4', 'Jyoti Lamba', 'jyoti.lamba@gmail.com', 6094512380, HASHBYTES('MD2', 'password4'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user5', 'Sumit Vats', 'sumit.vats@gmail.com', 7985634009, HASHBYTES('MD2', 'password5'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user6', 'Manoj Kaushik', 'manoj.kaushik@gmail.com', 9890645239, HASHBYTES('MD2', 'password6'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user7', 'Chetan Gupta', 'chetan.gupta@gmail.com', 6704385421, HASHBYTES('MD2', 'password7'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user8', 'Madhuri Thakkar', 'madhuri.thakkar@gmail.com', 8562017429, HASHBYTES('MD2', 'password8'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user9', 'Sneha Nair', 'sneha.nair@gmail.com', 6597341042, HASHBYTES('MD2', 'password9'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user10', 'Binod Goel', 'binod.goel@gmail.com', 7953853109, HASHBYTES('MD2', 'password10'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user11', 'Tushar Tiwari', 'tushar.tiwari@gmail.com', 7054298530, HASHBYTES('MD2', 'password11'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user12', 'Anubhav Kumar', 'anubhav.kumar@gmail.com', 6087439429, HASHBYTES('MD2', 'password12'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user13', 'Shreya Dubey', 'shreya.dubey@gmail.com', 7965439054, HASHBYTES('MD2', 'password13'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user14', 'Shubham Sherki', 'shubham.sherki@gmail.com', 8096493842, HASHBYTES('MD2', 'password14'));

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user15', 'Arnab Banerjee', 'arnab.banerjee@gmail.com', 9076398530, HASHBYTES('MD2', 'password15'));

-- View Contents of User Table

SELECT * FROM tbl_User;

-- Create Theatre Table

CREATE TABLE tbl_Theatre(TheatreId VARCHAR(10) PRIMARY KEY,
TheatreName VARCHAR(30) NOT NULL,
TheatreAddress VARCHAR(200) NOT NULL);

-- Insert Values into Theatre Table

INSERT INTO
tbl_Theatre(TheatreId, TheatreName, TheatreAddress)
VALUES
('theatre1', 'PVR Cinemas', 'Koramangala, Bangalore'),
('theatre2', 'PVP', 'Mallathahalli, Bangalore'),
('theatre3', 'INOX', 'Koramangala, Bangalore'),
('theatre4', 'Cinepollis', 'Koramangala, Bangalore'),
('theatre5', 'Metro Inox Cinemas', 'Koramangala, Bangalore');

-- View Contents of Theatre Table

SELECT * FROM tbl_Theatre;

-- Create Movie Table

CREATE TABLE tbl_Movie(MovieId VARCHAR(10) PRIMARY KEY,
Title VARCHAR(30) NOT NULL,
Description VARCHAR(1000) NOT NULL,
Duration TINYINT NOT NULL,
ReleaseDate DATE NOT NULL);

-- Insert Values into Movie Table

INSERT INTO
tbl_Movie(MovieId, Title, Description, Duration, ReleaseDate)
VALUES
('movie1', 'Avengers: Endgame', 'The Avengers must undo Thanos'' actions and restore order to the universe', 182, '2023-04-26'),
('movie2', 'The Dark Knight', 'Batman fights the Joker in a battle for Gotham City', 152, '2023-04-25'),
('movie3', 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son', 175, '2023-04-18'),
('movie4', 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 148, '2023-05-05'),
('movie5', 'Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic', 194, '2023-05-01');

-- View Contents of Movie Table

SELECT * FROM tbl_Movie;

-- Create Screen Table

CREATE TABLE tbl_Screen(ScreenId VARCHAR(10) PRIMARY KEY,
TheatreId VARCHAR(10) NOT NULL,
ScreenName VARCHAR(30) NOT NULL,
Size TINYINT NOT NULL,
FOREIGN KEY(TheatreId) REFERENCES tbl_Theatre(TheatreId));

-- Insert Values into Screen Table

INSERT INTO tbl_Screen(ScreenId, TheatreId, ScreenName, Size)
VALUES
('screen1', 'theatre1', 'Screen 1', 80),
('screen2', 'theatre1', 'Screen 2', 80),
('screen3', 'theatre2', 'Screen 1', 100),
('screen4', 'theatre3', 'Screen 1', 100),
('screen5', 'theatre4', 'Screen 1', 100),
('screen6', 'theatre2', 'Screen 2', 100),
('screen7', 'theatre3', 'Screen 2', 100),
('screen8', 'theatre5', 'Screen 1', 100);

-- View Contents of Screen Table

SELECT * FROM tbl_Screen;

-- Create Show Table

CREATE TABLE tbl_Show(ShowId VARCHAR(10) PRIMARY KEY,
MovieId VARCHAR(10) NOT NULL,
ScreenId VARCHAR(10) NOT NULL,
TheatreId VARCHAR(10) NOT NULL,
ShowTime SMALLDATETIME NOT NULL,
Price TINYINT NOT NULL,
AvailableSeats TINYINT NOT NULL,
FOREIGN KEY(MovieId) REFERENCES tbl_Movie(MovieId),
FOREIGN KEY(ScreenId) REFERENCES tbl_Screen(ScreenId),
FOREIGN KEY(TheatreId) REFERENCES tbl_Theatre(TheatreId));

-- Insert Values into Show Table

INSERT INTO
tbl_Show(ShowId, MovieId, ScreenId, TheatreId, ShowTime, Price, AvailableSeats)
VALUES
('show1', 'movie1', 'screen1', 'theatre1', '2023-10-24 09:00:00', 200, 80),
('show2', 'movie2', 'screen2', 'theatre1', '2023-10-23 09:30:00', 200, 80),
('show3', 'movie3', 'screen3', 'theatre2', '2023-10-24 12:30:00', 200, 100),
('show4', 'movie4', 'screen4', 'theatre3', '2023-10-23 12:00:00', 200, 100),
('show5', 'movie5', 'screen5', 'theatre4', '2023-10-23 14:30:00', 200, 100),
('show6', 'movie1', 'screen6', 'theatre2', '2023-10-23 16:30:00', 200, 100),
('show7', 'movie2', 'screen7', 'theatre3', '2023-10-24 21:30:00', 200, 100),
('show8', 'movie1', 'screen8', 'theatre5', '2023-10-24 18:00:00', 200, 100),
('show9', 'movie1', 'screen1', 'theatre1', '2023-10-05 09:00:00', 200, 80),
('show10', 'movie2', 'screen1', 'theatre1', '2023-10-12 14:00:00', 200, 80),
('show11', 'movie3', 'screen2', 'theatre1', '2023-10-05 18:00:00', 200, 100),
('show12', 'movie4', 'screen3', 'theatre2', '2023-10-05 18:00:00', 200, 100),
('show13', 'movie5', 'screen4', 'theatre3', '2023-10-05 18:00:00', 200, 100),
('show14', 'movie1', 'screen7', 'theatre3', '2023-10-17 18:00:00', 200, 100),
('show15', 'movie5', 'screen8', 'theatre5', '2023-10-05 18:00:00', 200, 100);

-- View Contents of Show Table

SELECT * FROM tbl_Show;

-- Create Booking Table

CREATE TABLE tbl_Booking(BookingId VARCHAR(10) PRIMARY KEY,
UserId VARCHAR(10) NOT NULL,
ShowId VARCHAR(10) NOT NULL,
TotalTickets TINYINT NOT NULL CHECK(TotalTickets > 0 AND TotalTickets <= 10),
TotalPrice SMALLINT NOT NULL,
BookingTime SMALLDATETIME DEFAULT GETDATE(),
PaymentStatus VARCHAR(10) NOT NULL,
FOREIGN KEY(UserId) REFERENCES tbl_User(UserId),
FOREIGN KEY(ShowId) REFERENCES tbl_Show(ShowId));

-- Insert Values into Booking Table

INSERT INTO
tbl_Booking(BookingId, UserId, ShowId, TotalTickets, TotalPrice, PaymentStatus)
VALUES
('booking1', 'user1', 'show1', 5, 1000, 'success'),
('booking2', 'user2', 'show2', 5, 1000, 'success'),
('booking3', 'user3', 'show3', 3, 600, 'success'),
('booking4', 'user4', 'show4', 1, 200, 'success'),
('booking5', 'user5', 'show5', 4, 800, 'success'),
('booking6', 'user6', 'show7', 2, 400, 'success'),
('booking7', 'user7', 'show9', 2, 400, 'success'),
('booking8', 'user8', 'show10', 6, 1200, 'success'),
('booking9', 'user9', 'show12', 3, 600, 'success'),
('booking10', 'user10', 'show15', 2, 400, 'success');

-- View Contents of Booking Table

SELECT * FROM tbl_Booking;

-- Create Ticket Table

CREATE TABLE tbl_Ticket(TicketId VARCHAR(10) PRIMARY KEY,
BookingId VARCHAR(10) NOT NULL,
ShowId VARCHAR(10) NOT NULL,
SeatNumber VARCHAR(10) NOT NULL,
Price SMALLINT NOT NULL,
FOREIGN KEY(BookingId) REFERENCES tbl_Booking(BookingId),
FOREIGN KEY(ShowId) REFERENCES tbl_Show(ShowId),
CONSTRAINT UniqueSeatNumberPerShow UNIQUE(SeatNumber, ShowId));

-- Insert Values into Ticket Table

INSERT INTO
tbl_Ticket(TicketId, BookingId, ShowId, SeatNumber, Price)
VALUES
('ticket1', 'booking1', 'show1', 'S1', 200),
('ticket2', 'booking1', 'show1', 'S2', 200),
('ticket3', 'booking1', 'show1', 'S3', 200),
('ticket4', 'booking1', 'show1', 'S4', 200),
('ticket5', 'booking1', 'show1', 'S5', 200),
('ticket6', 'booking2', 'show2', 'S1', 200),
('ticket7', 'booking2', 'show2', 'S2', 200),
('ticket8', 'booking2', 'show2', 'S3', 200),
('ticket9', 'booking2', 'show2', 'S4', 200),
('ticket10', 'booking2', 'show2', 'S5', 200),
('ticket11', 'booking3', 'show3', 'S1', 200),
('ticket12', 'booking3', 'show3', 'S2', 200),
('ticket13', 'booking3', 'show3', 'S3', 200),
('ticket14', 'booking4', 'show4', 'S1', 200),
('ticket15', 'booking5', 'show5', 'S1', 200),
('ticket16', 'booking5', 'show5', 'S2', 200),
('ticket17', 'booking5', 'show5', 'S3', 200),
('ticket18', 'booking5', 'show5', 'S4', 200),
('ticket19', 'booking6', 'show7', 'S1', 200),
('ticket20', 'booking6', 'show7', 'S2', 200),
('ticket21', 'booking7', 'show9', 'S1', 200),
('ticket22', 'booking7', 'show9', 'S2', 200),
('ticket23', 'booking8', 'show10', 'S1', 200),
('ticket24', 'booking8', 'show10', 'S2', 200),
('ticket25', 'booking8', 'show10', 'S3', 200),
('ticket26', 'booking8', 'show10', 'S4', 200),
('ticket27', 'booking8', 'show10', 'S5', 200),
('ticket28', 'booking8', 'show10', 'S6', 200),
('ticket29', 'booking9', 'show12', 'S1', 200),
('ticket30', 'booking9', 'show12', 'S2', 200),
('ticket31', 'booking9', 'show12', 'S3', 200),
('ticket32', 'booking10', 'show15', 'S1', 200),
('ticket33', 'booking10', 'show15', 'S2', 200);

-- View Contents of Ticket Table

SELECT * FROM tbl_Ticket;

-- Create Rating Table

CREATE TABLE tbl_Rating(RatingId VARCHAR(10) PRIMARY KEY,
MovieId VARCHAR(10) NOT NULL,
UserId VARCHAR(10) NOT NULL,
Rating TINYINT NOT NULL CHECK(Rating >= 1 AND Rating <= 5),
Comment VARCHAR(1000),
FOREIGN KEY(MovieId) REFERENCES tbl_Movie(MovieId),
FOREIGN KEY(UserId) REFERENCES tbl_User(UserId),
CONSTRAINT UniqueUserIdPerMovie UNIQUE(UserId, MovieId));

-- Insert Values into Rating Table

INSERT INTO
tbl_Rating(RatingId, MovieId, UserId, Rating, Comment)
VALUES
('rating1', 'movie1', 'user1', 4, 'Great movie! The action scenes were amazing.'),
('rating2', 'movie1', 'user2', 5, 'This is one of the best movies I have ever seen.'),
('rating3', 'movie1', 'user3', 4, 'I enjoyed the movie overall, but the ending was a bit disappointing.'),
('rating4', 'movie2', 'user4', 4, 'A classic movie with great performances by the actors.'),
('rating5', 'movie2', 'user5', 3, 'I expected more from this movie.'),
('rating6', 'movie3', 'user6', 5, 'A masterpiece. The acting and direction were superb.'),
('rating7', 'movie3', 'user7', 4, 'The Godfather is classic for a reason.'),
('rating8', 'movie4', 'user8', 4, 'A mind-bending movie with a great storyline.'),
('rating9', 'movie4', 'user9', 3, 'I had a hard time following the movie at times.'),
('rating10', 'movie5', 'user10', 5, 'A beautiful and heart-wrenching love story.');

-- View Contents of Rating Table

SELECT * FROM tbl_Rating;

-- Create MovieRevenue Table

CREATE TABLE tbl_MovieRevenue(RevenueId VARCHAR(10) PRIMARY KEY,
MovieId VARCHAR(10) NOT NULL,
StartDate SMALLDATETIME NOT NULL,
EndDate SMALLDATETIME NOT NULL,
RevenueAmount DECIMAL(10, 2) NOT NULL,
FOREIGN KEY(MovieId) REFERENCES tbl_Movie(MovieId));

-- Insert Values into MovieRevenue Table

INSERT INTO
tbl_MovieRevenue(RevenueId, MovieId, StartDate, EndDate, RevenueAmount)
VALUES
('revenue1', 'movie1', '2023-04-26', '2023-05-26', 13750000.00),
('revenue2', 'movie2', '2023-04-25', '2023-05-25', 10000050.00),
('revenue3', 'movie3', '2023-04-18', '2023-05-18', 12000050.00),
('revenue4', 'movie4', '2023-05-05', '2023-06-05', 13000000.00),
('revenue5', 'movie5', '2023-05-01', '2023-06-01', 13400000.00);

-- View Contents of MovieRevenue Table

SELECT * FROM tbl_MovieRevenue;

-- Create a Stored Procedure to retrieve Movie Names with Theatre Information

CREATE OR ALTER PROCEDURE usp_GetMovieNamesWithTheatreInfo

AS

BEGIN

SELECT m.Title, t.TheatreName, t.TheatreAddress, s.ShowTime
FROM tbl_Movie m
INNER JOIN tbl_Show s
ON m.MovieId = s.MovieId
INNER JOIN tbl_Theatre t
ON s.TheatreId = t.TheatreId;

END

-- Execute GetMovieNamesWithTheatreInfo Stored Procedure

EXECUTE usp_GetMovieNamesWithTheatreInfo;

-- Create a Stored Procedure to retrieve Show Information by Movie Name with Theatre Information

CREATE OR ALTER PROCEDURE usp_GetShowInfoByMovieNameWithTheatreInfo
@MovieName VARCHAR(30)

AS

BEGIN

SELECT s.ShowId, s.ShowTime, t.TheatreName, t.TheatreAddress
FROM tbl_Movie m
INNER JOIN tbl_Show s
ON m.MovieId = s.MovieId
INNER JOIN tbl_Theatre t
ON s.TheatreId = t.TheatreId
WHERE m.Title = @MovieName;

END

-- Execute GetShowInfoByMovieNameWithTheatreInfo Stored Procedure

EXECUTE usp_GetShowInfoByMovieNameWithTheatreInfo 'The Godfather';

-- Create a Stored Procedure to retrieve Shows with Theatre Information

CREATE OR ALTER PROCEDURE usp_GetShowsWithTheatreInfo

AS

BEGIN

SELECT s.ShowId, m.Title AS MovieName, t.TheatreName, t.TheatreAddress, s.ShowTime
FROM tbl_Movie m
INNER JOIN tbl_Show s
ON m.MovieId = s.MovieId
INNER JOIN tbl_Theatre t
ON s.TheatreId = t.TheatreId;

END

-- Execute GetShowsWithTheatreInfo Stored Procedure

EXECUTE usp_GetShowsWithTheatreInfo;

-- Create a Stored Procedure to retrieve Average Rating by Movie Name

CREATE OR ALTER PROCEDURE usp_GetAverageRatingByMovieName
@MovieName VARCHAR(30)

AS

BEGIN

SELECT ROUND(AVG(CAST(Rating AS DECIMAL(10, 1))), 1) AS 'Average Rating'
FROM tbl_Rating r
INNER JOIN tbl_Movie m
ON r.MovieId = m.MovieId
WHERE m.Title = @MovieName;

END

-- Execute GetAverageRatingByMovieName Stored Procedure

EXECUTE usp_GetAverageRatingByMovieName 'Avengers: Endgame';

EXECUTE usp_GetAverageRatingByMovieName 'The Dark Knight';

EXECUTE usp_GetAverageRatingByMovieName 'The Godfather';

EXECUTE usp_GetAverageRatingByMovieName 'Inception';

EXECUTE usp_GetAverageRatingByMovieName 'Titanic';

-- Create a Stored Procedure to Check and Book Movie Tickets

CREATE OR ALTER PROCEDURE usp_CheckAndBookMovieTickets
@UserId VARCHAR(10),
@ShowId VARCHAR(10),
@TotalTickets TINYINT,
@MovieBookingId VARCHAR(10) OUTPUT

AS

BEGIN

-- Check if the User is trying to Book more than 10 Tickets

IF(@TotalTickets > 10)
BEGIN
RAISERROR('Cannot Book more than 10 Tickets in a Single Booking', 16, 1);
RETURN;
END

DECLARE @AvailableTickets TINYINT;
DECLARE @BookingId VARCHAR(10);
DECLARE @TicketId VARCHAR(10);
DECLARE @TicketPrice SMALLINT;
DECLARE @ShowTime SMALLDATETIME;
DECLARE @CurrentDate SMALLDATETIME;
DECLARE @MaximumSeatNumber SMALLINT;
DECLARE @MaximumTicketId SMALLINT;
DECLARE @MaximumBookingId SMALLINT;

-- Check if the Show exists and Retrieve ShowTime

SELECT @AvailableTickets = AvailableSeats,
@ShowTime = ShowTime
FROM tbl_Show
WHERE ShowId = @ShowId;

IF(@AvailableTickets IS NULL)
BEGIN
RAISERROR('Tickets are not Available for the Selected Show', 16, 1);
RETURN;
END

-- Check if the CurrentDate is less than the ShowTime

SET @CurrentDate = GETDATE();

IF(@CurrentDate >= @ShowTime)
BEGIN
RAISERROR('Cannot Book Tickets for a Past or Ongoing Show', 16, 1);
RETURN;
END

-- Check if the Show has Enough Available Seats

IF(@AvailableTickets < @TotalTickets)
BEGIN
DECLARE @ErrorMessage VARCHAR(1000);
SET @ErrorMessage = CONCAT('Insufficient Seats Available for the Selected Show. Available Tickets: ', @AvailableTickets);
RAISERROR(@ErrorMessage, 16, 1);
RETURN;
END

-- Reduce the AvailableSeats for the Show

UPDATE tbl_Show
SET AvailableSeats = AvailableSeats - @TotalTickets
WHERE ShowId = @ShowId;

-- Calculate the TotalPrice for the Booking

SELECT @TicketPrice = Price
FROM tbl_Show
WHERE ShowId = @ShowId;

DECLARE @TotalPrice SMALLINT;
SET @TotalPrice = @TicketPrice * @TotalTickets;

-- Retrieve the Maximum Available BookingId

SELECT @MaximumBookingId = ISNULL(MAX(CAST(SUBSTRING(BookingId, 8, LEN(BookingId)) AS SMALLINT)), 0)
FROM tbl_Booking;

-- Insert the Booking Record

SET @MaximumBookingId = @MaximumBookingId + 1;
SET @BookingId = CONCAT('booking', @MaximumBookingId);

INSERT INTO
tbl_Booking(BookingId, UserId, ShowId, TotalTickets, TotalPrice, PaymentStatus)
VALUES (@BookingId, @UserId, @ShowId, @TotalTickets, @TotalPrice, 'success');

-- Retrieve the Maximum Available TicketId

SELECT @MaximumTicketId = ISNULL(MAX(CAST(SUBSTRING(TicketId, 7, LEN(TicketId)) AS SMALLINT)), 0)
FROM tbl_Ticket;

-- Retrieve the Maximum Available SeatNumber for the Show

SELECT @MaximumSeatNumber = ISNULL(MAX(CAST(SUBSTRING(SeatNumber, 2, LEN(SeatNumber)) AS SMALLINT)), 0)
FROM tbl_Ticket
WHERE ShowId = @ShowId;

/*
DECLARE @iterator INT;
SET @iterator = 1;
WHILE @iterator <= @TotalTickets
BEGIN
SET @MaximumSeatNumber = @MaximumSeatNumber + 1;
SET @MaximumTicketId = @MaximumTicketId + 1;
SET @TicketId = CONCAT('ticket', @MaximumTicketId);

INSERT INTO
tbl_Ticket(TicketId, BookingId, ShowId, SeatNumber, Price)
VALUES(@TicketId, @BookingId, @ShowId, CONCAT('S', @MaximumSeatNumber), @TicketPrice);

SET @iterator = @iterator + 1;

END
*/

-- Create a Table Variable to Store the Batch of Ticket Records

DECLARE @TicketBatch TABLE(
TicketId VARCHAR(10),
BookingId VARCHAR(10),
ShowId VARCHAR(10),
SeatNumber VARCHAR(10),
Price SMALLINT);

-- Replace the WHILE logic with a Recursive CTE

WITH TicketBatchCTE AS(
SELECT Number = 1
UNION ALL
SELECT Number + 1
FROM TicketBatchCTE
WHERE Number < @TotalTickets)
   
INSERT INTO @TicketBatch(TicketId, BookingId, ShowId, SeatNumber, Price)
SELECT CONCAT('ticket', @MaximumTicketId + tb.Number),
@BookingId, @ShowId, CONCAT('S', @MaximumSeatNumber + tb.Number),
@TicketPrice
FROM TicketBatchCTE tb;

-- Insert the Ticket Records from the Batch into the tbl_Ticket Table

INSERT INTO
tbl_Ticket(TicketId, BookingId, ShowId, SeatNumber, Price)
SELECT tb.TicketId, tb.BookingId, tb.ShowId, tb.SeatNumber, tb.Price
FROM @TicketBatch tb;

-- Return the BookingId

SET @MovieBookingId = @BookingId;

END

-- Execute CheckAndBookMovieTickets Stored Procedure

DECLARE @BookingId VARCHAR(10);
EXECUTE usp_CheckAndBookMovieTickets 'user5', 'show10', 5, @BookingId OUTPUT
PRINT 'Movie Ticket Booking is Successful. The BookingId is '+ @BookingId;

-- Create a Stored Procedure to Calculate the Total Movie Revenue from all the Bookings made

CREATE OR ALTER PROCEDURE usp_CalculateTotalMovieRevenue
@MovieName VARCHAR(30)

AS

BEGIN

SELECT SUM(TotalPrice) AS 'Total Movie Revenue'
FROM tbl_Booking
INNER JOIN tbl_Show
ON tbl_Booking.ShowId = tbl_Show.ShowId
INNER JOIN tbl_Movie
ON tbl_Show.MovieId = tbl_Movie.MovieId
WHERE tbl_Movie.Title = @MovieName;

END

-- Execute CalculateTotalMovieRevenue Stored Procedure

EXECUTE usp_CalculateTotalMovieRevenue 'Avengers: Endgame';

EXECUTE usp_CalculateTotalMovieRevenue 'The Dark Knight';

EXECUTE usp_CalculateTotalMovieRevenue 'The Godfather';

EXECUTE usp_CalculateTotalMovieRevenue 'Inception';

EXECUTE usp_CalculateTotalMovieRevenue 'Titanic';

-- Create a Stored Procedure to retrieve Movie Date Range

CREATE OR ALTER PROCEDURE usp_GetMovieDateRange
@MovieId VARCHAR(10),
@FirstDate SMALLDATETIME OUTPUT,
@LastDate SMALLDATETIME OUTPUT

AS

BEGIN

SELECT @FirstDate = MIN(ShowTime),
@LastDate = MAX(ShowTime)
FROM tbl_Show
WHERE MovieId = @MovieId;

END

-- Execute GetMovieDateRange Stored Procedure

DECLARE @StartDate SMALLDATETIME;
DECLARE @EndDate SMALLDATETIME;
EXECUTE usp_GetMovieDateRange 'movie2', @StartDate OUTPUT, @EndDate OUTPUT
PRINT 'The Movie Start Date:';
PRINT @StartDate;
PRINT 'The Movie End Date:';
PRINT @EndDate;

-- Create a Stored Procedure to Calculate the Movie Revenue between Dates

CREATE OR ALTER PROCEDURE usp_CalculateMovieRevenueBetweenDates
@MovieId VARCHAR(10)

AS

BEGIN

DECLARE @StartDate SMALLDATETIME;
DECLARE @EndDate SMALLDATETIME;
DECLARE @RevenueAmount DECIMAL(10, 2);

-- Call usp_GetMovieDateRange to get the Start and End Dates of the Movie

EXECUTE usp_GetMovieDateRange @MovieId, @StartDate OUTPUT, @EndDate OUTPUT

-- Calculate the Revenue between the retrieved Start and End Dates

SELECT @RevenueAmount = SUM(TotalPrice)
FROM tbl_Booking
INNER JOIN tbl_Show
ON tbl_Booking.ShowId = tbl_Show.ShowId
WHERE tbl_Show.MovieId = @MovieId
AND tbl_Booking.BookingTime BETWEEN @StartDate AND @EndDate;

-- Retrieve the Maximum Available RevenueId

DECLARE @MaximumRevenueId SMALLINT;
DECLARE @RevenueId VARCHAR(10);
SELECT @MaximumRevenueId = ISNULL(MAX(CAST(SUBSTRING(RevenueId, 8, LEN(RevenueId)) AS SMALLINT)), 0)
FROM tbl_MovieRevenue;

-- Increment the RevenueId

SET @MaximumRevenueId = @MaximumRevenueId + 1;
SET @RevenueId = CONCAT('revenue', @MaximumRevenueId);

-- Insert the Revenue Record into tbl_MovieRevenue

INSERT INTO
tbl_MovieRevenue(RevenueId, MovieId, StartDate, EndDate, RevenueAmount)
VALUES(@RevenueId, @MovieId, @StartDate, @EndDate, @RevenueAmount);

END

-- Execute CalculateMovieRevenueBetweenDates Stored Procedure

EXECUTE usp_CalculateMovieRevenueBetweenDates 'movie1';

-- Recursive Stored Procedure

CREATE OR ALTER PROCEDURE usp_RecursiveMovieTicketBooking
@UserId VARCHAR(10),
@ShowId VARCHAR(10),
@TotalTickets TINYINT,
@MovieBookingId VARCHAR(100) OUTPUT

AS

BEGIN

-- Check if the User is trying to Book less than or equal to 0 Ticket

IF(@TotalTickets <= 0)
BEGIN
RAISERROR('Cannot Book less than or equal to 0 Ticket', 16, 1);
RETURN;
END

DECLARE @AvailableTickets TINYINT;

SELECT @AvailableTickets = AvailableSeats
FROM tbl_Show
WHERE ShowId = @ShowId;

-- Check if the Show has Enough Available Seats

IF(@AvailableTickets < @TotalTickets)
BEGIN
DECLARE @ErrorMessage VARCHAR(1000);
SET @ErrorMessage = 'Insufficient Seats Available for the Selected Show. Available Tickets: ' + CAST(@AvailableTickets AS VARCHAR(10));
RAISERROR(@ErrorMessage, 16, 1);
RETURN;
END

IF(@TotalTickets <= 10)
BEGIN
DECLARE @TempBookingId VARCHAR(10);
EXECUTE usp_CheckAndBookMovieTickets @UserId, @ShowId, @TotalTickets, @TempBookingId OUTPUT;
SET @MovieBookingId = ISNULL(@MovieBookingId, '') + @TempBookingId + ', ';
END

ELSE
BEGIN
DECLARE @BookingId VARCHAR(10);
EXECUTE usp_CheckAndBookMovieTickets @UserId, @ShowId, 10, @BookingId OUTPUT;
SET @MovieBookingId = ISNULL(@MovieBookingId, '') + @BookingId + ', ';

-- Recursive Call

DECLARE @RemainingTickets TINYINT = @TotalTickets - 10;
EXECUTE usp_RecursiveMovieTicketBooking @UserId, @ShowId, @RemainingTickets, @MovieBookingId OUTPUT;
END

END

-- Execute RecursiveMovieTicketBooking Stored Procedure

DECLARE @Id VARCHAR(100);
EXECUTE usp_RecursiveMovieTicketBooking 'user10', 'show5', 15, @Id OUTPUT
PRINT @Id;

-- User Defined Table Type and Table Valued Parameter

CREATE TYPE UT_Movie AS TABLE(
MovieId VARCHAR(10) PRIMARY KEY,
Title VARCHAR(30) NOT NULL,
Description VARCHAR(1000) NOT NULL,
Duration TINYINT NOT NULL,
ReleaseDate DATE NOT NULL);

CREATE OR ALTER PROCEDURE usp_InsertMovies(@Movies UT_Movie READONLY)

AS

BEGIN

INSERT INTO
tbl_Movie(MovieId, Title, Description, Duration, ReleaseDate)
SELECT MovieId, Title, Description, Duration, ReleaseDate FROM @Movies;

END

DECLARE @Movie UT_Movie;
INSERT INTO
@Movie(MovieId, Title, Description, Duration, ReleaseDate)
VALUES
('movie6', 'Pulp Fiction', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption', 154, '2023-03-14'),
('movie7', 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers', 136, '2023-03-14'),
('movie8', 'Fight Club', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more', 139, '2023-03-14');

EXECUTE usp_InsertMovies @Movie;

SELECT * FROM tbl_Movie;

SELECT * FROM @Movie;

-- Create MoviesAudit Table

CREATE TABLE tbl_MoviesAudit(Id INT IDENTITY, AuditData VARCHAR(1000));

-- Create a Trigger to Insert data into MoviesAudit table on Insertion of Movies

CREATE OR ALTER TRIGGER tr_tbl_Movie_ForInsert
ON tbl_Movie
FOR INSERT

AS

BEGIN

DECLARE @MovieId VARCHAR(10);

SELECT @MovieId = MovieId
FROM inserted;

INSERT INTO tbl_MoviesAudit
VALUES('A New Movie with Id ' + @MovieId + ' is added at ' + CAST(GETDATE() AS VARCHAR));

END

INSERT INTO
tbl_Movie(MovieId, Title, Description, Duration, ReleaseDate)
VALUES('movie9', 'Forrest Gump', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart', 142, '2023-04-20');

SELECT * FROM tbl_Movie;
SELECT * FROM tbl_MoviesAudit;

-- Create a Trigger to Insert data into MoviesAudit table on Deletion of Movies

CREATE OR ALTER TRIGGER tr_tbl_Movie_ForDelete
ON tbl_Movie
FOR DELETE

AS

BEGIN

DECLARE @MovieId VARCHAR(10);

SELECT @MovieId = MovieId
FROM deleted;

INSERT INTO tbl_MoviesAudit
VALUES('An Existing Movie with Id ' + @MovieId + ' is deleted at ' + CAST(GETDATE() AS VARCHAR));

END

DELETE FROM tbl_Movie
WHERE MovieId = 'movie9';

SELECT * FROM tbl_Movie;
SELECT * FROM tbl_MoviesAudit;

-- Create UsersAudit Table

CREATE TABLE tbl_UsersAudit(Id INT IDENTITY, AuditData VARCHAR(1000));

-- Create a Trigger to Insert data into UsersAudit table on Insertion of User details

CREATE OR ALTER TRIGGER tr_tbl_User_ForInsert
ON tbl_User
FOR INSERT

AS

BEGIN

DECLARE @UserId VARCHAR(10);

SELECT @UserId = UserId
FROM inserted;

INSERT INTO tbl_UsersAudit
VALUES('A New User with Id ' + @UserId + ' is added at ' + CAST(GETDATE() AS VARCHAR));

END

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user16', 'Meera Pandey', 'meera.pandey@gmail.com', 7985634006, HASHBYTES('MD2', 'password16'));

SELECT * FROM tbl_User;
SELECT * FROM tbl_UsersAudit;

-- Create a Trigger to Insert data into UsersAudit table on Deletion of User details

CREATE OR ALTER TRIGGER tr_tbl_User_ForDelete
ON tbl_User
FOR DELETE

AS

BEGIN

DECLARE @UserId VARCHAR(10);

SELECT @UserId = UserId
FROM deleted;

INSERT INTO tbl_UsersAudit
VALUES('An Existing User with Id ' + @UserId + ' is deleted at ' + CAST(GETDATE() AS VARCHAR));

END

DELETE FROM tbl_User
WHERE UserId = 'user16';

SELECT * FROM tbl_User;
SELECT * FROM tbl_UsersAudit;

-- Create a Trigger to Insert data into UsersAudit table on Updation of User details

CREATE OR ALTER TRIGGER tr_tbl_User_ForUpdate
ON tbl_User
FOR UPDATE

AS

BEGIN

DECLARE @UserId VARCHAR(10);
DECLARE @OldName VARCHAR(50), @NewName VARCHAR(50);
DECLARE @OldEmail VARCHAR(255), @NewEmail VARCHAR(255);
DECLARE @OldContactNumber CHAR(10), @NewContactNumber CHAR(10);
DECLARE @OldUserPassword VARCHAR(20), @NewUserPassword VARCHAR(20);

DECLARE @AuditText VARCHAR(1000);

SELECT * INTO #TempTable FROM inserted;

WHILE(EXISTS(SELECT UserId FROM #TempTable))
BEGIN
SET @AuditText = ''

SELECT TOP 1 @UserId = UserId,
@NewName = Name,
@NewEmail = Email,
@NewContactNumber = ContactNumber,
@NewUserPassword = UserPassword
FROM #TempTable;

SELECT @OldName = Name,
@OldEmail = Email,
@OldContactNumber = ContactNumber,
@OldUserPassword = UserPassword
FROM deleted
WHERE UserId = @UserId;

SET @AuditText = 'An Existing User with Id ' + @UserId + ' has changed'

if(@OldName <> @NewName)
SET @AuditText = @AuditText + ' Name from ' + @OldName + ' to ' + @NewName

if(@OldEmail <> @NewEmail)
SET @AuditText = @AuditText + ' Email from ' + @OldEmail + ' to ' + @NewEmail

if(@OldContactNumber <> @NewContactNumber)
SET @AuditText = @AuditText + ' ContactNumber from ' + @OldContactNumber + ' to ' + @NewContactNumber

if(@OldUserPassword <> @NewUserPassword)
SET @AuditText = @AuditText + ' UserPassword';

INSERT INTO tbl_UsersAudit(AuditData)
VALUES(@AuditText);

DELETE FROM #TempTable
WHERE UserId = @UserId;

END

END

UPDATE tbl_User
SET Name = 'Arnab Goswami',
Email = 'arnab.goswami@gmail.com',
UserPassword = HASHBYTES('MD2', 'password015')
WHERE UserId = 'user15';

SELECT * FROM tbl_User;
SELECT * FROM tbl_UsersAudit;

-- Create AuditTableChanges Table

CREATE TABLE tbl_AuditTableChanges(DatabaseName VARCHAR(50),
TableName VARCHAR(50),
EventType VARCHAR(50),
LoginName VARCHAR(50),
SQLCommand VARCHAR(2000),
AuditDateTime DATETIME);

-- Audit Table Changes using a DDL Trigger

CREATE OR ALTER TRIGGER tr_tbl_AuditTableChanges
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE, RENAME

AS

BEGIN

DECLARE @EventData XML;

SELECT @EventData = EVENTDATA();

INSERT INTO tbl_AuditTableChanges
(DatabaseName, TableName, EventType, LoginName, SQLCommand, AuditDateTime)
VALUES
(
@EventData.value('(/EVENT_INSTANCE/DatabaseName)[1]', 'VARCHAR(50)'),
@EventData.value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(50)'),
@EventData.value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(50)'),
@EventData.value('(/EVENT_INSTANCE/LoginName)[1]', 'VARCHAR(50)'),
@EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'VARCHAR(2000)'),
GETDATE()
);

END

-- Rename Price of Ticket table to TicketPrice

EXECUTE SP_RENAME 'tbl_Ticket.Price', 'TicketPrice';

-- View Contents of AuditTableChanges table

SELECT * FROM tbl_AuditTableChanges;

-- Create a Trigger to Encrypt UserPassword

CREATE OR ALTER TRIGGER tr_EncryptUserPassword
ON tbl_User
AFTER INSERT, UPDATE

AS

BEGIN

UPDATE u
SET u.UserPassword = CONVERT(VARCHAR(1000), HASHBYTES('MD2', i.UserPassword))
FROM tbl_User u
INNER JOIN inserted i
ON u.UserId = i.UserId;

END

INSERT INTO
tbl_User(UserId, Name, Email, ContactNumber, UserPassword)
VALUES('user16', 'Meera Pandey', 'meera.pandey@gmail.com', 7985634006, 'password16');

/*
UPDATE tbl_User
SET UserPassword = 'password016'
WHERE UserId = 'user16';
*/

SELECT * FROM tbl_User;
SELECT * FROM tbl_UsersAudit;

-- Create a Function to Calculate the Total Revenue by TheatreId

CREATE OR ALTER FUNCTION fn_GetTotalRevenueByTheatreId(@TheatreId VARCHAR(10))
RETURNS DECIMAL(10, 2)

AS

BEGIN

DECLARE @RevenueAmount DECIMAL(10, 2);

SELECT @RevenueAmount = SUM(b.TotalPrice)
FROM tbl_Booking AS b
INNER JOIN tbl_Show AS s
ON b.ShowId = s.ShowId
WHERE s.TheatreId = @TheatreId
AND b.PaymentStatus = 'success';

RETURN @RevenueAmount;

END

PRINT dbo.fn_GetTotalRevenueByTheatreId('theatre1');

-- Create a Function to retrieve the Total Bookings made by UserId

CREATE OR ALTER FUNCTION fn_GetTotalBookingsByUserId(@UserId VARCHAR(10))
RETURNS INT

AS

BEGIN

DECLARE @TotalBookings INT;

SELECT @TotalBookings = COUNT(*)
FROM tbl_Booking
WHERE UserId = @UserId;

RETURN @TotalBookings;

END

PRINT dbo.fn_GetTotalBookingsByUserId('user5');