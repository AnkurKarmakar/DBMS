CREATE VIEW FACULTYCOUNT as SELECT DEPTCODE,COUNT(*) AS TOTAL  FROM FACULTY GROUP BY DEPTCODE;
select deptcode from facultycount where total= (select max(total) from facultycount);
select facultyname from faculty where deptcode = (select deptcode from facultycount where total= (select max(total) from facultycount));


CREATE VIEW V_STD as SELECT * FROM student;
select * from v_std;
INSERT INTO v_std VALUES(352301,123056 , 'Dhiraj', 'Checkpost',24765892,2016,'CSE',3,TO_DATE('01-JUN-1981', 'DD-MON-YYYY'),25739607);
select * from v_std;
select * from student;
update v_std set address='SectorV' where name = 'Dhiraj';



CREATE VIEW V_STD2 as SELECT RegNo, Name, Year, Deptcode FROM student;
INSERT INTO v_std2 VALUES(12309, 'Bakshi', 4,'CSE');
update v_std2 set DEPTCODE='IT' where name = 'Kamal';
delete from v_std2 where year = 4;


CREATE VIEW V_FACULTY2 AS SELECT S. FACULTYNAME, S.DEPTCODE, F.HOD FROM FACULTY S, DEPARTMENT F WHERE S.DEPTCODE= F.DEPTCODE;
INSERT INTO v_faculty2 VALUES('Mousumi','CSE','AK');
update v_faculty2 set DEPTCODE='IT' where facultyname = 'AK';
