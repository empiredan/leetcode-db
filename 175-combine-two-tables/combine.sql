
create table `Person` (
    `PersonId` int,
    `FirstName` varchar(32),
    `LastName` varchar(32),
    PRIMARY KEY (`PersonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `Address` (
    `AddressId` int,
    `PersonId` int,
    `City` varchar(32),
    `State` varchar(32),
    PRIMARY KEY (`AddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `Person` (PersonId, FirstName, LastName) values (1, 'A', 'B');
insert into `Person` (PersonId, FirstName, LastName) values (2, 'C', 'D');
insert into `Address` (AddressId, PersonId, City, State) values (101, 1, 'Seattle', 'Washington');

select Person.FirstName,Person.LastName,Address.City,Address.State from Person left join Address on Person.PersonId=Address.PersonId;
