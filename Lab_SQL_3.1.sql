-- LAB 3.1

-- Activity 1

use sakila;

-- 1. Drop column picture from staff.

ALTER TABLE sakila.staff
DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT *
from customer
WHERE first_name = 'tammy'; -- Get Tammy's information from the customer table

INSERT INTO staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update) 
VALUES
('3','Tammy', 'Sanders', 79, 'n/a', 1, 1, 'Tammy', 'n/a', now()); -- Insert new values into staff table

SELECT * FROM sakila.staff; -- Confirm that she has been added correctly to the table

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

SELECT customer_id FROM sakila.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

SELECT film_id FROM sakila.film
WHERE title = 'Academy Dinosaur';

SELECT inventory_id FROM sakila.inventory
WHERE film_id = '1';

SELECT * FROM staff
WHERE first_name = 'Mike';

INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id, last_update) 
VALUES
(now(), 1, 130, 1, now()); 

SELECT * FROM rental;
DESC rental;

###

-- Activity 2

-- 1. Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.

-- 2. Define primary keys and foreign keys for the new database.

-- SEE PDF SAKILA_UPDATED IN REPO

