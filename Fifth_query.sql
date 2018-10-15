select manager_id from dept 
 where budget in (select budget from dept
 where budget>1000000);

