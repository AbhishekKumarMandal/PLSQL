declare
	n integer;
	f integer:=1;
	i integer:=1;

begin
	n:=&n;
	for i in 1..n loop
		f:=f*i;
	end loop;

	dbms_output.put_line(f);
end;
/

-- method 2 
-------------

-- create or replace procedure factorial
-- 	as

-- 	n integer;
-- 	f integer:=1;

-- 	begin
-- 	n:=&n;
-- 	for i in 1..n loop
-- 	 f:=f*i;
-- 	end loop;

-- 	dbms_output.put_line(n||' factorial is: '||f);

-- 	end;
-- 	/
-- --------------------------------------------------------------
--method 3-------------------------------
----------------- fact.sql------------
-- create or replace procedure fact(n in number, f out number) is
-- 	i number;
-- 	begin
-- 		f:=1;
-- 		for i in 1..n loop
-- 			f:=f*i;
-- 		end loop
-- 	end;
-- /
-- --------------------------------------------------------------
-- ------------------to run in sql----------------------------
-- set serveroutput on (press enter)
-- @fact.sql (press enter)
-- variable k number (press enter)
-- execute fact(5,:k); (press enter)
-- printt :k (press enter)
-- -----------------------------------------------------------
--
--
--method 3 here function is defined under declare section itself
-----------------------------------------------------------------

-- declare
-- 	k number;
-- 	j number;
-- 	procedure fact(n in number, f out number ) is
-- 		i number;
-- 		begin
-- 			for i in 1..n loop
-- 				f=f*i;
-- 			end loop;
-- 		end;

-- begin
-- 	k:=&num;
-- 	fact(k,j); --calling of function.
-- 	dbms_output.put_line(k ||' factorial is: '||j);
-- end;
-- /