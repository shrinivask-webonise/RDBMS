create table variants(id int NOT NULL PRIMARY KEY,
variant_name varchar(50),
color varchar(50),
size varchar(50),
price double,
product_id int,
FOREIGN KEY (product_id) REFERENCES products(id));


INSERT INTO `variants` (id,`variant_name`, `color`, `size`, `price`, `product_id`) VALUES (701, 'Dell Lattitude 7440', 'black', '13', '80000', '404'), ( 702,'Dell Lattitude 5440', 'Silver', '13', '70000', '404');

INSERT INTO `variants` ( id,`variant_name`, `color`, `size`, `price`, `product_id`) VALUES ( 711,'Samsung', 'black', '32', '18000', '405'), ( 712,'Xiaomi', 'black', '40', '24000', '405');

INSERT INTO `variants` ( id,`variant_name`, `color`, `size`, `price`, `product_id`) VALUES (721, 'Vivo v11', 'red', '5.9', '24000', '406'), ( 722,'Xiaomi Note6', 'blue', '5.8', '18000', '406');
