
declare

	i number;
	salary employeeinfo.esalary%TYPE;
	bonus number(6,2);
	ha number(6,2);
	totalno employeeinfo.eid%TYPE;

begin

	select count(eid) into totalno from employeeinfo ;
	
	i:=1;
	while i<=totalno loop

	select esalary into salary from employeeinfo where eid=i;
	dbms_output.put_line('salary:='||salary);

	bonus:=salary*0.15;
	dbms_output.put_line('Bonus:='||bonus);

	ha:=salary*0.10;
	dbms_output.put_line('ha:='||ha);
	
	salary:=salary+bonus+ha;
	dbms_output.put_line('update salary='||salary);
	
	update employeeinfo set esalary=salary where eid=i;
	commit;
	
	dbms_output.put_line('Employee Donus and HA added');
	dbms_output.put_line('---------------------------');
	i:=i+1;
	end loop;

end;
/