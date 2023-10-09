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
('show1', 'movie1', 'screen1', 'theatre1', '2023-05-24 09:00:00', 200, 80),
('show2', 'movie2', 'screen2', 'theatre1', '2023-05-23 09:30:00', 200, 80),
('show3', 'movie3', 'screen3', 'theatre2', '2023-05-24 12:30:00', 200, 100),
('show4', 'movie4', 'screen4', 'theatre3', '2023-05-23 12:00:00', 200, 100),
('show5', 'movie5', 'screen5', 'theatre4', '2023-05-23 14:30:00', 200, 100),
('show6', 'movie1', 'screen6', 'theatre2', '2023-05-23 16:30:00', 200, 100),
('show7', 'movie2', 'screen7', 'theatre3', '2023-05-24 21:30:00', 200, 100),
('show8', 'movie1', 'screen8', 'theatre5', '2023-05-24 18:00:00', 200, 100),
('show9', 'movie1', 'screen1', 'theatre1', '2023-06-15 09:00:00', 200, 80),
('show10', 'movie2', 'screen1', 'theatre1', '2023-06-15 14:00:00', 200, 80),
('show11', 'movie3', 'screen2', 'theatre1', '2023-06-16 18:00:00', 200, 100),
('show12', 'movie4', 'screen3', 'theatre2', '2023-06-17 18:00:00', 200, 100),
('show13', 'movie5', 'screen4', 'theatre3', '2023-06-15 18:00:00', 200, 100),
('show14', 'movie1', 'screen7', 'theatre3', '2023-06-17 18:00:00', 200, 100),
('show15', 'movie5', 'screen8', 'theatre5', '2023-06-15 18:00:00', 200, 100);

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