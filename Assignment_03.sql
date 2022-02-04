-- 1 Display all the information of the EMP table?
--solution_1
select * from emp
order by sal;
--solution_1.1
select empno,ename,sal,job,mgr,hiredate,comm,deptno,branchno from emp
order by sal;

--2	 Display unique Jobs from EMP table?	
SELECT DISTINCT job from emp
order by job;

--3	 List the emps in the asc order of their Salaries?	
SELECT empno,ename,sal,job from emp
order by sal asc;
--solution_3.1
SELECT empno,ename,sal,job,mgr,hiredate,comm,deptno,branchno from emp
order by sal asc;

--4 List the details of the emps in asc order of the Dptnos and desc of Jobs?	
SELECT empno,ename,sal,job,deptno from emp
order by deptno asc,job desc; 

--5	 Display all the unique job groups in the descending order?	

select distinct job from emp
order by job desc;

--6 Display all the details of all ‘Mgrs’	
Select empno,ename,sal,job,hiredate,comm,deptno,branchno from emp where empno in ( select mgr from emp)
order by ename;

--7  List the emps who joined before 1981
select empno,ename,sal,job,mgr,comm,deptno,branchno from emp where hiredate <('01-01-81');

--8 List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
 select empno ,ename ,sal,sal/30,12*sal annsal from emp
 order by annsal asc;
 
 
--9 Display the Empno, Ename, job, Hiredate, Exp of all Mgrs	
select empno,ename ,job,hiredate, months_between(sysdate,hiredate) exp
from emp where empno in (select mgr from emp); 

--10List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
select empno, ename,sal from emp where mgr = '7369';


--11Display all the details of the emps whose Comm  Is more than their Sal	
select empno,ename,sal,job,mgr,hiredate,comm,deptno,branchno from emp
where comm >sal;


--12List the emps along with their Exp and Daily Sal is more than Rs 100

select empno, ename,sal,deptno from emp
where (sal/30) >100;



--13 List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order

select empno, ename,sal,deptno,job from emp
where job ='CLERK' or job ='ANALYST'
order by job desc;
--14 List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority	
select empno, ename,sal,deptno,job,hiredate from emp
where hiredate in ('01-05-81','03-12-81','17-12-81','19-01-81')
order by hiredate asc; 

--15 List the emp who are working for the Deptno 10 or20

select empno, ename,sal,deptno,job,hiredate from emp
where deptno = 10 or deptno = 20
order by deptno;

--16 List the emps who are joined in the year 81	

select empno, ename,sal,deptno,job,hiredate from emp
where hiredate between ’01-01-81' and '31-12-81'
order by hiredate;

--17 List the emps Who Annual sal ranging from 22000 and 45000	.

select empno, ename,sal,deptno,job,hiredate from emp
where 12*sal between 22000 and 45000
order by sal;



--18List the Enames those are having five characters in their Names	

select empno, ename,sal,deptno,job,hiredate from emp
where length (ename) = 5
order by ename;

--19List the Enames those are starting with ‘S’ and with five characters
select empno, ename,sal,deptno,job,hiredate from emp
where ename like 'S%' and length(ename)=5
order by ename;

--20 List the emps those are having four chars and third character must be ‘r’
select empno, ename,sal,deptno,job,hiredate from emp
where length(ename) = 4 and ename like '__R%'
order by ename;

--21 List the Five character names starting with ‘S’ and ending with ‘H’

select empno, ename,sal,deptno,job,hiredate from emp
where length(ename) = 5 and ename like 'S%H'
order by ename;

--22 List the emps who joined in January
select empno, ename,sal,deptno,job,hiredate from emp
where to_char(hiredate,'mon')= '01'
order by hiredate;

--23 List the emps whose names having a character set ‘ll’ together	
select empno, ename,sal,deptno,job,hiredate from emp
 where ename like '%LL%'
order by ename;

--24 List the emps who does not belong to Deptno 20	

select empno, ename,sal,deptno,job,hiredate from emp
where deptno != 20
order by deptno;

--25List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
select empno, ename,sal,deptno,job,hiredate from emp
where job != 'PRESIDENT' and job <> 'MANAGER'
order by sal asc; 

--26List the emps whose Empno not starting with digit78	
select empno, ename,sal,deptno,job,hiredate from emp
where empno not like '78%'
order by empno;

--27List the emps who are working under ‘MGR’
select e.ename || ' works for ' || m.ename from emp e ,emp m where e.mgr =
m.empno;

--28List the emps who joined in any year but not belongs to the month of March	
select empno, ename,sal,deptno,job,hiredate from emp
where to_char (hiredate,'MON') not in ('03')
order by hiredate;

--29List all the Clerks of Deptno 20
select empno, ename,sal,deptno,job,hiredate from emp
where job ='CLERK' and deptno = 20
order by ename;

--30List the emps of Deptno 30 or 10 joined in the year 1981
select empno, ename,sal,deptno,job,hiredate from emp
where to_char (hiredate,'YYYY') in
('1981') and (deptno = 30 or deptno =10 )
order by deptno;

--31Display the details of SMITH	
select empno, ename,sal,deptno,job,hiredate from emp
where ename = 'SMITH' ; 
--32Display the location of SMITH	


