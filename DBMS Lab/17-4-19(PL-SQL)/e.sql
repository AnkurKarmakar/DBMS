set serveroutput on;
DECLARE
-- declare variables for first_name and last_name fetched from the employees table
 FFACULTYCODE VARCHAR2(4);
 FFACULTYNAME VARCHAR2(15);
 FSALARY NUMBER(8,2);
 rowcount NUMBER;


-- declare a cursor to fetch data from a row (employee 120) in the employees table
  CURSOR cursor1 IS SELECT  FACULTYCODE,FACULTYNAME,SALARY FROM (SELECT  * FROM faculty ORDER BY SALARY DESC) WHERE rownum<=3 ORDER BY Salary ;

BEGIN
-- start the processing with cursor1
  OPEN cursor1; -- open cursor1 before fetching
  DBMS_OUTPUT.PUT_LINE( '---------- cursor 1-----------------' );
  LOOP
    FETCH cursor1 INTO FFACULTYCODE,FFACULTYNAME,FSALARY; -- fetches 2 columns into variables
-- check the cursor attribute NOTFOUND for the end of data
    EXIT WHEN cursor1%NOTFOUND;
-- display the last name and job ID for each record (row) fetched
    DBMS_OUTPUT.PUT_LINE( RPAD(FFACULTYCODE, 25, ' ') || RPAD(FFACULTYNAME,25,' ') || FSALARY);
  END LOOP;
  rowcount := cursor1%ROWCOUNT;
  DBMS_OUTPUT.PUT_LINE('The number of rows fetched is ' || rowcount );
  CLOSE cursor1;
END;
/
