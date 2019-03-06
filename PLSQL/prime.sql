declare
	n integer;
	i integer;
	flag integer:=1;

begin
	n:=&n;

	for i in 2..(n/2) loop
		if (mod(n,i)=0) then
			flag:=0;
			exit;
		end if;
	if(flag=1) then
		dbms_output.put_line(n||' is prime');
	else
		dbms_output.put_line(n||' is not prime');
	end if;
end;
/