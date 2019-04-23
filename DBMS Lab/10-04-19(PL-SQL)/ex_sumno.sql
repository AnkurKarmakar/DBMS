declare
	n number;
	i number:=1;
	s number:=0;
	r number;
 
begin
	n:=&n;
	
	while i<n
	loop
		s:=s+i;
		i:=i+1;
	end loop;
 
	dbms_output.put_line('sum is '||s);
 
end;
