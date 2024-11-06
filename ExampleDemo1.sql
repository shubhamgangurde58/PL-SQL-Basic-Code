
declare 

	salary number;
	bonus number(6,2);
	ha number(6,2);
	
	id2 employeeInfo1.eid%TYPE;
	i number;
	total number;

begin

	select count(eid) into total from employeeInfo1;


	i:=1;

	while i<=total loop

	id2:=i;
	
	select esalary into salary from employeeInfo1 where eid=id2;
	dbms_output.put_line('salary='||salary);

	bonus:=salary*0.15;
	dbms_output.put_line('Bonus='||bonus);

	ha:=salary*0.10;
	dbms_output.put_line('HA='||ha);

	salary:=salary+bonus+ha;
	update employeeInfo1 set esalary = salary where eid=id2;
	dbms_output.put_line('Employee Bonus and HA added!!');
	commit;

	dbms_output.put_line('-------------------------------');

	i:=i+1;
	end loop;

end;
/