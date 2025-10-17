select emp.firstName, emp.lastName, emp.title,
  mng.firstName as ManagerFirstName, mng.lastName as ManagerLastName

from employee emp
inner join employee mng
  on emp.managerID = mng.employeeID