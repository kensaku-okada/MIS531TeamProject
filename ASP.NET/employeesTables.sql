SELECT 
    EM.EMP_ID
    , EM.FIRST_NAME
    , EM.MIDDLE_NAME
    , EM.LAST_NAME
    , EM.EMAIL
    , EM.PHONE_NUMBER
    , EM.DATE_OF_BIRTH
    , EM.FULLTIME_OR_PART_TIME
    , FE.ANNUAL_SALARY
    , FE.FULL_TIME_EMPLOYMENT_TYPE
    , ST.JOB_TITLE
FROM     
    employees em
        left outer join FULL_TIME_EMPLOYEES FE on (fe.emp_id = em.emp_id)
        left outer join STAFFS ST on (st.emp_id = fe.emp_id)
        left outer join PARTNERS PA on (pa.emp_id = fe.emp_id)
;
        