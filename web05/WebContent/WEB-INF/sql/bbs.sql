-- 사내 게시판
create table bbs_user(
	sabun number primary key,
	name varchar2(12) not null
);

create table bbs(
	num number primary key,
	sabun number references bbs_user(sabun),
	nalja date default sysdate,
	sub varchar2(30) default '제목없음',
	content varchar2(1024)
);

create sequence bbs_seq;

insert into BBS_USER values (1111,'user1');

insert into BBS values (bbs_seq.nextval,1111,sysdate,'test1','test1111');
insert into BBS values (bbs_seq.nextval,1111,sysdate,'test2','test2222');
insert into BBS values (bbs_seq.nextval,1111,sysdate,'test3','test3333');
select * from BBS;
select * from bbs_user;

-- 글번호, 제목 , 날짜, 글쓴이
--select num,sub,nalja,
--	(select name from BBS_USER B where B.sabun=A.sabun) 
--	as name from bbs A;
--select B.num,B.sub,B.nalja,A.name from bbs_user A inner join bbs B 
--			on A.sabun = B.sabun order by num desc;
--select A.num, A.sub, A.nalja, B.name from bbs A, BBS_USER B where A.sabun = B.sabun;
select num,sub,nalja,name from bbs natural join bbs_user order by num desc;










