 USE Library

CREATE TABLE Book ( 
	bookID int NOT NULL PRIMARY KEY IDENTITY (1000,1), 
	title varchar(255), 
	publisherID int FOREIGN KEY REFERENCES Publisher(publisherID)
	);

CREATE TABLE Book_Authors ( 
	authorID int NOT NULL PRIMARY KEY IDENTITY (1000,1),
	authorname varchar(255),
	bookID int FOREIGN KEY REFERENCES Book(bookID)
	);

CREATE TABLE Publisher (
	publisherID int NOT NULL PRIMARY KEY IDENTITY (100,1),
	name varchar(255),
	address varchar(255),
	phone varchar(255)
	);

CREATE TABLE Book_Loans ( 
	bookloansID int NOT NULL PRIMARY KEY IDENTITY (100,1),
	cardNO int FOREIGN KEY REFERENCES Borrower(cardNO),
	dateout date, 
	datedue date, 
	bookID int FOREIGN KEY REFERENCES Book(bookID),
	branchID int FOREIGN KEY REFERENCES Library_Branch(branchID)
	); 

CREATE TABLE Book_Copies ( 
	bookcopiesID int NOT NULL PRIMARY KEY IDENTITY (1000,1),
	NOofcopies int, 
	bookID int FOREIGN KEY REFERENCES Book(bookID), 
	branchID int FOREIGN KEY REFERENCES Library_Branch(branchID)
	);

CREATE TABLE Borrower ( 
	cardNO int NOT NULL PRIMARY KEY IDENTITY (100,1),
	name varchar(255),
	address varchar(255),
	phone varchar(255)
	);

CREATE TABLE Library_Branch (
	branchID int NOT NULL PRIMARY KEY IDENTITY (10,1), 
	branchname varchar(255),
	address varchar(255)
	);

INSERT INTO Publisher (name, address, phone)
VALUES ('Picador USA', '175 5th Ave, New York, NY 10010', '(800) 221-7945'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100'),
	   ('Simon and Schuster INC', '57 Littlefield Street Avon, MA 02322', '508-427-7100');

INSERT INTO Book
VALUES ('The Lost Tribe', 100),
	   ('1922', 101),
	   ('It', 102),
	   ('The Disaster Artist', 103),
	   ('Jupiter Rising', 104),
	   ('The Blindfold', 105),
	   ('Winter of Ice and Iron', 106),
	   ('The Kid', 107),
	   ('Skitter', 108),
	   ('The Unreal and the Real', 109),
	   ('The Light in the Woods', 110),
	   ('The Lost Swimmer', 111),
	   ('Barbary Station', 112),
	   ('Magic of Mist and Wind', 113),
	   ('Something Wicked This Way Comes', 114),
	   ('Crimes of the Father', 115),
	   ('White Silence', 116),
	   ('The Visitors', 117),
	   ('Park Bench', 118),
	   ('The Mountain', 119);

INSERT INTO Book_Authors
VALUES ('Brad Manuel', 1000),
	   ('Stephen King', 1001),
	   ('Stephen King', 1002),
	   ('Greg Sestro and Tom Bissell', 1003),
	   ('Zachary Brown', 1004),
	   ('Siri Hustvedt', 1005),
	   ('Rachel Neumeier', 1006),
	   ('Ron Hansen', 1007),
	   ('Ezekiel Boone', 1008),
	   ('Ursula K. Le Guin', 1009),
	   ('Jean Marie Pierson', 1010),
	   ('Ann Turner', 1011),
	   ('R. E. Stearns', 1012),
	   ('Cassandra Rose Clarke', 1013),
	   ('Ray Bradbury', 1014),
	   ('Thomas Keneally', 1015),
	   ('Jodi Taylor', 1016),
	   ('Catherine Burns', 1017),
	   ('Crhristophe Chaboute', 1018),
	   ('Paul Yoon', 1019);

INSERT INTO Library_Branch
VALUES ('Central', '801 SW 10th Ave, Portland, OR 97205'),
	   ('Sharpstown', '250 Winter St NE, Salem, OR 97301'),
	   ('Georgetown', '645 NW Monroe Ave, Corvallis, OR 97330'),
	   ('Westwood', '2850 NE Brookwood Pkwy, Hillsboro, OR 97124');

INSERT INTO Borrower
VALUES ('Meda Locklin', '1224 NW Short St. Boring, OR 99711', '888-239-2223'),
	   ('Carol Conkling', '1205 NW Long St. Boring, OR 99711', '888-239-2003'),
	   ('Robby Mccrea', '1212 N 5th St. Boring, OR 99711', '888-223-2223'),
	   ('Joane Andress', '1224 W 10th St. Boring, OR 99711', '888-239-5560'),
	   ('Mitsue Coache', '1112 Boring St. Boring, OR 99711', '882-239-2003'),
	   ('Rosana Cobble', '1100 Vector St. Boring, OR 99711', '882-230-2003'),
	   ('Kanesha Shiroma', '1003 S King St. Boring, OR 99711', '882-300-3003'),
	   ('Shelby Knoblock', '1000 Rich St. Boring, OR 99711', '882-500-2013'),
	   ('Ahmad Tabares', '1111 Tall St. Boring, OR 99711', '882-239-2233');

INSERT INTO Book_Loans
VALUES (100, '2017-10-10', '2018-08-13', 1000, 11),
	   (101, '2017-05-01', '2018-03-10', 1001, 10),
	   (102, '2017-11-11', '2018-09-01', 1002, 10),
	   (103, '2017-01-10', '2018-10-02', 1003, 11),
	   (104, '2017-10-26', '2018-08-22', 1004, 12),
	   (105, '2017-02-14', '2018-05-16', 1005, 13),
	   (106, '2017-09-27', '2018-06-06', 1006, 10),
	   (107, '2017-03-14', '2018-09-30', 1007, 11),
	   (108, '2017-12-23', '2018-12-22', 1008, 12),
	   (108, '2017-07-17', '2018-12-15', 1009, 13),
	   (108, '2017-10-10', '2018-08-13', 1010, 10),
	   (108, '2017-05-01', '2018-03-10', 1011, 11),
	   (108, '2017-11-11', '2018-09-01', 1012, 12),
	   (103, '2017-01-10', '2018-10-02', 1013, 13),
	   (103, '2017-10-26', '2018-08-22', 1014, 10),
	   (103, '2017-02-14', '2018-05-16', 1015, 11),
	   (103, '2017-09-27', '2018-06-06', 1016, 12),
	   (103, '2017-03-14', '2018-09-30', 1017, 13),
	   (102, '2017-12-23', '2018-12-22', 1018, 10),
	   (101, '2017-07-17', '2018-12-15', 1019, 11),
	   (100, '2017-10-10', '2018-08-13', 1000, 12),
	   (104, '2017-05-01', '2018-03-10', 1001, 13),
	   (105, '2017-11-11', '2018-09-01', 1002, 10),
	   (106, '2017-01-10', '2018-10-02', 1003, 11),
	   (107, '2017-10-26', '2018-08-22', 1004, 12),
	   (108, '2017-02-14', '2018-05-16', 1005, 13),
	   (100, '2017-09-27', '2018-06-06', 1006, 10),
	   (102, '2017-03-14', '2018-09-30', 1007, 11),
	   (101, '2017-12-23', '2018-12-22', 1008, 12),
	   (103, '2017-07-17', '2018-12-15', 1009, 13),
	   (104, '2017-10-10', '2018-08-13', 1010, 10),
	   (105, '2017-05-01', '2018-03-10', 1011, 11),
	   (106, '2017-11-11', '2018-09-01', 1012, 12),
	   (107, '2017-01-10', '2018-10-02', 1013, 13),
	   (108, '2017-10-26', '2018-08-22', 1014, 10),
	   (108, '2017-02-14', '2018-05-16', 1015, 11),
	   (100, '2017-09-27', '2018-06-06', 1016, 12),
	   (101, '2017-03-14', '2018-09-30', 1017, 13),
	   (102, '2017-12-23', '2018-12-22', 1018, 10),
	   (103, '2017-07-17', '2018-12-15', 1019, 11),
	   (104, '2017-10-10', '2018-08-13', 1000, 12),
	   (105, '2017-05-01', '2018-03-10', 1001, 13),
	   (106, '2017-11-11', '2018-09-01', 1002, 10),
	   (107, '2017-01-10', '2018-10-02', 1003, 11),
	   (108, '2017-10-26', '2018-08-22', 1004, 12),
	   (100, '2017-02-14', '2018-05-16', 1005, 13),
	   (101, '2017-09-27', '2018-06-06', 1006, 10),
	   (102, '2017-03-14', '2018-09-30', 1007, 11),
	   (103, '2017-12-23', '2018-12-22', 1008, 12),
	   (104, '2017-07-17', '2018-12-15', 1009, 13),
	   (105, '2017-10-10', '2018-08-13', 1010, 10),
	   (100, '2017-10-10', '2018-08-13', 1000, 11);

INSERT INTO Book_Copies
VALUES (5, 1000, 10), 
	   (5, 1001, 11), 
	   (5, 1002, 12), 
	   (5, 1003, 13), 
	   (5, 1004, 10), 
	   (5, 1005, 11), 
	   (5, 1006, 12), 
	   (5, 1007, 13), 
	   (5, 1008, 10), 
	   (5, 1009, 11), 
	   (5, 1010, 12), 
	   (5, 1011, 13), 
	   (5, 1012, 10), 
	   (5, 1013, 11), 
	   (5, 1014, 12), 
	   (5, 1015, 13), 
	   (5, 1016, 10), 
	   (5, 1017, 11), 
	   (5, 1018, 12), 
	   (5, 1019, 13),
	   (5, 1000, 13), 
	   (5, 1001, 12), 
	   (5, 1002, 11), 
	   (5, 1003, 10), 
	   (5, 1004, 13), 
	   (5, 1005, 12), 
	   (5, 1006, 11), 
	   (5, 1007, 10), 
	   (5, 1008, 13), 
	   (5, 1009, 12), 
	   (5, 1010, 11), 
	   (5, 1011, 10), 
	   (5, 1012, 13), 
	   (5, 1013, 12), 
	   (5, 1014, 11), 
	   (5, 1015, 10), 
	   (5, 1016, 13), 
	   (5, 1017, 12), 
	   (5, 1018, 10),
	   (5, 1019, 11); 

CREATE PROCEDURE uspGetInfo @InfoNumber int 
AS
IF @InfoNumber BETWEEN 1 AND 7 
BEGIN

IF @InfoNumber = 1 
SELECT NOofcopies, title, branchname, library_branch.branchID FROM Book_Copies
INNER JOIN Book ON book_copies.bookID = book.bookID 
INNER JOIN Library_Branch ON book_copies.branchID = library_branch.branchID
WHERE title LIKE ('the lost tr%') AND Library_Branch.branchID = 11


IF  @InfoNumber = 2 
(SELECT NOofcopies, title, branchname, library_branch.branchID FROM Book_Copies
INNER JOIN Book ON book_copies.bookID = book.bookID 
INNER JOIN Library_Branch ON book_copies.branchID = library_branch.branchID
WHERE title LIKE ('the lost tr%'))


IF @InfoNumber = 3 
SELECT name FROM Borrower 
WHERE NOT EXISTS (SELECT * FROM Book_Loans WHERE borrower.cardNO = Book_Loans.cardNO) 

IF @InfoNumber = 4 
SELECT book_loans.datedue, title, borrower.name, borrower.address, library_branch.branchID, branchname FROM Book_Loans
INNER JOIN Borrower ON book_loans.cardNO = borrower.cardNO
INNER JOIN Book ON Book_Loans.bookID = book.bookID
INNER JOIN Library_Branch ON Book_Loans.branchID = Library_Branch.branchID
WHERE branchname LIKE ('shar%') AND datedue <= GETDATE()

IF @InfoNumber = 5 
SELECT library_branch.branchname, COUNT(book_loans.bookloansID) FROM Library_Branch 
INNER JOIN Book_Loans ON library_branch.branchID = Book_loans.branchID
GROUP BY library_branch.branchname 

IF @InfoNumber = 6 
SELECT borrower.name, borrower.address, borrower.phone, COUNT(book_loans.bookloansID) FROM Borrower
INNER JOIN Book_Loans ON borrower.cardNO = Book_Loans.cardNO
GROUP BY borrower.name, borrower.address, borrower.phone 
HAVING COUNT(book_loans.bookloansID) >= 5


IF @InfoNumber = 7 
SELECT Book_Authors.authorname, book.title, book_copies.NOofcopies, Library_Branch.branchname FROM Book_Copies
INNER JOIN Book ON Book_Copies.bookID = Book.bookID
INNER JOIN Book_Authors ON Book_Copies.bookID = Book_Authors.bookID
INNER JOIN Library_Branch ON Book_Copies.branchID = Library_Branch.branchID
WHERE library_branch.branchname LIKE ('cen%') AND Book_Authors.authorname LIKE ('steph%')
END
ELSE SELECT 'Only numbers between 1 and 7 are accepted' 
GO

EXEC uspGetInfo 9