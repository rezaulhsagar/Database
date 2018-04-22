declare
    cursor s is
    select name from student;
    type arr is varray (31) of student.name%type;
    nlist arr := arr();
    counter integer := 0;
    
begin
    for n in s loop
        counter := counter + 1;
        nlist.extend;
        nlist(counter) := n.name;
        dbms_output.put_line(nlist(counter));
    end loop;
end;