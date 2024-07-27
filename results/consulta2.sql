-- Elaborar uma consulta SQL que retorne uma lista com id e nome as pessoas que fazem aniversário hoje.


CREATE VIEW tab_data AS
SELECT *,
    MONTH (data_nascimento) as mes,
    DAY(data_nascimento) as dia
FROM pessoas;


select id, nome from tab_data
WHERE mes = 7 AND dia = 27;