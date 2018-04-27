CREATE DATABASE db_library2
GO
USE db_library2
GO



CREATE TABLE tbl_borrower (
	card_no INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	borrower_name VARCHAR(50) NOT NULL,
	borrower_address VARCHAR(50) NOT NULL,
	borrower_phone VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_borrower

INSERT INTO tbl_borrower
	(borrower_name, borrower_address, borrower_phone)
	VALUES
	('Tom Jones', '45 E. 5th Street New York, NY', '654-987-6545'),
	('Jane Evans', '643 24th Street New York, NY', '756-879-0987'),
	('Hellen Troy', '89 1st Street New York, NY', '980-654-5454'),
	('Thomas Ray', '23 7th Street New York, NY', '565-789-8888'),
	('Tim Stevens', '46 89th Street New York, NY', '888-798-8522'),
	('John Cho', '66 4th Street New York, NY', '745-655-8554'),
	('Sara South', '789 Adam Street New York, NY', '753-565-9868'),
	('Tiffany Brahn', '383 Josef Street New York, NY', '987-564-8524'),
	('George Marley', '332 Sally Drive New York, NY', '124-354-5874'),
	('Wilson Smith', '474 Edgar Drive New York, NY', '656-888-7757')
;

CREATE TABLE tbl_library_branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_name VARCHAR(50) NOT NULL,
	branch_address VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_library_branch

INSERT INTO tbl_library_branch
	(branch_name, branch_address)
	VALUES
	('Sharpstown', '55 S. Park Avenue New York, NY'),
	('Central', '343 Jefferson Street New York, NY'),
	('Columbus', '887 5th Avenue New York, NY'),
	('Epiphany', '467 88th Street New York, NY')
;

CREATE TABLE tbl_publisher (
	book_publisher VARCHAR(50) NOT NULL,
	publisher_address VARCHAR(50) NOT NULL,
	publisher_phone VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_publisher

INSERT INTO tbl_publisher 
	(book_publisher, publisher_address, publisher_phone)
	VALUES
	('Knopf Publishing Group', '1745 Broadway New York, NY', '212-940-7390'),
	('Doubleday Publishing Group', '548 Broadway New York, NY', '212-950-7980'),
	('Thomas Egerton Publishing', '32 Whitehall Lane London, UK', '44-21-7965-8400'),
	('Warner Books, Inc.', '1271 6th Avenue New York, NY', '212-522-7200'),
	('Charles Scribners Sons', 'P.O. Box 9187 Farmington Hills, MI', '800-897-4253'),
	('Simon and Schuster', '1230 Avenue of the Americas New York, NY', '212-698-2739'),
	('Little Brown and Company', '237 Park Avenue New York, NY', '212-364-1100'),
	('Harcourt, Brace and Company', '9205 S. Park Center Loop Orlando, FL', '800-225-3362'),
	('Chapman and Hall', '186 Strand London, UK', '44-55-6789-8545'),
	('Faber and Faber', '7477 Great Russell Street London, UK', '44-0-1206-255-777'),
	('Smith, Elder and Co.', '65 Cornill Street London, UK', '44-58-6546-4568'),
	('Thomas Cautley Newby', '72 Mortimer Street London, UK', '44-58-6566-5855'),
	('The Russian Messenger', '43 Vodka Street Moscow, RU', '7-32-9494-0909'),
	('Roberts Brothers', '33 Smith Street Boston, MA', '800-944-8989'),
	('Chatta and Windus', '20 Vauxhall Bridge Road London, UK', '44-20-7840-8400'),
	('Macmilan Publishers', '175 5th Avenue New York, NY', '609-409-2298'),
	('The Viking Press', '345 Hudson Street New York, NY', '866-761-6685'),
	('The Ukranian Messenger', '44 Kraut Court Moscow, RU', '7-66-5454-5656'),
	('Harper and Brothers', '49 E. 33rd Street New York, NY', '800-656-6542'),
	('Journal des Debats', '54 Louvre Paris, FR', '33-56-6654-6546'),
	('Picador USA', '175 5th Avenue New York, NY', '800-221-7945')
;


CREATE TABLE tbl_book (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	book_title VARCHAR(50) NOT NULL,
	book_publisher VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_book


INSERT INTO tbl_book	
	(book_title, book_publisher)
	VALUES
	('Carrie','Knopf Publishing Group'),
	('The Shining', 'Doubleday Publishing Group'),
	('Pride and Prejudice', 'Thomas Egerton Publishing'),
	('To Kill a Mockingbird', 'Warner Books, Inc.'),
	('The Great Gatsby', 'Charles Scribners Sons'),
	('Catch-22', 'Simon and Schuster'),
	('The Catcher in the Rye', 'Little Brown and Company'),
	('Animal Farm', 'Harcourt, Brace and Company'),
	('Great Expectations', 'Chapman and Hall'),
	('Lord of the Flies', 'Faber and Faber'),
	('Jane Eyre', 'Smith, Elder and Co.'),
	('Wundering Heights', 'Thomas Cautley Newby'),
	('Anna Karenina', 'The Russian Messenger'),
	('Little Women', 'Roberts Brothers'),
	('Brave New World', 'Chatta and Windus'),
	('Gone with the Wind', 'Macmilan Publishers'),
	('The Grapes of Wrath', 'The Viking Press'),
	('Crime and Punishment', 'The Ukranian Messenger'),
	('Charlottes Web', 'Harper and Brothers'),
	('The Count of Monte Cristo', 'Journal des Debats'),
	('The Lost Tribe', 'Picador USA')
;

CREATE TABLE tbl_book_authors (
	book_id INT NOT NULL FOREIGN KEY REFERENCES tbl_book(book_id),
	book_author VARCHAR(50) NOT NULL
);


INSERT INTO tbl_book_authors
	(book_id, book_author)
	VALUES
	(1, 'Stephen King'),
	(2, 'Stephen King'),
	(3, 'Jane Austen'),
	(4, 'Harper Lee'),
	(5, 'F. Scott Fitzgerald'),
	(6, 'Joseph Heller'),
	(7, 'J.D. Salinger'),
	(8, 'George Orwell'),
	(9, 'Charles Dickens'),
	(10, 'William Golding'),
	(11, 'Charlotte Bronte'),
	(12, 'Emily Bronte'),
	(13, 'Leo Tolstoy'),
	(14, 'Louisa May Alcott'),
	(15, 'Aldous Huxley'),
	(16, 'Margaret Mitchell'),
	(17, 'John Steinbeck'),
	(18, 'Fyodor Dostroyevsky'),
	(19, 'E.B. White'),
	(20, 'Alexander Dumas'),
	(21, 'Mark Lee')
;

CREATE TABLE tbl_book_copies (
	book_id INT NOT NULL FOREIGN KEY REFERENCES tbl_book(book_id),
	branch_id INT NOT NULL FOREIGN KEY REFERENCES tbl_library_branch(branch_id),
	no_of_copies INT NOT NULL
);

INSERT INTO tbl_book_copies
	(book_id, branch_id, no_of_copies)
	VALUES
	(1, 1, 3),
	(2, 1, 3),
	(3, 1, 3),
	(4, 1, 3),
	(5, 1, 3),
	(6, 1, 3),
	(7, 1, 3),
	(8, 1, 3),
	(9, 1, 3),
	(10, 1, 3),
	(11, 1, 3), 
	(12, 1, 3),
	(13, 1, 3),
	(14, 1, 3),
	(15, 1, 3),
	(16, 1, 3),
	(17, 1, 3),
	(18, 1, 3),
	(19, 1, 3),
	(20, 1, 3),
	(21, 1, 3),
	(1, 2, 3),
	(2, 2, 3),
	(3, 2, 3),
	(4, 2, 3),
	(5, 2, 3),
	(6, 2, 3),
	(7, 2, 3),
	(8, 2, 3),
	(9, 2, 3),
	(10, 2, 3),
	(11, 2, 3), 
	(12, 2, 3),
	(13, 2, 3),
	(14, 2, 3),
	(15, 2, 3),
	(16, 2, 3),
	(17, 2, 3),
	(18, 2, 3),
	(19, 2, 3),
	(20, 2, 3),
	(21, 2, 3),
	(1, 3, 3),
	(2, 3, 3),
	(3, 3, 3),
	(4, 3, 3),
	(5, 3, 3),
	(6, 3, 3),
	(7, 3, 3),
	(8, 3, 3),
	(9, 3, 3),
	(10, 3, 3),
	(11, 3, 3), 
	(12, 3, 3),
	(13, 3, 3),
	(14, 3, 3),
	(15, 3, 3),
	(16, 3, 3),
	(17, 3, 3),
	(18, 3, 3),
	(19, 3, 3),
	(20, 3, 3),
	(21, 3, 3),
	(1, 4, 3),
	(2, 4, 3),
	(3, 4, 3),
	(4, 4, 3),
	(5, 4, 3),
	(6, 4, 3),
	(7, 4, 3),
	(8, 4, 3),
	(9, 4, 3),
	(10, 4, 3),
	(11, 4, 3), 
	(12, 4, 3),
	(13, 4, 3),
	(14, 4, 3),
	(15, 4, 3),
	(16, 4, 3),
	(17, 4, 3),
	(18, 4, 3),
	(19, 4, 3),
	(20, 4, 3),
	(21, 4, 3)
;


CREATE TABLE tbl_book_loans (
	book_id INT NOT NULL FOREIGN KEY REFERENCES tbl_book(book_id),
	branch_id INT NOT NULL FOREIGN KEY REFERENCES tbl_library_branch(branch_id),
	card_no INT NOT NULL FOREIGN KEY REFERENCES tbl_borrower(card_no),
	date_out DATE NOT NULL,
	due_date DATE NOT NULL
);

INSERT INTO tbl_book_loans
	(book_id, branch_id, card_no, date_out, due_date)
	VALUES
	(1, 1, 1, '2018-04-01', '2018-04-22'),
	(1, 1, 2, '2018-04-01', '2018-04-22'),
	(1, 1, 3, '2018-04-01', '2018-04-22'),
	(1, 2, 4, '2018-04-01', '2018-04-22'),
	(1, 2, 5, '2018-04-01', '2018-04-22'),
	(1, 2, 6, '2018-04-01', '2018-04-22'),
	(1, 3, 7, '2018-04-01', '2018-04-22'),
	(1, 3, 8, '2018-04-01', '2018-04-22'),
	(2, 1, 1, '2018-04-01', '2018-04-22'),
	(2, 1, 2, '2018-04-01', '2018-04-22'),
	(2, 1, 3, '2018-04-01', '2018-04-22'),
	(2, 2, 4, '2018-04-01', '2018-04-22'),
	(2, 2, 5, '2018-04-01', '2018-04-22'),
	(2, 2, 6, '2018-04-01', '2018-04-22'),
	(2, 3, 7, '2018-04-01', '2018-04-22'),
	(2, 3, 8, '2018-04-01', '2018-04-22'),
	(2, 3, 8, '2018-04-01', '2018-04-22'),
	(2, 4, 9, '2018-04-01', '2018-04-22'),
	(3, 1, 1, '2018-04-01', '2018-04-22'),
	(3, 1, 2, '2018-04-01', '2018-04-22'),
	(3, 1, 3, '2018-04-01', '2018-04-22'),
	(3, 2, 4, '2018-04-01', '2018-04-22'),
	(3, 2, 5, '2018-04-01', '2018-04-22'),
	(3, 2, 6, '2018-04-01', '2018-04-22'),
	(3, 3, 7, '2018-04-01', '2018-04-22'),
	(3, 3, 8, '2018-04-01', '2018-04-22'),
	(3, 3, 9, '2018-04-01', '2018-04-22'),
	(4, 1, 1, '2018-04-01', '2018-04-22'),
	(4, 1, 2, '2018-04-01', '2018-04-22'),
	(4, 1, 3, '2018-04-01', '2018-04-22'),
	(4, 2, 4, '2018-04-01', '2018-04-22'),
	(4, 2, 5, '2018-04-01', '2018-04-22'),
	(4, 2, 6, '2018-04-01', '2018-04-22'),
	(4, 3, 7, '2018-04-01', '2018-04-22'),
	(4, 3, 8, '2018-04-01', '2018-04-22'),
	(4, 3, 9, '2018-04-01', '2018-04-22'),
	(5, 1, 1, '2018-04-01', '2018-04-22'),
	(5, 1, 2, '2018-04-01', '2018-04-22'),
	(5, 1, 3, '2018-04-01', '2018-04-22'),
	(5, 2, 4, '2018-04-01', '2018-04-22'),
	(5, 2, 5, '2018-04-01', '2018-04-22'),
	(5, 2, 6, '2018-04-01', '2018-04-22'),
	(5, 3, 7, '2018-04-01', '2018-04-22'),
	(5, 3, 8, '2018-04-01', '2018-04-22'),
	(5, 3, 9, '2018-04-01', '2018-04-22'),
	(6, 1, 1, '2018-04-01', '2018-04-22'),
	(6, 1, 2, '2018-04-01', '2018-04-22'),
	(6, 1, 3, '2018-04-01', '2018-04-22'),
	(6, 2, 4, '2018-04-01', '2018-04-22'),
	(6, 2, 5, '2018-04-01', '2018-04-22'),
	(6, 2, 6, '2018-04-01', '2018-04-22'),
	(6, 3, 7, '2018-04-01', '2018-04-22'),
	(6, 3, 8, '2018-04-01', '2018-04-22'),
	(6, 3, 9, '2018-04-01', '2018-04-22'),
	(7, 1, 1, '2018-04-01', '2018-04-22'),
	(7, 1, 2, '2018-04-01', '2018-04-22'),
	(7, 1, 3, '2018-04-01', '2018-04-22'),
	(7, 2, 4, '2018-04-01', '2018-04-22'),
	(7, 2, 5, '2018-04-01', '2018-04-22'),
	(7, 2, 6, '2018-04-01', '2018-04-22'),
	(7, 3, 7, '2018-04-01', '2018-04-22'),
	(7, 3, 8, '2018-04-01', '2018-04-22'),
	(7, 3, 9, '2018-04-01', '2018-04-22')
;

select * from tbl_book_copies

/* DATABASE STORED PROCEDURES - SELECT STATEMENTS */

/* problem number 1 */

CREATE PROCEDURE numberofcopies2 @branch_name NVARCHAR(50) = NULL, @book_title NVARCHAR(50) = NULL
AS

SELECT a1.book_title, a2.no_of_copies, a3.branch_name
	FROM tbl_book a1
	LEFT JOIN tbl_book_copies a2 
	ON a2.book_id = a1.book_id
	LEFT JOIN tbl_library_branch a3 
	ON a2.branch_id = a3.branch_id
		WHERE book_title = ISNULL(@book_title,book_title)
AND branch_name LIKE '%' + ISNULL(@branch_name,branch_name) + '%'
GO


/* problem number 2 */

CREATE PROCEDURE copiesateachbranch @book_title NVARCHAR(50) = NULL
AS

SELECT a1.book_title, a2.no_of_copies, a3.branch_name
	FROM tbl_book a1
	LEFT JOIN tbl_book_copies a2 
	ON a2.book_id = a1.book_id
	LEFT JOIN tbl_library_branch a3 
	ON a2.branch_id = a3.branch_id
	WHERE book_title = ISNULL(@book_title,book_title)
GO

/* problem number 3 */

CREATE PROCEDURE nobookscheckedout
AS

SELECT a1.borrower_name, a2.card_no
FROM tbl_book_loans a2
FULL OUTER JOIN tbl_borrower a1 ON a2.card_no = a1.card_no
WHERE a2.card_no IS NULL
GO

/* problem number 4 */

CREATE PROCEDURE booksdueoncertaindate
AS

SELECT a1.book_title, a4.borrower_name, a4.borrower_address
	FROM tbl_book a1
	INNER JOIN tbl_book_loans a2 ON a2.book_id = a1.book_id
	INNER JOIN tbl_library_branch a3 ON a3.branch_id = a2.branch_id
	INNER JOIN tbl_borrower a4 ON a4.card_no = a2.card_no
	WHERE due_date = '2018-04-22' AND branch_name = 'Sharpstown'
	;


/* problem number 5 */

CREATE PROCEDURE totalbooksloaned
AS

SELECT COUNT (a1.book_id) AS '# of books loaned', a2.branch_name
	FROM tbl_library_branch a2
	INNER JOIN tbl_book_loans a1 ON a2.branch_id = a1.branch_id
	GROUP BY a2.branch_name
	;

/* problem number 6 */

CREATE PROCEDURE morethan5loans
AS

SELECT a1.card_no, a1.borrower_name, a1.borrower_address, COUNT (*)
	FROM tbl_borrower a1, tbl_book_loans a2
	WHERE a1.card_no = a2.card_no
	GROUP BY a1.card_no, a1.borrower_name, a1.borrower_address
	HAVING COUNT(a1.card_no) > 5
	;


/* problem number 7 */
CREATE PROCEDURE copiesofbookbybranch 

SELECT a1.book_title, a2.no_of_copies, a3.branch_name
	FROM tbl_book_authors a4, tbl_book a1, tbl_book_copies a2, tbl_library_branch a3
	WHERE a4.book_id = a1.book_id
	AND a1.book_id = a2.book_id
	AND a2.branch_id = a3.branch_id
	AND a4.book_author = 'Stephen King'
	AND a3.branch_name = 'Central'
	;

