CREATE TABLE users(
	id int NOT NULL AUTO_INCREMENT,
	name char(50) NOT NULL,
	email varchar(50) UNIQUE,
	password varchar(15),
	user_type_id int,
	PRIMARY KEY(id),
	FOREIGN KEY (user_type_id) references user_types(user_type_id)
);

INSERT INTO `users` ( `name`, `email`, `password`, `user_type_id`) VALUES ( 'Sanjay', 'Sanjay44@gmail.com', '1234', '10'), ('Vijay', 'vijay@gmail.com', '1234', '10');
INSERT INTO `users` ( `name`, `email`, `password`, `user_type_id`) VALUES ( 'Swapni', 'swapnil@gmail.com', '1234', '10'), ( 'kajal', 'kajal@gmail.com', '1234', '10');
INSERT INTO `users` ( `name`, `email`, `password`, `user_type_id`) VALUES ( 'Anup', 'Anup@gmail.com', '1234', '10'), ( 'Hitesh', 'hitesh@gmail.com', '1234', '10');

