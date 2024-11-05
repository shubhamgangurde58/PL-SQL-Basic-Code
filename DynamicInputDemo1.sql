
accept s number prompt 'enter the starting number=';
accept e number prompt 'Enter the ending number=';

declare 
	
	i number;
	startno number;
	endno number;	

begin
	startno:=&s;
	endno:=&e;

	for i in startno..endno loop
	
		dbms_output.put_line(i);
	
	end loop;	

end;
/