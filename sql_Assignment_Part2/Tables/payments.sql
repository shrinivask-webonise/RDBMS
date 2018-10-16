create table payments
(id int PRIMARY KEY,
order_id int,
user_id int,
payment_status varchar(50),
amount double,
payment_date Date,
payment_mode_id int,
discount_id int,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (discount_id) REFERENCES discounts(id),
FOREIGN KEY (payment_mode_id) REFERENCES payment_modes(id)
FOREIGN KEY (order_id) REFERENCES orders(id);
);
