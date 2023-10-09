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