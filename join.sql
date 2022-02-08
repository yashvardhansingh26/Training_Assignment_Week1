SELECT 
    *
FROM
    BRANCH;
SELECT 
    *
FROM
    dept;
SELECT
    *
FROM
    EMP;
    
SELECT
    empno,ename,dname
FROM    
    emp JOIN dept ON emp.deptno=dept.deptno;
    
    
----
SELECT
    deptno,dname,branchname
FROM
    branch JOIN dept ON branch.branchno=dept.branchno;
    
    
    
    
SELECT
    e.empno,e.ename,d.dname
FROM
    emp e LEFT OUTER JOIN dept d
    ON e.deptno=d.deptno;
    
    
    
SELECT
    e.empno,e.ename,d.dname
FROM
    emp e RIGHT OUTER JOIN dept d
    ON e.deptno=d.deptno;
    
SELECT
    e.empno,e.ename,d.dname
FROM
    emp e FULL OUTER JOIN dept d
    ON e.deptno=d.deptno; 
    
SELECT 
    e.empno,e.ename,m.ename as managername
FROM
    emp e JOIN emp m on e.mgr=m.empno
ORDER BY e.empno;




SELECT
    empno,ename,dname
FROM    
     emp,dept WHERE emp.deptno=dept.deptno;

SELECT
    empno,ename,dname
FROM    
     emp,dept ;

SELECT
    empno,ename,dname
FROM    
     emp cross join dept ;
     
-----
SELECT
    empno,ename,
    dname,
    branchname
FROM
        emp e 
    join 
        dept d 
    on 
        e.deptno=d.deptno
    join
        branch b
    on
        b.branchno=d.branchno
    order by b.branchno;
    
    ------------------------------------------
    SELECT
    name
FROM
    customers c
WHERE
    EXISTS (
        SELECT
            1
        FROM
            orders
        WHERE
            customer_id = c.customer_id
    )
;