DECLARE
-- declare variables for first_name and last_name fetched from the employees table
 DDEPTCODE VARCHAR2(4);
 DDEPTNAME VARCHAR2(15);
 DHOD VARCHAR2(4);


-- declare a cursor to fetch data from a row (employee 120) in the employees table
  CURSOR cursor1 IS
    SELECT DEPTCODE,DEPTNAME,HOD FROM DEPARTMENT;

BEGIN
  OPEN cursor1; -- open the cursor
  FETCH cursor1 INTO DDEPTCODE,DDEPTNAME,DHOD; -- fetch data into local variables
  DBMS_OUTPUT.PUT_LINE('Department Code= '||DDEPTCODE||' Department Name= '||DDEPTNAME||' Department HOD= '||DHOD);
  CLOSE cursor1; -- close the cursor
END;
/
