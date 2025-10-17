select emp.firstName, emp.lastName, emp.title, sls.salesId
from employee emp
left join sales sls
  on emp.employeeId = sls.employeeId
where emp.title = 'Sales Person' 
and sls.salesID is NULL;
