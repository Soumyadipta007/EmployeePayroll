alter table employee_payroll add gender char(1)

update employee_payroll set gender ='M' where name='Bill' or name='Charlie'

select * from employee_payroll