# 📊 Bookstore Sales Analytics

## 🧠 Project Overview

A beginner SQL project where I analyzed fictional bookstore sales data using real-world analyst techniques such as filtering, aggregation, sorting, and reporting. The goal was to uncover insights on customer behavior, best-selling genres, and revenue distribution.

---

## 🛠️ Skills Practiced

- `SELECT`, `WHERE`, `AND`, `OR`, `NOT`, `DISTINCT`
- Pattern matching with `LIKE`, `%`, `_`
- Aggregations: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- Grouping and filtering: `GROUP BY`, `HAVING`
- Sorting: `ORDER BY`, `LIMIT`
- Aliasing for reporting and readability

---

## 🗂️ Dataset

- **Database:** `bookstore_sales_dashboard`
- **Table:** `sales_data`

The dataset contains fictional records of book purchases with the following columns:
- `id` INTEGER PRIMARY KEY
- `customer_name` VARCHAR(50)
- `book_title` VARCHAR(50)
- `genre` VARCHAR(50)
- `price` DECIMAL
- `quantity` INTEGER
- `country` VARCHAR(50)
- `order_date` DATE

---

## 🔗 Queries

### 🔎 Question 1: What are the books that are sold in the Philippines?

```sql
SELECT book_title, genre, price, country
FROM bookstore_sales_dashboard.sales_data
WHERE country = 'Philippines';
```

### 💡 Insight:

The books that are sold in the Philippines are the 	following:
- *The Final Empire*, a Fantasy genre, which retails 	for $12.99;
- *Deep Work*, a Self-Help book, which retails for $20;
- *The Way of Kings*, a Fantasy, which retails for $14.99; and lastly,
-  *Mistborn*, another Fantasy, which retails for $13.5.

  As observed, The books sold in the Philippines are commonly in Fantasy genre.


<br>


### 🔎 Question 2: What are the books that the title starts with "The"?

```sql
SELECT book_title
FROM bookstore_sales_dashboard.sales_data
WHERE book_title LIKE 'The%';
```

### 💡 Insight: 

The book titles that starts with "The" are the following:
- *The Final Empire*,
- *The Way of Kings*,
- *The Pragmatic 	Programmer*, and the
- *The 5 AM Club*.


<br>


### 🔎 Question 3: What are the self-help books that cost more than $18?

```sql
SELECT book_title, genre, price
FROM bookstore_sales_dashboard.sales_data
WHERE genre = 'Self-Help' AND price > 18;
```

### 💡 Insight: 

The self-help books that cost more than $18 are the 	following: 
- *Deep Work*, which retails for $20; and
- *The 5 AM Club*, which retails for $22.


<br>


### 🔎 Question 4:  Which books are not in fantasy genre?

```sql
FROM bookstore_sales_dashboard.sales_data
WHERE genre != 'Fantasy'
GROUP BY genre;
```

### 💡 Insight: 

The following books are those which are not in the fantasy 	genre: 

The Programming books: 
- *Clean Code*, which retails for $32.5, and
- *The Pragmatic Programmer", which 	retails for $30;

The Self-help books: 
- *Atomic Habits*, which 	retails for $18,
- *Deep Work*, which retails for $20,
- *Ego is the Enemy*, which retails for $17, 	and
- *The 5 AM Club*, which retails for $22.


<br>


### 🔎 Question 5:  What are the total revenue per genre?

```sql
SELECT genre, SUM(price \* quantity) AS total\_revenue
FROM bookstore_sales_dashboard.sales_data
GROUP BY genre;
```

### 💡 Insight: 

The total revenue per genre are the following: 

Self-help books 
- total revenue of $148.

Fantasy books 
- have a total revenue of $67.97.

Programming books
- total revenue of $62.5.

In conclusion, the genre that garnered the most	revenue is the self-help books.


<br>


### 🔎 Question 6:  How many times each customer made a purchase?

```sql
SELECT customer\_name, COUNT(quantity) as 	total\_sale\_per\_customer, genre
FROM bookstore_sales_dashboard.sales_data
GROUP BY customer_name, genre;
```

### 💡 Insight: 

The bookstore have five customers in total. 

Alice Smith 
- 5 purchases
- With this five purchases, most are *Self-help* books (indicating that they might have a preference for the said genre.)

Bob Cruz 
-  5 purchases
-  With this five purchases, most are *Fantasy* books (indicating that they might have a preference for the said genre.)

Clara Lee 
-  2 purchases
-  With this two purchases, most are *Programming* books (indicating that they might have a preference for the said genre.)

Ella Kim
-  2 purchase
-  With this two purchase, which is a *Self-help* book (indicating that they might have a preference for the said genre.)

Dave Tan
-  1 purchase
-  With this one purchase, which is a *Self-help* book (indicating that they might have a preference for the said genre.)


<br>


### 🔎 Question 6:  What are the average book price per genre?

```sql
SELECT genre, AVG(price)
FROM bookstore_sales_dashboard.sales_data
GROUP BY genre;
```

### 💡 Insight: 

The average book price per genre are the following: 

Self-help books:
- average price of $19.

Fantasy books:
- average price of $13.83.

Programming books: 
- average price of $31.25.


<br>


### 🔎 Question 7:  Which among the genres have the average price of over $20?

```sql
SELECT genre, AVG(price) AS avg_price
FROM bookstore_sales_dashboard.sales_data
GROUP BY genre
HAVING avg_price > 20;
```

### 💡 Insight: 
<br>
Among the following genres that the bookstore caters, only one genre have the average price of over $20, which is the Programming.


<br>


### 🔎 Question 8:  Which are the top 3 most expensive books in the bookstore?

```sql
SELECT book_title, genre, price 
FROM bookstore_sales_dashboard.sales_data
ORDER BY price DESC
LIMIT 3;
```

### 💡 Insight: 

Above all the books available in the bookstore, the 3 most expensive books are the following:
- *Clean Code*, Programming, $32.5
- *The Pragmatic Programmer*, Programming, $30
- *The 5 AM Club*, Self-help, $22

In conclusion, the common most expensive books are the Programming books. 


<br>


### 🔎 Question 9:  Which are the top 5 cheapest books in the bookstore?

```sql
SELECT book_title, genre, price
FROM bookstore_sales_dashboard.sales_data
ORDER BY price ASC
LIMIT 5;
```

### 💡 Insight: 

Above all the books available in the bookstore, the 5 cheapest books are the following:
- *The Final Empire*, Fantasy, $12.99
- *Mistborn*, Fantasy, $13.5
- *The Way of Kings*, Fantasy, $14.99
- *Ego is the Enemy*, Self-help, $17
- *Atomic Habits*, Self-help, $18

In conclusion, the common most cheapest books are the Fantasy books. 


<br>


### 🔎 Question 10:  How many orders are there per book?

```sql
SELECT book_title, SUM(quantity)
FROM bookstore_sales_dashboard.sales_data
GROUP BY book_title
ORDER BY SUM(quantity) DESC;
```

### 💡 Insight: 

The following are the orders sorted by quantity (most to least):

*Atomic Habits*
- 4 Total Orders
  
*The Final Empire*
- 2 Total Orders
  
*Ego is the Enemy*
- 2 Total Orders
  
*Mistborn*
- 2 Total Orders
  
*Clean Code*
- 1 Total Order
  
*Deep Work*
- 1 Total Order
  
*The Way of Kings*
- 1 Total Order
  
*The Pragmatic Programmer*
- 1 Total Order
  
*The 5 AM Club*
- 1 Total Order

In conclusion, the most purchased book is the *Atomic Habits*.


<br>


### 📑 Dashboard 1:  Books SQL Dashboard

*This is to showcase books information such as the ff:
- Book Title
- Book Genre
- Book Price
- Country which it is available/being sold

```sql
| Book Title               | Genre        | Book Price | Country      |
|--------------------------|--------------|------------|--------------|
| Atomic Habits           | Self-help    | 18         | USA          |
| The Final Empire        | Fantasy      | 12.99      | Philippines  |
| Clean Code              | Programming  | 32.5       | South Korea  |
| Deep Work               | Self-help    | 20         | Philippines  |
| Atomic Habits           | Self-help    | 18         | USA          |
| The Way of Kings        | Fantasy      | 14.99      | Philippines  |
| The Pragmatic Programmer| Programming  | 30         | South Korea  |
| Ego is the Enemy        | Self-help    | 17         | South Korea  |
| The 5 AM Club           | Self-help    | 22         | USA          |
| Mistborn                | Fantasy      | 13.5       | Philippines  |
```


<br>


### 📑 Dashboard 2:  Customer Order SQL Dashboard

*This is to showcase customer order information such as the ff:
- Customer Name
- Book Title
- Book Genre
- Book Price
- Quantities Purchased by the customer
- Order Date

```sql
| Customer Name | Book Title              | Genre        | Book Price | Country        |
|---------------|--------------------------|--------------|------------|----------------|
| Alice Smith   | Atomic Habits           | Self-help    | 18         | USA            |
| Alice Smith   | Atomic Habits           | Self-help    | 18         | USA            |
| Alice Smith   | The 5 AM Club           | Self-help    | 22         | USA            |
| Bob Cruz      | The Final Empire        | Fantasy      | 12.99      | Philippines    |
| Bob Cruz      | The Way of Kings        | Fantasy      | 14.99      | Philippines    |
| Bob Cruz      | Mistborn                | Fantasy      | 13.5       | Philippines    |
| Clara Lee     | Clean Code              | Programming  | 32.5       | South Korea    |
| Clara Lee     | The Pragmatic Programmer| Programming  | 30         | South Korea    |
| Dave Tan      | Deep Work               | Self-help    | 20         | Philippines    |
| Ella Kim      | Ego is the Enemy        | Self-help    | 17         | South Korea    |
```

---

## 📌 Notes
This project simulates real-world data exploration and reporting for a bookstore. It showcases the core SQL techniques used by data analysts to investigate trends, customer behavior, and sales performance.



