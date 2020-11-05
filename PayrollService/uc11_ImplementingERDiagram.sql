select * from employee_payroll
create table Department(
DeptID int not null primary key,
DepartmentName varchar(20) not null
)
insert into department values(101,'Accounts'),(102,'HR'),(103,'Sales'),(104,'Marketing')
select * from Department
create table payroll
(
payrollID int not null primary key,
basic_pay decimal(10,2),
deductions decimal(10,2),
taxable_pay decimal(10,2),
income_tax decimal(10,2),
net_pay decimal(10,2)
)
select * from payroll
insert into payroll values(201,90000,5000,2000,1000,80000)
insert into payroll values(202,80000,4000,1000,900,70000)
insert into payroll values(203,70000,3000,2000,900,60000)
create table company
(
CompanyID int not null primary key,
CompanyName varchar(20) not null
)
select * from company
insert into company values(301,'Google')
insert into company values(302,'Microsoft')
create table employee(
empID int NOT NULL identity PRIMARY KEY, 
EmpName VARCHAR(50) NOT NULL,
gender char(1) not null,
basic_pay DECIMAL(10,2) NOT NULL,
start_Date DATETIME NOT NULL ,
PhoneNumber varchar(20),
address varchar(100) not null,
CompanyID int not null,
payrollID int not null,
FOREIGN KEY(CompanyID) REFERENCES company(CompanyID),
FOREIGN KEY(payrollID) REFERENCES payroll(payrollID)
)
select * from employee
insert into employee(EmpName,gender,basic_pay,start_Date,PhoneNumber,address,CompanyID,payrollID) values
('Rounak','M', 50000, '2020-10-18','9999999999','Mumbai',301,201),
('Pranoy','M', 40000, '2020-10-18','8888888888','Mumbai',301,202),
('Prerna','F', 30000, '2020-10-18','7777777777','Delhi',302,203)
create table employee_department_mapping
(
MappingID int not null Primary Key,
empID int NOT NULL,
DeptID int not null,
FOREIGN KEY(empID) REFERENCES employee(empID),
FOREIGN KEY(DeptID) REFERENCES department(DeptID),
)
select * from employee_department_mapping
insert into employee_department_mapping values
(401,1,103),
(402,1,104),
(403,2,103),
(404,3,101),
(405,3,102)
select sum(basic_pay) from employee where gender='M' group by gender
select sum(basic_pay) from employee where gender='F' group by gender
select avg(basic_pay) from employee where gender='M' group by gender
select avg(basic_pay) from employee where gender='F' group by gender
select max(basic_pay) from employee where gender='M' group by gender
select min(basic_pay) from employee where gender='M' group by gender
select count(PhoneNumber) from employee where gender='M' group by gender
select count(PhoneNumber) from employee where gender='F' group by gender