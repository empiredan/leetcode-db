
create table `Employee` ( 
    `Id` int, 
    `Salary` int, 
    PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into Employee (Id, Salary) values (1, 100);
insert into Employee (Id, Salary) values (2, 200);
insert into Employee (Id, Salary) values (3, 300);
insert into Employee (Id, Salary) values (10, 200);
delete from Employee where Id=2;

select min(salary.Salary) as SecondHighestSalary from (select distinct Salary from Employee order by Salary desc limit 2) salary, (select count(distinct Salary) cnt from Employee order by Salary desc limit 2) cnt where cnt.cnt > 1;
