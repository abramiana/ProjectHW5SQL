use init_db;

-- Знайти проєкт з найбільшою тривалістю в місяцях
select *,
       datediff(FINISH_DATE, START_DATE) / 30 as DurationInMonths
from project
order by DurationInMonths desc
limit 1;