create table variants(id int NOT NULL PRIMARY KEY,
color varchar(50),
size varchar(50),
price double,
product_id int,
FOREIGN KEY (product_id) REFERENCES products(id));


INSERT INTO `variants` (`varient_name`, `color`, `size`, `price`, `product_id`) VALUES ( 'Dell Lattitude 7440', 'black', '13', '80000', '211'), ( 'Dell Lattitude 5440', 'Silver', '13', '70000', '212');

INSERT INTO `variants` ( `varient_name`, `color`, `size`, `price`, `product_id`) VALUES ( 'Samsung', 'black', '32', '18000', '111'), ( 'Xiaomi', 'black', '40', '24000', '112');

INSERT INTO `variants` ( `varient_name`, `color`, `size`, `price`, `product_id`) VALUES ( 'Vivo v11', 'red', '5.9', '24000', '311'), ( 'Xiaomi Note6', 'blue', '5.8', '18000', '312');
