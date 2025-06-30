use ecommerce

create table department (
dept_id int  primary key not null,
dept_name varchar (100)
);


create table employee (
employee_name varchar (100),
dept_id int,
foreign key (dept_id) references department(dept_id)
)

insert into department (dept_id,dept_name)
values
(41,'sales'),
(42,'marketing'),
(43,'production'),
(44,'lathe'),
(45,'mechanical');

insert into employee (employee_name,dept_id)
values
('tamil',41),
('navee',41),
('vishal',45),
('vicky',45),
('abi',42),
('ajith',null);

select e.employee_name,e.dept_id,d.dept_name
from employee e
inner join department d 
on e.dept_id = d.dept_id;

select e.employee_name,e.dept_id,d.dept_name
from employee e
left join department d 
on e.dept_id = d.dept_id;

select e.employee_name,e.dept_id,d.dept_name
from employee e
right join department d 
on e.dept_id = d.dept_id;

select e.employee_name,e.dept_id,d.dept_name
from employee e 
left join department d 
on e.dept_id = d.dept_id
union
select e.employee_name,e.dept_id,d.dept_name
from employee e 
right join department d 
on e.dept_id = d.dept_id




