CREATE OR REPLACE PROCEDURE myProcedure1(id IN number,name IN varchar)

IS

BEGIN

	insert into mytable values(id,name);

END myProcedure1;
/