alter table SUBJECT add DEPARTMENT VARCHAR2(3);
ALTER TABLE SUBJECT ADD YEAR NUMBER(4);
INSERT INTO SUBJECT ( DEPARTMENT, YEAR ) VALUES 
('CSE', 2014 ),
('ECE', 2015 ),
('MCA' , 2016),
('PHY', 2016),
('MTHS', 2016),
('CSE' , 2017);

update subject set year= 2016;
update subject set department= 'CSE';
update faculty set salary = salary + 50000 where FACULTYCODE = 'FHH';
SELECT MAX(SALARY) FROM FACULTY; 
