INSERT INTO TABLE Books(book_id, title, author_id, price, publication_date) VALUES(%s,%s,%s,%s,%s);
INSERT INTO TABLE Authors(authot_id, author_name) VALUES(%s,%s);
INSERT INTO TABLE Customers(customer_id, customer_name, email) VALUES (%s,%s,%s);
INSERT INTO TABLE Orders(order_id, customer_id, order_date) VALUES(%s,%s,%s);
INSERT INTO TABLE Order_Details(orderdetailid, order_id, book_id, quantity) VALUES(%s,%s,%s,%s);