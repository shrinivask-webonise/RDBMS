create table carts(id int NOT NULL,
variant_id int PRIMARY KEY,
quantity double,
total_amount double,
user_id int,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (variant_id) REFERENCES variants(id));

