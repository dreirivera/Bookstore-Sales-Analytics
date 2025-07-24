SELECT * 
FROM bookstore_sales_dashboard.sales_data;

# Beginner SELECT & Filtering (WHERE, AND, OR, NOT, LIKE)

-- Find all books sold in the Philippines --

SELECT book_title, genre, price, country
FROM bookstore_sales_dashboard.sales_data
WHERE country = 'Philippines';

--  Find books where the title starts with “The” --

SELECT book_title
FROM bookstore_sales_dashboard.sales_data
WHERE book_title LIKE 'The%';

-- Get all Self-help books that cost more than 18

SELECT book_title, genre, price
FROM bookstore_sales_dashboard.sales_data
WHERE genre = 'Self-Help' AND price > 18;

-- Get all rows where the genre is not ‘Fantasy’

SELECT book_title, genre, price
FROM bookstore_sales_dashboard.sales_data
WHERE genre != 'Fantasy';


# Aggregations (GROUP BY, COUNT, AVG, SUM, HAVING)

-- Find the total revenue per genre

SELECT genre, SUM(price * quantity) AS total_revenue
FROM bookstore_sales_dashboard.sales_data
GROUP BY genre;

-- Count how many times each customer made a purchase

SELECT customer_name, SUM(quantity) as total_sale_per_customer, genre
FROM bookstore_sales_dashboard.sales_data
GROUP BY customer_name, genre;

--  Find the average book price per genre

SELECT genre, AVG(price)
FROM bookstore_sales_dashboard.sales_data
GROUP BY genre;

-- Show only genres where average price is over $20

SELECT genre, AVG(price) AS avg_price
FROM bookstore_sales_dashboard.sales_data
GROUP BY genre
HAVING avg_price > 20;


# Sorting and Limiting Results

-- Show the top 3 most expensive books

SELECT book_title, genre, price 
FROM bookstore_sales_dashboard.sales_data
ORDER BY price DESC
LIMIT 3;

-- Show the cheapest 5 books

SELECT book_title, genre, price
FROM bookstore_sales_dashboard.sales_data
ORDER BY price ASC
LIMIT 5;

-- List all orders sorted by quantity (most to least) (DI KO PA TO NAA-ADD)

SELECT book_title, SUM(quantity)
FROM bookstore_sales_dashboard.sales_data
GROUP BY book_title
ORDER BY SUM(quantity) DESC;


# Aliasing for Reporting

-- Rename columns to display like a dashboard

SELECT book_title AS "Book Title", genre AS "Genre", price AS "Book Price", country AS "Country"
FROM bookstore_sales_dashboard.sales_data;


-- -- Rename columns to display like a dashboard (Customer Order)

SELECT customer_name AS "Customer Name", book_title AS "Book Title", genre AS "Genre", price AS "Book Price", quantity as "Quantities Purchased", order_date
FROM bookstore_sales_dashboard.sales_data
ORDER BY customer_name;