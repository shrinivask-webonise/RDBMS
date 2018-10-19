CREATE or replace PROCEDURE order(IN u_id int,IN ord_status varchar(30),IN delvr_address varchar(100),IN pay_id int,IN amt double,IN dt varchar(40))
   BEGIN

     DECLARE o_id int;
     Declare var_id int;
   	INSERT INTO orders(user_id,order_status,delivery_address,payment_id,amount,order_date) VALUES(u_id,ord_status,delvr_address,pay_id,amt,dt);

SELECT id into o_id from orders ORDER BY id DESC LIMIT 1;

update payments set order_id= o_id where id=pay_id;

call order_products_procedure(o_id,u_id);

   END
