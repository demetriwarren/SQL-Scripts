-- Creating Databases

--create the database
Create Database TQLBootcamp;
	
Use TQLBootcamp;
Go
--creating a table in your database
Create Table Students (
	Id int not null primary key identity (1,1),
	firstName varchar(30) not null,
	lastName varchar(30) not null,
	cellPhone varchar(15),
	DateOfBirth DateTime not null,
	Active bit not null default 1,
);
go
--add 3 people as students into your table
INSERT into Students (firstname, lastname, DateOfBirth)
				Values('Demetri', 'Warren', '2000-01-28'),
						('Crystal', 'Hamilton', '1978-10-19'),
						('Duncan', 'Warren', '1975-05-15')
Select *
	from Students

Select Id, firstname, lastname, cellphone, dateofbirth
	from Students

--create a table called assignments (also creating a FK)
Create Table Assignments (
	Id int not null primary key identity(10,10),
	Name varchar(50) not null,
	Score int not null,
	StudentId int not null foreign key references Students(Id),
);
go

--tie assignments to a student 

INSERT Assignments 
	(Name, Score, StudentId)
	Values
	('Git/GitHub Assessment', 10, (Select Id from Students where firstName = 'Demetri'));
go
-- Select a.* means pull all from the assignments table (a. is the alias)
Select a.*, concat(s.firstname, ' ', s.lastname) Name
	from Assignments a 
	join Students s 
		on s.id = a.StudentId

Update Assignments set 
	