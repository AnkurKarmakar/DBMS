set serveroutput on;
DECLARE

 FFACULTYCODE VARCHAR2(4);
 FFACULTYNAME VARCHAR2(15);
 FSALARY NUMBER(8,2);
 rowcount NUMBER;



  CURSOR cursor1 IS select FACULTYCODE,FACULTYNAME,SALARY from faculty;

BEGIN

  OPEN cursor1; 
  DBMS_OUTPUT.PUT_LINE( '---------- cursor 1-----------------' );
  LOOP
    DELETE FROM FACULTY WHERE SALARY>25000;
    FETCH cursor1 INTO FFACULTYCODE,FFACULTYNAME,FSALARY; 

    EXIT WHEN cursor1%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE( RPAD(FFACULTYCODE, 25, ' ') || RPAD(FFACULTYNAME,25,' ') || FSALARY);
  END LOOP;
  rowcount := cursor1%ROWCOUNT;
  DBMS_OUTPUT.PUT_LINE('The number of rows fetched is ' || rowcount );
  CLOSE cursor1;
END;
/
