declare
	n number;
	rem number;
	k number;
	sum number:=0;

begin:
	n=&n;
	k:=n;
	while(n>0) loop
		rem:=mod(n,10);
		sum:=(sum*10)+rem;
		n:=trunc(n/10);
	end loop;

	if(k=sum) then
		dbms_output.put_line(k||'is palindrome');
	else
		dbms_output.put_line(k||'is not palindrome');

	end if;
end;
/