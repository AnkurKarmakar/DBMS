declare
    a number := 0.00;
begin
    for i in 3 .. 7
    loop
        a := i * i * 3.14;
        insert into area_values(radius,area) values (i,a);
    end loop;
end;
/
select * from area_values;

/*create table area_values(radius number not null, area number(*,2));*/
