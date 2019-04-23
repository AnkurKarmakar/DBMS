DECLARE
    i NUMBER;
    j NUMBER;
BEGIN
dbms_output.Put_line('The prime numbers are:');
	dbms_output.new_line;
    i := 100;
    LOOP
        j := 2;
        LOOP
            EXIT WHEN( ( MOD(i, j) = 0 )
                        OR ( j = i ) );
            j := j + 1;
        END LOOP;
        IF( j = i )THEN
          dbms_output.Put(i||'   ');							   
        END IF;
        i := i + 1;
        exit WHEN i = 400;
    END LOOP;
	dbms_output.new_line;
END;
