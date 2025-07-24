CREATE DATABASE `bookstore_sales_dashboard`;
USE `bookstore_sales_dashboard`;

CREATE TABLE sales_data (
    id INTEGER PRIMARY KEY,
    customer_name TEXT,
    book_title TEXT,
    genre TEXT,
    price REAL,
    quantity INTEGER,
    country TEXT,
    order_date TEXT
);

INSERT INTO sales_data (id, customer_name, book_title, genre, price, quantity, country, order_date) VALUES
(1, 'Alice Smith', 'Atomic Habits', 'Self-help', 18.00, 1, 'USA', '2024-01-15'),
(2, 'Bob Cruz', 'The Final Empire', 'Fantasy', 12.99, 2, 'Philippines', '2024-02-01'),
(3, 'Clara Lee', 'Clean Code', 'Programming', 32.50, 1, 'South Korea', '2024-03-11'),
(4, 'Dave Tan', 'Deep Work', 'Self-help', 20.00, 1, 'Philippines', '2024-03-18'),
(5, 'Alice Smith', 'Atomic Habits', 'Self-help', 18.00, 3, 'USA', '2024-04-05'),
(6, 'Bob Cruz', 'The Way of Kings', 'Fantasy', 14.99, 1, 'Philippines', '2024-04-09'),
(7, 'Clara Lee', 'The Pragmatic Programmer', 'Programming', 30.00, 1, 'South Korea', '2024-05-01'),
(8, 'Ella Kim', 'Ego is the Enemy', 'Self-help', 17.00, 2, 'South Korea', '2024-05-15'),
(9, 'Alice Smith', 'The 5 AM Club', 'Self-help', 22.00, 1, 'USA', '2024-06-10'),
(10, 'Bob Cruz', 'Mistborn', 'Fantasy', 13.50, 2, 'Philippines', '2024-06-20');

