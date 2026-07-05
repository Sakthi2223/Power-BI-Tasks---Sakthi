CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);
Select * from emp

CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);

select * from dept



INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');

select * from emp

select * from dept




-----List all the empl whose comm is null
select * from emp
where comm is null;
-----------

--------select * from emp
where manager is null;---

----------List all the salesmen in Dept 30
Select* from emp
Where job = 'SALESMAN'
and deptno = 30;-------

-------------List all the salesmen in Dept 30 having salary greater than 1500.
select * from emp
where job = 'SALESMAN'
and deptno = 30
and Sal > 1500;-----

---------------List all the employees whose name starts with 'S' or 'A'
select * from emp
where ename like 'S%' or ename like 'A%';---------

----------------List all the employees except those working in Dept 10 & 20.
select * from emp
where deptno not in(10,20);--------

-------------=List the employees whose name does not start with 'S'
select * from emp
where not ename LIKE 'S%';------

---------------------*
select * from emp
where deptno = '10'
and job = 'Manager' is not null;--------------*

------------List all the employees whose commission is NULL and working as Clerk
select * from emp
where comm is null
and job = 'CLERK';------


select * from emp
where job = 'SALESMAN'
and deptno = 30
and sal > 2450;
----------------------List all the analysts in Dept 20 having salary greater than 2500.
select * from emp
where job = 'ANALYST'
and deptno = 20
and sal > 2500;--------------

------------List all the employees whose name starts with 'M' or 'J'
select * from emp
where ename like 'M%'
or ename like 'J%';----------

---------------List all the employees with annual salary except those working in Dept 30
select ename, deptno, sal,
sal * 12 as Annual_salary
from emp
where deptno <> 30;-----------

---------------List the employees whose name does not end with 'ES' or 'R
select * from emp
where ename NOT like '%ES'
AND ename NOT like '%R';-----
------Display all the Salesmen having 'E' as the last but one character in ENAME and salary having exactly 4 digits.
select * from emp
where job = 'SALESMAN'
AND ename like '%E_'
AND sal >1000
AND sal <10000;---------------

------------Display all the employees who joined after year 1981.
select * from emp
where extract (year from hiredate) > 1981;--------

------------Display all the employees who joined in February.
select * from emp
where extract (month from hiredate) =2;------------

----List the employees who are not working as Managers and Clerks in Dept 10 and 20 with salary between 1000 and 3000.
select * from emp
where job Not in('MANAGER','CLERK')
AND deptno in(10, 20)
AND sal between 1000 and 3000;-----











