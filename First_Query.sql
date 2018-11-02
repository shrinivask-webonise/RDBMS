select emp.name,emp.age from emp,dept,works where dept.name="Software" and dept.name="Hardware" and emp.id=works.emp_id and emp.id=works.dept_id;





select emp.name,emp.age from emp where id IN (select emp_id from works,dept where dept.id=2002 and dept.id=2005);
