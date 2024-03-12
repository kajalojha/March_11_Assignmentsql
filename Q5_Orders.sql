use avisoft;
create table orders(
order_number int primary key ,
customer_number int);
insert into orders(order_number , customer_number)
values(1,1),(2,2),(3,3),(4,3);
select customer_number
from orders
group by customer_number
order by COUNT(order_number)DESC
limit 1;

