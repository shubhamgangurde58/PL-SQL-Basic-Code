declare 

	a number;
	b number;
	c number;
	d number;
	e number;
	f number;

begin

	a:=10;
	b:=5;
	c:=a+b;
	d:=a-b;
	e:=a*b;
	f:=a/b;


	dbms_output.put_line('Addition='||c);
	
	dbms_output.put_line('Subtraction='||d);

	dbms_output.put_line('Multiplication='||e);

	dbms_output.put_line('Division='||f);

end;
/