create table test(
    userid varchar2(30) primary key,
    userpw varchar2(30) not null
);
insert into test values('user01','pass01');
insert into test values('user02','pass02');
insert into test values('user03','pass03');
commit;

create table member(
    id varchar2(20) primary key,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    gender char(1),
    birthday char(6),
    email varchar2(30),
    zipcode char(5),
    address varchar2(100),
    detailAddress varchar2(50),
    hobby char(5),
    job varchar2(30)
);
commit;

insert into member values('yu','1234','유예성','1','981111','yuyeseong@naver.com','12345','서울특별시 강남구 한국빌딩','801호');

create table votelist(
    num number primary key,
    question varchar2(200) not null,
    sdate date,
    edate date,
    wdate date default sysdate,
    type number default 1 not null,
    active number default 1
);
commit;

drop table votelist;

create table voteitem(
    listnum number,
    itemnum number,
    item varchar2(50),
    count number default 0,
    constraint voteitem_pk primary key(listnum, itemnum)
);
commit;

create sequence seq_vote nocache;


