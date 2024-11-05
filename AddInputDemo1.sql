declare 

	a number;
	b number;
	c number;
	d number;
	e number;
	f number;

begin

	a:=&a;
	b:=&b;
	c:=a+b;
	d:=a-b;
	e:=a*b;
	f:=a/b;

	dbms_output.put_line('Addition='||c);	

	dbms_output.put_line('subtraction='||d);

	dbms_output.put_line('multiplication='||e);

	dbms_output.put_line('Division='||f);


end;
/