use a325;
create table product_demo(
id int,
name varchar (20),
price int 
);
desc product_demo;
show tables;
alter table product_demo rename to product1;
desc product_demo;
desc product1;
alter table product1 modify name varchar(50);
desc product1;
alter table product1 modify name varchar(50) not null;
desc product1;
alter table product1 add constraint chk_price check(price>0);
desc product1;
alter table product1 modify name varchar(50) default "Ariel";
desc product1;

alter table product1 modify price decimal(5,2) not null default 100.00;
desc product1;
########this is all in one alter , modify, not null n default )

alter table product1 add column email_1 varchar (100) after id;
desc product1;
alter table product1 change column id pid int;
desc product1;
alter table product1 change column price product_price int;
desc product1;
alter table product1 drop check chk_price;
alter table product1 add constraint primary key(pid);
desc product1;
alter table product1 drop primary key;
desc product1;
insert into product1 values(null,"April",234.78);
alter table product1 modify pid int;
desc product1;
insert into product1 values (null,"Aoril",234.78);
########################## used primary key ################

create table course_p(
id int primary key,
sname varchar(20)
);
create table stud_p(
sid int primary key,
cid int);
alter table stud_p add constraint stud_p_f
foreign key(cid) references course_p(id);
desc course_p;
desc stud_p;

insert into stud_p values(1,10); ###ERROR
insert into course_p values (10,"April");
insert into stud_p values(1,10);
insert into stud_p values(1,20); ##ERROR
#######foreign key insertion can be inserted if parent table has refernce to child table

select *from stud_P;
select *from course_P;
delete from course_p where id=10; ###Error
delete from stud_p where cid=10;
delete from course_p where id=10;
######### foreign key deletion  parent table cant be deleted  if child table is there

alter table stud_p drop constraint stud_p_f ;
desc stud_p;
########## to delete / drop constraint stud_p_f

insert into stud_p values (1,20);
select *from course_p;
#--------------------------------------------------------------------------

###########FUNCTIONS IN SQL .........TEXT FUNCTION ####################

create table  str_demo(f_name varchar(20), 1_name varchar(20));
insert into str_demo values("Tom", "Jerry"),("Harry","Potter");
select *from str_demo;

select concat(f_name," ",l_name) as Name from str_demo;
### concat funtions

select upper(f_name),lower(l_name),length(f_name) from str_demo;
####### upper , lower , length function

select replace("Let us earn SQL","earn",learn) Replacement;
################### replacement 

select substr("Let us earn SQL", 8,4); 
##################### to take out substring i.e earn 

#################### MATHS FUNCTIONS ###############################

Select round(1234.68579879,2);
######## round of the number as 1234.69-----------
select round(1234.68579879,-2);

select truncate(1234.6857979,2);
###### it will cut the part and give us i.e 1234.68
select truncate(1234.685779,-2);
#########

############## FLOOR & CEIL function----------
select floor (123.0);  
####

select ceil (123.00000000000000001);

######## Power Modulus function------------
select pow(2,3),sqrt(81),mod(29,3);
# 2*2*2*2*2 , pow(2,64)
select pow(2,64);

######### Null or not nul function ######
select isnull(1*1), isnull (0*1), isnull(1/0), isnull(0/1);

######### Coalesce function #######
select coalesce(null,null,null,10,null,null,20,30);
select coalesce(null,null,null,null,null);

########## Aggregate function ########
create table aggregate_functions(i int );
insert into aggregate_functions values (1),(2),(3),(4),(5);

select max(i),min(i),count(i),avg(i),sum(i)
from aggregate functions;

select count(*) from aggregate functions;
######## it counts the things

############# Greatest and least function ############
select greatest(1,2,56,78), least(1,2,56,78);








