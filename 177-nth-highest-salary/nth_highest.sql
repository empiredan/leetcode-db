
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

DELIMITER $$

create function getNthHighestSalary(N INT) 
RETURNS INT

begin
    set N=N-1; 
    select (select distinct Salary from Employee order by Salary desc limit 1 offset N) into @result;
    return @result;
end $$

DELIMITER ;
