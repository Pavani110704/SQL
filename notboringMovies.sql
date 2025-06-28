select * from cinema
where description is  not like  "boring"
and mod(id, 2) <> 0;
