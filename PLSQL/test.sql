declare 
 cursor c1 is select usn,name,age from student;
 ssn student.usn%type;
 nam student.name%type;
 ag student.age%type;
begin
  open c1;
  loop
    fetch c1 into ssn,nam,ag;
    exit when c1%notfound;
    insert into stud values(ssn,nam,ag);
  end loop;
  close c1;
end;
/