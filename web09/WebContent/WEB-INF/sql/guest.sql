delete from guest;

select rownum, sabun,name,nalja,pay from (select * from guest order by sabun desc);

insert into guest values (1001,'user1',sysdate,1000);
insert into guest values (1002,'user2',sysdate,2000);
insert into guest values (1003,'user3',sysdate,3000);

select rownum, sabun,name from (select * from guest order by sabun desc);
-- p1 rownum 1~10
select * from (select rownum, sabun,name from (select * from guest order by sabun desc)) where rownum>=1 and rownum<=10;
-- p2 rownum 11~20
select * from (select rownum as rn, sabun,name from (select * from guest order by sabun desc)) where rn>=11 and rn<=20;
select * from (select rownum as rn, sabun,name from (select * from guest order by sabun desc)) where rn between 11 and 20;
-- p3 rownum 21~30

select A.b from (select rownum as b from guest) A;

select page,rn,sabun,name,nalja,pay from (select rownum as page,rn,sabun,name,nalja,pay from (
		select rownum as rn, sabun,name,nalja,pay from (
			select * from guest order by sabun desc)) where name like '%user2%') where page between 11 and 20;


