select * from employee e inner join company c on
e.CompanyID = c.CompanyID inner join payroll p on 
p.payrollID = e.payrollID inner join employee_department_mapping ed on
ed.empID = e.empID inner join Department d on
d.DeptID=ed.DeptID where e.empID=1;

select basic_pay from employee where start_Date between CAST('2020-10-17' as date) and GETDATE();

select sum(basic_pay) from employee where gender='M' group by gender
select sum(basic_pay) from employee where gender='F' group by gender
select avg(basic_pay) from employee where gender='M' group by gender
select avg(basic_pay) from employee where gender='F' group by gender
select max(basic_pay) from employee where gender='M' group by gender
select min(basic_pay) from employee where gender='M' group by gender
select count(PhoneNumber) from employee where gender='M' group by gender
select count(PhoneNumber) from employee where gender='F' group by gender