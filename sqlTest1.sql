select emps.employeeNumber , emps.lastName , emps.email , cus.customerName , cus.phone
from classicmodels.employees as emps
inner join classicmodels.customers as cus
on emps.employeeNumber=cus.salesRepEmployeeNumber
order by emps.employeeNumber;

select emp1.employeeNumber , emp1.lastName , emp2.employeeNumber as bossnum , emp2.lastName as bossLastName
from classicmodels.employees as emp1
inner join classicmodels.employees as emp2
on emp1.reportsTo=emp2.employeeNumber;

select cus.customerName , cus.customerNumber , ord.orderNumber
from classicmodels.customers as cus
left join classicmodels.orders as ord
on cus.customerNumber=ord.customerNumber
where ord.orderNumber is null;

