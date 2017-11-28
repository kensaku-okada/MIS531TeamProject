drop table EMPLOYEES;

CREATE TABLE EMPLOYEES(
    emp_id char(8)
    ,first_name varchar2(50) not null
    ,middle_name varchar2(50) 
    ,last_name varchar2(50) not null
    ,email varchar2(60)
    ,phone_number varchar2(15)
    ,date_of_birth date
    ,fulltime_or_part_time char(4) not null

    ,CONSTRAINT EMPLOYEES_pk PRIMARY KEY(emp_id)
    ,CONSTRAINT uniq_email unique(email, phone_number)
--we cannot use sysdate for check constraint. use trigger
--source: https://stackoverflow.com/questions/5332562/using-date-in-a-check-constraint-oracle
--    ,CONSTRAINT CHK_date_birth CHECK (date_of_birth < sysdate)
    ,CONSTRAINT CHK_fulltime_or_parttime CHECK (fulltime_or_part_time IN ('full', 'part'))
);

--sample DDL

--bookid char (6),
--bname varchar(25) NOT NULL,
--category varchar(20) DEFAULT 'unclassified',
--Listprice number(4,2) CHECK (listprice > 0),
--CONSTRAINT books_pk PRIMARY KEY (bookid),
--CONSTRAINT category_check CHECK (category IN ('business', 'computers', 
--'psychology', 'unclassified') )


-------------------------------------------
------------- insert data -----------------
-------------------------------------------

select * from EMPLOYEES;
rollback;
commit;

delete from EMPLOYEES;

insert into EMPLOYEES values (	'00000001'	,	'Tom'	,	'Java'	,	'Cat'	,	'BeatCobol@gmail.com'	,	'12345678'	,	'01-Jan-2000'	,	'full'	);
insert into EMPLOYEES values (	'00000002'	,	'Kensaku'	,	null	,	'Okada'	,	'kensaku@gmail.com'	,	'23456789'	,	'02-Jan-1988'	,	'part'	);
insert into EMPLOYEES values (	'00000003'	,	'12345678901234567890123456789012345678901234567890'	,	'maximum letter check'	,	'12345678901234567890123456789012345678901234567890'	,	'12345678901234567890123456789@12345678901234567890'	,	'123456789012345'	,	'03-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000004'	,	'f'	,	'm'	,	'l'	,	'a@a'	,	'1'	,	'04-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000005'	,	'first_name1'	,	'middle_name1'	,	'last_name1'	,	'test1@MIS.com'	,	'12'	,	'05-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000006'	,	'first_name2'	,	'middle_name2'	,	'last_name2'	,	'test11@MIS.com'	,	'123'	,	'06-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000007'	,	'first_name3'	,	'middle_name3'	,	'last_name3'	,	'test21@MIS.com'	,	'1234'	,	'07-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000008'	,	'first_name4'	,	'middle_name4'	,	'last_name4'	,	'test31@MIS.com'	,	'12345'	,	'08-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000009'	,	'first_name5'	,	'middle_name5'	,	'last_name5'	,	'test41@MIS.com'	,	'123456'	,	'09-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000010'	,	'first_name6'	,	'middle_name6'	,	'last_name6'	,	'test51@MIS.com'	,	'1234567'	,	'10-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000011'	,	'first_name7'	,	'middle_name7'	,	'last_name7'	,	'test61@MIS.com'	,	'12345678'	,	'11-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000012'	,	'first_name8'	,	'middle_name8'	,	'last_name8'	,	'test71@MIS.com'	,	'123456789'	,	'12-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000013'	,	'first_name9'	,	'middle_name9'	,	'last_name9'	,	'test81@MIS.com'	,	'1234567890'	,	'13-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000014'	,	'first_name10'	,	'middle_name10'	,	'last_name10'	,	'test91@MIS.com'	,	'12345678901'	,	'14-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000015'	,	'first_name11'	,	'middle_name11'	,	'last_name11'	,	'test101@MIS.com'	,	'985423610'	,	'15-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000016'	,	'first_name12'	,	'middle_name12'	,	'last_name12'	,	'test111@MIS.com'	,	'246258778'	,	'16-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000017'	,	'first_name13'	,	'middle_name13'	,	'last_name13'	,	'test121@MIS.com'	,	'310272756'	,	'17-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000018'	,	'first_name14'	,	'middle_name14'	,	'last_name14'	,	'test131@MIS.com'	,	'101234602'	,	'18-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000019'	,	'first_name15'	,	'middle_name15'	,	'last_name15'	,	'test141@MIS.com'	,	'930379891'	,	'19-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000020'	,	'first_name16'	,	'middle_name16'	,	'last_name16'	,	'test151@MIS.com'	,	'302490124'	,	'20-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000021'	,	'first_name17'	,	'middle_name17'	,	'last_name17'	,	'test161@MIS.com'	,	'586812189'	,	'21-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000022'	,	'first_name18'	,	'middle_name18'	,	'last_name18'	,	'test171@MIS.com'	,	'25455377'	,	'22-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000023'	,	'first_name19'	,	'middle_name19'	,	'last_name19'	,	'test181@MIS.com'	,	'419541364'	,	'23-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000024'	,	'first_name20'	,	'middle_name20'	,	'last_name20'	,	'test191@MIS.com'	,	'308215527'	,	'24-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000025'	,	'first_name21'	,	'middle_name21'	,	'last_name21'	,	'test201@MIS.com'	,	'852645703'	,	'25-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000026'	,	'first_name22'	,	'middle_name22'	,	'last_name22'	,	'test211@MIS.com'	,	'409888933'	,	'26-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000027'	,	'first_name23'	,	'middle_name23'	,	'last_name23'	,	'test221@MIS.com'	,	'639106358'	,	'27-Jan-2015'	,	'full'	);
insert into EMPLOYEES values (	'00000028'	,	'first_name24'	,	'middle_name24'	,	'last_name24'	,	'test231@MIS.com'	,	'706438912'	,	'28-Jan-2015'	,	'part'	);
insert into EMPLOYEES values (	'00000029'	,	'first_name25'	,	'middle_name25'	,	'last_name25'	,	'test241@MIS.com'	,	'134525459'	,	'29-Jan-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000030'	,	'first_name26'	,	'middle_name26'	,	'last_name26'	,	'test251@MIS.com'	,	'381953867'	,	'30-Jan-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000031'	,	'first_name27'	,	'middle_name27'	,	'last_name27'	,	'test261@MIS.com'	,	'962893387'	,	'31-Jan-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000032'	,	'first_name28'	,	'middle_name28'	,	'last_name28'	,	'test271@MIS.com'	,	'149340891'	,	'01-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000033'	,	'first_name29'	,	'middle_name29'	,	'last_name29'	,	'test281@MIS.com'	,	'38179802'	,	'02-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000034'	,	'first_name30'	,	'middle_name30'	,	'last_name30'	,	'test301@MIS.com'	,	'960593409'	,	'03-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000035'	,	'first_name31'	,	'middle_name31'	,	'last_name31'	,	'test311@MIS.com'	,	'269464868'	,	'04-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000036'	,	'first_name32'	,	'middle_name32'	,	'last_name32'	,	'test321@MIS.com'	,	'570071794'	,	'05-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000037'	,	'first_name33'	,	'middle_name33'	,	'last_name33'	,	'test331@MIS.com'	,	'514131562'	,	'06-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000038'	,	'first_name34'	,	'middle_name34'	,	'last_name34'	,	'test341@MIS.com'	,	'899459683'	,	'07-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000039'	,	'first_name35'	,	'middle_name35'	,	'last_name35'	,	'test351@MIS.com'	,	'466004309'	,	'08-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000040'	,	'first_name36'	,	'middle_name36'	,	'last_name36'	,	'test361@MIS.com'	,	'253237124'	,	'09-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000041'	,	'first_name37'	,	'middle_name37'	,	'last_name37'	,	'test371@MIS.com'	,	'139062201'	,	'10-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000042'	,	'first_name38'	,	'middle_name38'	,	'last_name38'	,	'test381@MIS.com'	,	'459775148'	,	'11-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000043'	,	'first_name39'	,	'middle_name39'	,	'last_name39'	,	'test391@MIS.com'	,	'601424134'	,	'12-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000044'	,	'first_name40'	,	'middle_name40'	,	'last_name40'	,	'test401@MIS.com'	,	'204765335'	,	'13-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000045'	,	'first_name41'	,	'middle_name41'	,	'last_name41'	,	'test411@MIS.com'	,	'250764898'	,	'14-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000046'	,	'first_name42'	,	'middle_name42'	,	'last_name42'	,	'test421@MIS.com'	,	'998033335'	,	'15-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000047'	,	'first_name43'	,	'middle_name43'	,	'last_name43'	,	'test431@MIS.com'	,	'526376266'	,	'16-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000048'	,	'first_name44'	,	'middle_name44'	,	'last_name44'	,	'test441@MIS.com'	,	'17355208'	,	'17-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000049'	,	'first_name45'	,	'middle_name45'	,	'last_name45'	,	'test451@MIS.com'	,	'803050345'	,	'18-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000050'	,	'first_name46'	,	'middle_name46'	,	'last_name46'	,	'test461@MIS.com'	,	'227334184'	,	'19-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000051'	,	'first_name47'	,	'middle_name47'	,	'last_name47'	,	'test471@MIS.com'	,	'789282609'	,	'20-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000052'	,	'first_name48'	,	'middle_name48'	,	'last_name48'	,	'test481@MIS.com'	,	'729458317'	,	'21-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000053'	,	'first_name49'	,	'middle_name49'	,	'last_name49'	,	'test491@MIS.com'	,	'991538964'	,	'22-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000054'	,	'first_name50'	,	'middle_name50'	,	'last_name50'	,	'test501@MIS.com'	,	'891031759'	,	'23-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000055'	,	'first_name51'	,	'middle_name51'	,	'last_name51'	,	'test511@MIS.com'	,	'345198460'	,	'24-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000056'	,	'first_name52'	,	'middle_name52'	,	'last_name52'	,	'test521@MIS.com'	,	'883759775'	,	'25-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000057'	,	'first_name53'	,	'middle_name53'	,	'last_name53'	,	'test531@MIS.com'	,	'542093598'	,	'26-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000058'	,	'first_name54'	,	'middle_name54'	,	'last_name54'	,	'test541@MIS.com'	,	'373505390'	,	'27-Feb-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000059'	,	'first_name55'	,	'middle_name55'	,	'last_name55'	,	'test551@MIS.com'	,	'698266884'	,	'28-Feb-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000060'	,	'first_name56'	,	'middle_name56'	,	'last_name56'	,	'test561@MIS.com'	,	'105377859'	,	'01-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000061'	,	'first_name57'	,	'middle_name57'	,	'last_name57'	,	'test571@MIS.com'	,	'50717296'	,	'02-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000062'	,	'first_name58'	,	'middle_name58'	,	'last_name58'	,	'test581@MIS.com'	,	'465247632'	,	'03-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000063'	,	'first_name59'	,	'middle_name59'	,	'last_name59'	,	'test591@MIS.com'	,	'298717162'	,	'04-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000064'	,	'first_name60'	,	'middle_name60'	,	'last_name60'	,	'test601@MIS.com'	,	'40511800'	,	'05-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000065'	,	'first_name61'	,	'middle_name61'	,	'last_name61'	,	'test611@MIS.com'	,	'917060962'	,	'06-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000066'	,	'first_name62'	,	'middle_name62'	,	'last_name62'	,	'test621@MIS.com'	,	'98095618'	,	'07-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000067'	,	'first_name63'	,	'middle_name63'	,	'last_name63'	,	'test631@MIS.com'	,	'371806387'	,	'08-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000068'	,	'first_name64'	,	'middle_name64'	,	'last_name64'	,	'test641@MIS.com'	,	'423023807'	,	'09-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000069'	,	'first_name65'	,	'middle_name65'	,	'last_name65'	,	'test651@MIS.com'	,	'223255779'	,	'10-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000070'	,	'first_name66'	,	'middle_name66'	,	'last_name66'	,	'test661@MIS.com'	,	'371314882'	,	'11-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000071'	,	'first_name67'	,	'middle_name67'	,	'last_name67'	,	'test671@MIS.com'	,	'868797823'	,	'12-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000072'	,	'first_name68'	,	'middle_name68'	,	'last_name68'	,	'test681@MIS.com'	,	'369450093'	,	'13-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000073'	,	'first_name69'	,	'middle_name69'	,	'last_name69'	,	'test691@MIS.com'	,	'375605980'	,	'14-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000074'	,	'first_name70'	,	'middle_name70'	,	'last_name70'	,	'test701@MIS.com'	,	'600377784'	,	'15-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000075'	,	'first_name71'	,	'middle_name71'	,	'last_name71'	,	'test711@MIS.com'	,	'899015560'	,	'16-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000076'	,	'first_name72'	,	'middle_name72'	,	'last_name72'	,	'test721@MIS.com'	,	'742192807'	,	'17-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000077'	,	'first_name73'	,	'middle_name73'	,	'last_name73'	,	'test731@MIS.com'	,	'448747782'	,	'18-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000078'	,	'first_name74'	,	'middle_name74'	,	'last_name74'	,	'test741@MIS.com'	,	'437661458'	,	'19-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000079'	,	'first_name75'	,	'middle_name75'	,	'last_name75'	,	'test751@MIS.com'	,	'827210167'	,	'20-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000080'	,	'first_name76'	,	'middle_name76'	,	'last_name76'	,	'test761@MIS.com'	,	'566153117'	,	'21-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000081'	,	'first_name77'	,	'middle_name77'	,	'last_name77'	,	'test771@MIS.com'	,	'950200009'	,	'22-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000082'	,	'first_name78'	,	'middle_name78'	,	'last_name78'	,	'test781@MIS.com'	,	'337922768'	,	'23-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000083'	,	'first_name79'	,	'middle_name79'	,	'last_name79'	,	'test791@MIS.com'	,	'201914816'	,	'24-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000084'	,	'first_name80'	,	'middle_name80'	,	'last_name80'	,	'test801@MIS.com'	,	'35823068'	,	'25-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000085'	,	'first_name81'	,	'middle_name81'	,	'last_name81'	,	'test811@MIS.com'	,	'157803524'	,	'26-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000086'	,	'first_name82'	,	'middle_name82'	,	'last_name82'	,	'test821@MIS.com'	,	'771290863'	,	'27-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000087'	,	'first_name83'	,	'middle_name83'	,	'last_name83'	,	'test831@MIS.com'	,	'818167815'	,	'28-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000088'	,	'first_name84'	,	'middle_name84'	,	'last_name84'	,	'test841@MIS.com'	,	'607862079'	,	'29-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000089'	,	'first_name85'	,	'middle_name85'	,	'last_name85'	,	'test851@MIS.com'	,	'273365295'	,	'30-Mar-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000090'	,	'first_name86'	,	'middle_name86'	,	'last_name86'	,	'test861@MIS.com'	,	'622650654'	,	'31-Mar-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000091'	,	'first_name87'	,	'middle_name87'	,	'last_name87'	,	'test871@MIS.com'	,	'511921458'	,	'01-Apr-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000092'	,	'first_name88'	,	'middle_name88'	,	'last_name88'	,	'test881@MIS.com'	,	'38441210'	,	'02-Apr-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000093'	,	'first_name89'	,	'middle_name89'	,	'last_name89'	,	'test891@MIS.com'	,	'382894686'	,	'03-Apr-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000094'	,	'first_name90'	,	'middle_name90'	,	'last_name90'	,	'test901@MIS.com'	,	'158673327'	,	'04-Apr-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000095'	,	'first_name91'	,	'middle_name91'	,	'last_name91'	,	'test911@MIS.com'	,	'733653480'	,	'05-Apr-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000096'	,	'first_name92'	,	'middle_name92'	,	'last_name92'	,	'test921@MIS.com'	,	'995146817'	,	'06-Apr-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000097'	,	'first_name93'	,	'middle_name93'	,	'last_name93'	,	'test931@MIS.com'	,	'617138948'	,	'07-Apr-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000098'	,	'first_name94'	,	'middle_name94'	,	'last_name94'	,	'test941@MIS.com'	,	'792382483'	,	'08-Apr-1990'	,	'part'	);
insert into EMPLOYEES values (	'00000099'	,	'first_name95'	,	'middle_name95'	,	'last_name95'	,	'test951@MIS.com'	,	'555142034'	,	'09-Apr-1990'	,	'full'	);
insert into EMPLOYEES values (	'00000100'	,	'first_name96'	,	'middle_name96'	,	'last_name96'	,	'test961@MIS.com'	,	'49992390'	,	'10-Apr-1990'	,	'part'	);


