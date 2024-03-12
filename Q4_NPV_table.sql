use avisoft;
create table NPV(
id int ,
year int ,
npv int,
 primary key(id,year) );
 insert into NPV(id , year,npv)
 values(1,2018,100),
 (7,2020,30),
 (13,2019,40),
 (1,2019,113),
 (2,2008,121),
 (3,2009,12),
 (11,2020,99),
 (7,2019,0);
 
 create table Queries(
 Q_id int ,
 Q_year int ,
 primary key(Q_id,Q_year));
 insert into Queries(Q_id,Q_year)
 values(1,2019),
 (2,2008),
 (3,2009),
 (7,2018),
 (7,2019),
 (7,2020),
 (13,2019);
SELECT Q.Q_id, Q.Q_year, 
       CASE WHEN n.npv IS NULL THEN 0 ELSE n.npv END AS npv
FROM Queries Q
LEFT JOIN NPV n ON Q.Q_id = n.id AND Q.Q_year = n.year;

 
