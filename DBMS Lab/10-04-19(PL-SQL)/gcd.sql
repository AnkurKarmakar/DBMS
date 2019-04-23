declare
    u number;
    v number;
    r number := 0;
begin
    u:=&u;
    v:=&v;
    while v != 0
    loop
        r := mod(u,v);
        u := v;
        v := r;
    end loop;
    dbms_output.put_line('HCF = ' || u);
end;
