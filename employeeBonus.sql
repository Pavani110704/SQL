select e1.name, b.bonus
from employee e1
left join bonus b
on e1.empID = b.empId
where bonus < 1000 or bonus is null;