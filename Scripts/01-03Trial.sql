---Filter out the lines 
---where there is either no customer data or no sales data
select cst.firstName, cst.lastName,cst.email,
sls.salesAmount,sls.soldDate
from customer cst
left join sales sls
on cst.customerId = sls.customerId
where sls.salesId is null
UNION
select cst.firstName, cst.lastName,cst.email,sls.salesAmount,sls.soldDate
from sales sls
left join customer cst
on cst.customerId = sls.customerId
where cst.customerid is null
 