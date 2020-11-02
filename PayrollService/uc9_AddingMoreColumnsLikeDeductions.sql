insert into employee_payroll(name,salary,start) values
('Billi',100000.0,'2018-01-03'
)
sp_rename 'employee_payroll.salary','basic_pay'
alter table employee_payroll add Deduction float,taxable_pay real,IncomeTax float,
Netpay real