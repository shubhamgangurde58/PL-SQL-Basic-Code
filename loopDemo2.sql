
declare 
	i number;
	a number;
	b number;

begin

	i:=a;
	a:=1;
	b:=10;
	
	while i<=b loop
	
		dbms_output.put_line(i);
		i:=i+1;
	end loop;
end;
/