alter table employee_payroll add PhoneNumber varchar(15);
alter table employee_payroll add address varchar(20)
alter table employee_payroll add constraint DF_Address default 'Indian' for address
alter table employee_payroll add department varchar(100)