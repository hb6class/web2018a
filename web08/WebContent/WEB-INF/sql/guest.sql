drop table guest;
create table guest(
	sabun number primary key,
	name varchar2(30) not null,
	nalja date,
	pay number
);
insert into guest values(1111,'ȫ�浿',sysdate,1000);
insert into guest values(2222,'�̸���',sysdate,2000);
insert into guest values(3333,'�谳��',sysdate,3000);
insert into guest values(4444,'�ڼ���',sysdate,4000);
select * from guest;

select rownum as rn, sabun, name, nalja, pay from guest;