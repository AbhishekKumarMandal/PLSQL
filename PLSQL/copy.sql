declare
	cursor c1 is select usn, name, dept, age from employee; -- just selecting attributes from table

	-- defining variables with attributes

	eusn employee.usn%type;  --eusn is of type usn of employee table
	ename employee.name%type;
	edept employee.dept%type;
	eage employee.age%type;

begin
	open c1; --opening cursor it's like cursor c1 is pointing to opening of the table.
	loop
		fetch c1 into eusn, ename, edept, eage; -- here c1 contains the values of usn,name,dept,age of employee table and it is 
		exit when c1%notfound;                -- these values into eusn, ename, edept, eage respectively.
		
		--(checking whether c1 reached the end of table employee)
		
		insert into ecopy values(eusn,ename,edept,eage); --finally entering these values into ecopy table.
	end loop;
	close c1;
end;
/