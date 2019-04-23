create table STUDENT(RegNo Varchar(6) not null,
 RollNo NUMBER(10) not null,
 Name Varchar(50) not null,
 Address Varchar2(15) not null ,
 PhoneNo Number(10) ,
 YearOfAdm Number(4) not null,
 DeptCode Varchar2(4) not null ,
 Year Number(1) not null,
 BirthDate Date not null);
INSERT INTO STUDENT VALUES(012301,123001 , 'Ashish', 'Jadavpur',24761892,2003,'CSE',3,TO_DATE('01-JUN-1981', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012315,123015 , 'Kamal', 'Kasba',24424987,2003,'CSE',3,TO_DATE('19-SEP-1981', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012424,124024 , 'Ipsita', 'Kaikhali',25739608,2004,'CSE',2,TO_DATE('15-AUG-1982', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012250,122050 , 'Anita', 'Hooghly',36719695,2002,'IT',4,TO_DATE('22-DEC-1980', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012344,123044 , 'Biplab', 'Howrah',NULL,2003,'IT',3,TO_DATE('03-JAN-1982', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012357,123057 , 'Samik', 'Barasat',25426742,2003,'IT',3,TO_DATE('15-JUL-1981', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012419,124019 , 'Srijita', 'Garia',24755655,2004,'EE',2,TO_DATE('25-OCT-1982', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012427,124027 , 'Saibal', 'Garia',24753306,2004,'ECE',2,TO_DATE('22-MAR-1983', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012236,122036 , 'Santanu', 'DumDum',NULL,2002,'ECE',4,TO_DATE('11-DEC-1980', 'DD-MON-YYYY'));
INSERT INTO STUDENT VALUES(012349,123049 , 'Gita', 'Kasba',24428682,2003,'MCA',3,TO_DATE('14-APR-1981', 'DD-MON-YYYY'));	

select * from STUDENT;
select Name,Address,YearOfAdm from STUDENT;
select Name,Year from STUDENT where DeptCode='CSE';
select Name,DeptCode from STUDENT where Year=3;
SELECT Name from STUDENT where Name like '_a%';
select Name from student order by Name;
select Name, Address from student where  YearOfAdm=2004;
select Name from STUDENT where PhoneNo is NULL;
