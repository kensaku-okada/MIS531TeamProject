drop table STAFFS;

CREATE TABLE STAFFS (
    emp_id char(8)
    ,job_title varchar2(40)
    
    ,CONSTRAINT staffs_pk PRIMARY KEY(emp_id)
    ,CONSTRAINT staffs_fk foreign key (emp_id) references FULL_TIME_EMPLOYEES(emp_id)
    );


-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from STAFFS;
rollback;
commit;

delete from STAFFS;



