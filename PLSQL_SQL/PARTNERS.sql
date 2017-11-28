drop table BONUS_PAY;

CREATE TABLE BONUS_PAY (
    bonus_pay_id char(10)
    ,service_id char(14) not null
    ,invoice_number char(14) not null
    ,emp_id char(8) not null
    ,bonus_amount NUMBER default 0
    ,registration_service_fee NUMBER default 0
    ,bookkeeping_service_fee NUMBER default 0
    ,typing_fee NUMBER default 0

    ,CONSTRAINT bonus_pay_pk PRIMARY KEY(bonus_pay_id)
    ,CONSTRAINT bonus_pay_fk_service foreign key (service_id) references SERVICE(service_id)
    ,CONSTRAINT bonus_pay_fk_invoice foreign key (invoice_number) references INVOICES(invoicenumber)
    ,CONSTRAINT bonus_pay_fk_staff foreign key (emp_id) references STAFFS(emp_id)
    ,CONSTRAINT CHK_bonus_amt CHECK (bonus_amount >= 0)
    ,CONSTRAINT CHK_reg_service_fee CHECK (registration_service_fee >= 0)
    ,CONSTRAINT CHK_book_service_fee CHECK (bookkeeping_service_fee >= 0)
    ,CONSTRAINT CHK_typing_fee CHECK (typing_fee >= 0)

    );


-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from BONUS_PAY;
rollback;
commit;

delete from BONUS_PAY;



