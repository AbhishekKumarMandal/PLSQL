declare
	a integer:=0;
	b integer:=1;
	n integer;
	i integer:=1;
	s integer;

begin
	n:=&n;
	if(n=1) then
		dbms_ouput.put_line('0');
	elsif(n=2) then
		dbms_output.put_line('0 1');
	else
		dbms_output.put_line('0');
		dbms_output.put_line('1');
		for i in 1..(n-2) loop
			s:=a+b;
			a:=b;
			b:=s;
			dbms_output.put_line(s);
		end loop;
	end if;
end;
/