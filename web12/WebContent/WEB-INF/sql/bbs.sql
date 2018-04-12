select * from bbs;

delete from bbs where num>4;

select * from BBS_USER;

select bbs_seq.currval from dual;

drop sequence bbs_seq;
create sequence bbs_seq start with 4;

alter table bbs add(cnt number);
update bbs set cnt=0 where cnt is null;
