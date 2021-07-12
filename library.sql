-- for inserting data in dtabase

INSERT INTO `liabraries` (`id`, `name`, `details`) 
VALUES ('1', 'Academic', 'schools, colleges and universities');



-- creation of views 
View1: 

-- create view to select the name and category of books published in 2017 .

CREATE VIEW booksINyear AS
SELECT C.name FROM categories as C
JOIN books_has_categories as BC
	ON BC.fk_categories_id = C.id
JOIN books as B
	ON B.id = BC.fk_books_id
WHERE B.publication_year = 2017

View2: 

create view of books which are in public liabrary .

CREATE VIEW publicbooks AS
SELECT name
FROM books
WHERE id IN (SELECT fk_books_id
             FROM liabraries_has_books 
             WHERE fk_liabraries_id IN(SELECT id
										FROM liabraries
                                         WHERE name = 'public')
            )


-- start of queryies 

-- Query1
-- Select the name of book and year published in 2017 

SELECT publication_year, name
FROM books
WHERE publication_year = "2017"

-- Query2

-- select the name and category of books published in 2017 .

-- with join 

SELECT C.name FROM categories as C
JOIN books_has_categories as BC
	ON BC.fk_categories_id = C.id
JOIN books as B
	ON B.id = BC.fk_books_id
WHERE B.publication_year = 2017

-- with IN 


SELECT name FROM categories WHERE id in (
    SELECT `fk_categories_id` from books_has_categories where `fk_books_id` in (
            SELECT id FROM books WHERE publication_year = 2017
    )
);

-- Query 3
-- select the books published in 2010 in decending order  

SELECT name
FROM books
WHERE publication_year = 2010
GROUP BY id DESC


-- Query 4
-- count the number of categories we have in table

SELECT COUNT(id)
FROM categories

-- Query 5

-- select the customer name in public liabrary 

SELECT name
FROM customer
WHERE fk_liabraries_id IN(
SELECT id
FROM liabraries
WHERE name = "public")

-- Query 6
-- select the customers living in paris 

SELECT name
FROM customer 
WHERE address LIKE '%paris%'


-- Query 7
-- select the books in public liabrary .

SELECT name
FROM books
WHERE id IN (SELECT fk_books_id
             FROM liabraries_has_books 
             WHERE fk_liabraries_id IN(SELECT id
										FROM liabraries
                                         WHERE name = 'public')
)

-- Query 8
-- Books name having name life in it with capital letters 

SELECT upper(name)
FROM books
WHERE name LIKE '%Life%'

-- Query 9
-- select customer name in lowercase living in orléans .

SELECT Lower(name)
FROM customer 
WHERE address LIKE '%Orléans%'

-- Query 10
-- select the books without auther name

SELECT name
FROM books
WHERE author_name IS NULL


