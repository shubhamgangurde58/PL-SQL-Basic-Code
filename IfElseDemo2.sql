accept x number prompt 'Enter the first no:=';
accept y number prompt 'Enter the second no:=';

declare 

	firstno number;
	secondno number;

begin

	firstno :=&x;
	secondno :=&y;

	if firstno > secondno then 
		dbms_output.put_line('First no is Big');
	else
		dbms_output.put_line('Second no is Big');
	end if;

end;
/