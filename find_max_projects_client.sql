use init_db;

-- Вибірка клієнта з найбільшою кількістю проєктів
select c.*, count(p.ID) as ProjectCount
from client c
join project p on c.ID = p.CLIENT_ID
group by c.ID
-- вибираються ті клієнти, кількість проєктів у яких дорівнює максимальній кількості 
having ProjectCount = (select max(ProjectCount) from (select count(ID) as ProjectCount from project group by CLIENT_ID) as ProjectCounts); 