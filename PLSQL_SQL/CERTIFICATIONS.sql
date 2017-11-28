drop table CERTIFICATIONS;

CREATE TABLE CERTIFICATIONS (
    certification_id char(6)
    ,certification_name varchar(100) not null
    ,description_of_certification varchar2(2000)
    
    ,CONSTRAINT CERTIFICATIONS_pk PRIMARY KEY(certification_id)
    ,CONSTRAINT CERTIFICATIONS_name_uniq unique(certification_name)
    );




--describe CERTIFICATIONS;

--alter table CERTIFICATIONS add (
--    CONSTRAINT CERTIFICATIONS_pk PRIMARY KEY(emp_id));

--alter table CERTIFICATIONS rename constraint CERTIFICATIONS_PK to CERTIFICATIONS_FK;

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
            table_name = 'CERTIFICATIONS'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from CERTIFICATIONS;
rollback;
commit;

delete from CERTIFICATIONS;



