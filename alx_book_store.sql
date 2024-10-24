CREATE DATABASE IF NOT EXISTS alx_book_store;

--USE THE DATABASE
USE alx_book_store;

--CREATE TABLES
CREATE TABLE Books(book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130),
author_id INT FOREIGN KEY referencing Authors table,
price DOUBLE NOT NULL,
publication_date DATE);

CREATE TABLE Authors(author_id INT Primary Key AUTO_INCREMENT,
author_name VARCHAR(215));

CREATE TABLES Customers(customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(215),
email VARCHAR(215), address TEXT);

CREATE TABLE Orders(order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id [FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)"],
order_date DATE);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

