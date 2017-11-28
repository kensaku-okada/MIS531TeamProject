drop table CERTIFICATION_DETAILS;

CREATE TABLE CERTIFICATION_DETAILS (
    emp_id char(8)
    ,certification_id char(6)
    ,certification_start_date date
    ,certification_end_date date
    
    ,CONSTRAINT CERTIFICATION_DETAILS_pk PRIMARY KEY(emp_id, certification_id)
    ,CONSTRAINT CERTIFICATION_DETAILS_EMP_fk foreign key (emp_id) references EMPLOYEES(emp_id)
    ,CONSTRAINT CERTIFICATION_DETAILS_CER_fk foreign key (certification_id) references CERTIFICATIONS(certification_id)
    );






--describe CERTIFICATION_DETAILS;

--alter table CERTIFICATION_DETAILS add (
--    CONSTRAINT CERTIFICATION_DETAILS_pk PRIMARY KEY(emp_id));

--alter table CERTIFICATION_DETAILS rename constraint CERTIFICATION_DETAILS_PK to CERTIFICATION_DETAILS_FK;

SELECT * FROM user_constraints order by table_name;

--search the tables which refer to the tables you are interested in 
SELECT
    constraint_name,
    table_name,
    status
FROM
    user_constraints
WHERE
    r_constraint_name IN
        (
        SELECT
            constraint_name
        FROM
            user_constraints
        WHERE
--            table_name = 'table name'
            table_name = 'CERTIFICATION_DETAILS'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from CERTIFICATION_DETAILS;
rollback;
commit;

delete from CERTIFICATION_DETAILS;



