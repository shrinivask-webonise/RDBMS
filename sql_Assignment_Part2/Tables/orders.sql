create table orders
(id int PRIMARY KEY,
user_id int,
order_status varchar(20),
delivery_address varchar(60),
payment_id int,
amount double,
order_date Date,
FOREIGN KEY (payment_id) REFERENCES payments(id),
FOREIGN KEY (user_id) REFERENCES users(id)
);
