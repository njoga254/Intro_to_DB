CREATE DATABASE IF NOT EXISTS alx_book_store;

--USE THE DATABASE
USE alx_book_store;

--CREATE TABLES
CREATE TABLE Books(book_id INT AUTO_INCREMENT Primary Key,
title VARCHAR(130),
author_id INT Foreign Key referencing Authors table,
price DOUBLE NOT NULL,
publication_date DATE);

CREATE TABLE Authors(author_id INT Primary Key AUTO_INCREMENT,
author_name VARCHAR(215));

CREATE TABLES Customers(customer_id INT Primary Key AUTO_INCREMENT,
customer_name VARCHAR(215),
email VARCHAR(215), address TEXT);

CREATE TABLE Orders(order_id INT Primary Key AUTO_INCREMENT,
customer_id Foreign Key referencing Customers table,
order_date DATE);

CREATE TABLE Order_Details(orderdetailid INT Primary Key AUTO_INCREMENT,
order_id INT Foreign Key referencing Orders table,
book_id INT Foreign Key referencing Books table,
quantity DOUBLE);
