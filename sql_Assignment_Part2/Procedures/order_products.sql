CREATE or replace PROCEDURE order_products(IN o_id int,IN u_id int)
   BEGIN
 DECLARE done INT DEFAULT 0;
 DECLARE variant INT;
 DECLARE cur1 CURSOR FOR SELECT variant_id from cart;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

OPEN cur1;

traverse: LOOP
 IF done THEN
 LEAVE traverse;
 END IF;
 FETCH cur1 INTO variant;
	INSERT INTO order_products(order_id,user_id,variant_id) VALUES(o_id,u_id,variant);
 END LOOP;

CALL empty_cart(u_id);

close cur1;
   END
