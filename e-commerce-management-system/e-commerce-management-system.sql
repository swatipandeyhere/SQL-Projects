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