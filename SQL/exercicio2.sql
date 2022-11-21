/* Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros encontrados pela busca */
SELECT COUNT(*) FROM
(
SELECT F.title, C.name  FROM film as F 
INNER JOIN film_category as L ON F.film_id = L.film_id
INNER JOIN category as C ON C.category_id = L.category_id
)
AS Filmes;

SELECT COUNT(*) FROM
(
SELECT A.first_name, A.last_name, count(C.film_id) as QtFilme FROM actor as A
LEFT JOIN film_actor as C ON A.actor_id = C.actor_id
GROUP BY A.actor_id
ORDER BY QtFilme DESC
)
AS FilmesDoAtor;

SELECT COUNT(*) FROM
(
SELECT A.first_name, A.last_name, count(F.film_id) as QtFilme FROM actor as A
LEFT JOIN film_actor as C ON A.actor_id = C.actor_id
LEFT JOIN film as F ON C.film_id = F.film_id
WHERE F.length > 120
GROUP BY A.actor_id
ORDER BY QtFilme DESC
)
AS FilmesMaisDe2Horas;