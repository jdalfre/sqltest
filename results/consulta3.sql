SELECT id, nome
FROM pessoas
WHERE
    DATE_FORMAT(data_nascimento, '%m-%d') BETWEEN 
          date_format(date(adddate(Now(), 2 - dayofweek(Now()) + case when dayofweek(Now()) < 2 then 0 else 7 end )), '%m-%d') 
           AND 
           date_format(date(adddate(Now(), 1 - dayofweek(Now()) + case when dayofweek(Now()) < 1 then 0 else 7 end + 7)), '%m-%d');