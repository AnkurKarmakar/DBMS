DECLARE
-- declare variables for first_name and last_name fetched from the employees table
 DDEPTCODE VARCHAR2(4);
 DDEPTNAME VARCHAR2(15);
 DHOD VARCHAR2(4);
 rowcount NUMBER;


-- declare a cursor to fetch data from a row (employee 120) in the employees table
  CURSOR cursor1 IS
    SELECT DEPTCODE,DEPTNAME,HOD FROM DEPARTMENT;

BEGIN
-- start the processing with cursor1
  OPEN cursor1; -- open cursor1 before fetching
  DBMS_OUTPUT.PUT_LINE( '---------- cursor 1-----------------' );
  LOOP
    FETCH cursor1 INTO DDEPTCODE,DDEPTNAME,DHOD; -- fetches 2 columns into variables
-- check the cursor attribute NOTFOUND for the end of data
    EXIT WHEN cursor1%NOTFOUND;
-- display the last name and job ID for each record (row) fetched
    DBMS_OUTPUT.PUT_LINE( RPAD(DDEPTCODE, 25, ' ') || RPAD(DDEPTNAME,25,' ') || DHOD);
  END LOOP;
  rowcount := cursor1%ROWCOUNT;
  DBMS_OUTPUT.PUT_LINE('The number of rows fetched is ' || rowcount );
  CLOSE cursor1;
END;
/
