use avisoft;
create table playBack(
session_id int primary key,
customer_id int ,
start_time int ,
end_time int);
insert into playBack(session_id,customer_id,start_time,end_time)
values(1,1,1,5),(2,1,15,23),(3,2,10,12),(4,2,17,28),(5,2,2,8);
create table Ads(
ad_id int primary key,
customer_id int,
timeStamp int );
insert into Ads(ad_id,customer_id,timestamp)
values(1,1,5),(2,2,17),(3,2,20);
select session_id from playback
where session_id NOT IN (
select distinct p.session_id 
from playBack p
join ads a on p.customer_id = a.customer_id
AND p.start_time <= a.timeStamp
And p.end_time >= a.timeStamp );

