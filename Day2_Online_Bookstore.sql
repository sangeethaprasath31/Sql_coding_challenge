Create database Bookstore;
use Bookstore;

/* •	Create a table Books with columns:
o	BookID → INTEGER, PRIMARY KEY
o	Title → VARCHAR(100), NOT NULL
o	Author → VARCHAR(50), NOT NULL
o	ISBN → VARCHAR(20), UNIQUE
o	Price → DECIMAL(8,2), CHECK(Price > 0)
*/

create table Books (
BookID  INT PRIMARY KEY,
Title VARCHAR(100) NOT NULL,
Author VARCHAR(50) NOT NULL,
ISBN VARCHAR(20) UNIQUE,
Price DECIMAL(8,2), CHECK(Price > 0)
);

/*•	Create a table Orders with columns:
o	OrderID → INTEGER, PRIMARY KEY
o	BookID → INTEGER, FOREIGN KEY REFERENCES Books(BookID)
o	OrderDate → DATE, NOT NULL
o	Quantity → INTEGER, CHECK(Quantity > 0)
*/
drop table Orders;
Create table Orders (
OrderID INT primary Key,
BookID INT, 
OrderDate Date Not null,
Quantity INT Check (Quantity>0),
FOREIGN Key (BookID) references Books(BookID) 
);

-- •	Alter the Books table to add a Default constraint to the ISBN column.
Alter table books Alter column ISBN set default "N/A";

-- INSERT, RETRIEVE & UPDATE with Constraints

insert into Books values (101, 'BooksName1', 'JamesT', 3422345, 46.12);
insert into Books values (102, 'BooksName2', 'JamesA', 3423445, 47.12);
insert into Books values (103, 'BooksName3', 'JamesC', 3423345, 48.12);
insert into Books values (104, 'BooksName4', 'JamesM', 442345, 49.12);
insert into Books values (105, 'BooksName5', 'JamesZ', 542345, 42.12);

select * from Books;

Update Books set Price = 50.01 where BookId = 101;

-- DELETE vs TRUNCATE
delete from Books where Bookid = 101;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Books;
SET FOREIGN_KEY_CHECKS = 1;
