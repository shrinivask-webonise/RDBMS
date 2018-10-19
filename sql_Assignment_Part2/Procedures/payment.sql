 CREATE or replace PROCEDURE payment(IN u_id int,IN d_id int,IN pay_mode int,IN del_address varchar(100))
   BEGIN
   	DECLARE total int;
    DECLARE pid int;
   	SELECT SUM(total_amount) into total FROM cart;

	insert into payments(user_id,payment_status,amount,payment_date,payment_mode_id,discount_id) values(u_id,"Successful",total,'4/10/2018',pay_mode,d_id);

    SELECT id into pid from payments ORDER BY id DESC LIMIT 1;

    CALL order_procedure(u_id,"Successful",del_address,pid,total,"4/10/2018");
   END
