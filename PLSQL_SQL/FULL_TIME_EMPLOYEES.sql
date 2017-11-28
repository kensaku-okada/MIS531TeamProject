drop table FULL_TIME_EMPLOYEES;

CREATE TABLE FULL_TIME_EMPLOYEES (
    emp_id char(8)
    ,annual_salary NUMBER
    ,full_time_employment_type varchar2(20)
    
    ,CONSTRAINT FULL_TIME_EMPLOYEES_pk PRIMARY KEY(emp_id)
    ,CONSTRAINT FULL_TIME_EMPLOYEES_fk foreign key (emp_id) references EMPLOYEES(emp_id)
    ,CONSTRAINT CHK_annual_salary CHECK (annual_salary >= 0)
    ,CONSTRAINT CHK_full_emp_type CHECK ( full_time_employment_type IN ('partner', 'staff'))
    );

--describe FULL_TIME_EMPLOYEES;

--alter table FULL_TIME_EMPLOYEES add (
--    CONSTRAINT FULL_TIME_EMPLOYEES_pk PRIMARY KEY(emp_id));

--alter table FULL_TIME_EMPLOYEES rename constraint FULL_TIME_EMPLOYEES_PK to FULL_TIME_EMPLOYEES_FK;

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
            table_name = 'FULL_TIME_EMPLOYEES'
        );

-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from FULL_TIME_EMPLOYEES;
rollback;
commit;

delete from EMPLOYEES;

insert into FULL_TIME_EMPLOYEES values (	'00000001'	,	'235875.894533508'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000003'	,	'365547.456081024'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000005'	,	'1310533.52710138'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000007'	,	'80078.4440580898'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000009'	,	'2410019.68224812'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000011'	,	'183408.036878664'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000013'	,	'275889.756444323'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000015'	,	'159841.581586954'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000017'	,	'705032.934800993'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000019'	,	'300194.03421852'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000021'	,	'185184.499799685'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000023'	,	'172660.511373338'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000025'	,	'2144.96621381854'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000027'	,	'308623.744480585'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000029'	,	'770960.002630597'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000031'	,	'294170.867210522'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000033'	,	'282522.156199856'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000035'	,	'36296.8292123747'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000037'	,	'911618.69732581'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000039'	,	'188643.993403451'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000041'	,	'2395447.61051656'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000043'	,	'305030.303606675'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000045'	,	'794096.494679441'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000047'	,	'382627.503153554'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000049'	,	'2192338.3142352'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000051'	,	'60954.5405286722'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000053'	,	'1146018.71809712'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000055'	,	'101150.275168164'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000057'	,	'1915238.55841757'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000059'	,	'313397.338235027'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000061'	,	'113816.264842126'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000063'	,	'392811.055359082'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000065'	,	'2422769.30809647'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000067'	,	'247322.177098189'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000069'	,	'1732418.92565676'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000071'	,	'319620.313885999'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000073'	,	'999594.412308206'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000075'	,	'151450.301415841'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000077'	,	'613784.839157482'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000079'	,	'357640.921658382'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000081'	,	'127305.044794166'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000083'	,	'232184.311784067'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000085'	,	'1475664.37648426'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000087'	,	'145273.953918958'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000089'	,	'1695205.75959361'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000091'	,	'142064.455282845'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000093'	,	'1438638.67940127'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000095'	,	'227461.73325744'	,	'staff'	);
insert into FULL_TIME_EMPLOYEES values (	'00000097'	,	'2358522.44769309'	,	'partner'	);
insert into FULL_TIME_EMPLOYEES values (	'00000099'	,	'240726.847383078'	,	'staff'	);


