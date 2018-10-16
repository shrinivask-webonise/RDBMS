CREATE TABLE order_products
(order_id int,
 product_id int,
 variant_id int,
 user_id int,
 FOREIGN KEY (order_id) REFERENCES orders(id),
 FOREIGN KEY (product_id) REFERENCES products(id),
 FOREIGN KEY (user_id) REFERENCES users(id),
 FOREIGN KEY (variant_id) REFERENCES variants(id)
);
