-- Elaborar uma consulta SQL para um painel com a classificação resumida dos clientes por faixa etária. 'Até 12 anos' 'De 13 até 17 anos' 
-- 'De 18 até 24 anos' 'De 25 até 34 anos', 'De 35 até 44 anos' 'De 45 até 59 anos' 'De 60 até 79 anos' 'Acima de 80 anos'
CREATE VIEW tab_idade AS
SELECT *,
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS idade
FROM pessoas;

select SUM(CASE WHEN idade <= 12 then 1 else 0 END) AS "Até 12 anos",
       SUM(CASE WHEN idade>=13 and idade<=17 then 1 else 0 END) as "De 13 até 17 anos",
       SUM(CASE WHEN idade>= 18 AND idade <=24 THEN 1 ELSE 0 END) as "De 18 até 24 anos",
       SUM(CASE WHEN idade>= 25 AND idade <=34 THEN 1 ELSE 0 END) as "De 25 até 34 anos",
       SUM(CASE WHEN idade>= 35 AND idade <=44 THEN 1 ELSE 0 END) as "De 35 até 44 anos",
       SUM(CASE WHEN idade>= 45 AND idade <=59 THEN 1 ELSE 0 END) as "De 45 até 59 anos",
       SUM(CASE WHEN idade>= 60 AND idade <=79 THEN 1 ELSE 0 END) as "De 60 até 79 anos",
       SUM(CASE WHEN idade>= 80 AND idade <=110 THEN 1 ELSE 0 END) as "Acima de 80 anos"
from tab_idade

