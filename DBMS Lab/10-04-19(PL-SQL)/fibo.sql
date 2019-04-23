declare

f number := 0; 
s number := 1; 
temp number; 
n number; 
i number; 

begin
        n:=&n;

	dbms_output.put_line('Series:'); 

	dbms_output.put_line(f); 
	dbms_output.put_line(s); 

	for i in 2..n 
	loop 
		temp:=f+s; 

f := s; 
s := temp; 

	dbms_output.put_line(temp); 
end loop; 

end;

