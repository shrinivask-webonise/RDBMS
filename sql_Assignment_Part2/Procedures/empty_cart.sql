CREATE or replace PROCEDURE empty_cart(IN u_id int)
  BEGIN

  Delete from carts where user_id=u_id;

  END