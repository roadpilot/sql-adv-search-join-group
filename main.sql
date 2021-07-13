select 
    em.company_code, 
    max(co.founder), 
    count(distinct lead_manager_code),
    count(distinct senior_manager_code),
    count(distinct manager_code), 
    count(distinct employee_code) 
from employee em join company co 
    on em.company_code = co.company_code 
group by em.company_code 
order by em.company_code;