select employee , department , salary from (select employee , department , salary rank()
over (partition by department order by salary desc) as rank from employee) t
where rank <=3;