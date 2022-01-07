SELECT uczniowie.imię, uczniowie.nazwisko, oceny.ocena, oceny.data_otrzymania
FROM oceny
JOIN uczniowie
ON uczniowie.id = oceny.uczen_id
WHERE data_otrzymania LIKE '2019-%'
ORDER BY oceny.data_otrzymania;

SELECT opiekunowie.adres_mailowy, opiekunowie.imie, opiekunowie.nazwisko
FROM opiekunowie
JOIN uczniowie
ON uczniowie.opiekun_id = opiekunowie.id OR uczniowie.opiekun_id2 = opiekunowie.id
WHERE uczniowie.id IN (
	SELECT uczniowie.id
  	FROM uczniowie
  	JOIN oceny
  	ON oceny.uczen_id = uczniowie.id
    JOIN sprawdziany
    ON sprawdziany.id = oceny.sprawdzian_id
    WHERE oceny.ocena = 1 AND sprawdziany.typ = 'klasówka'
  	GROUP BY uczniowie.id
  	HAVING COUNT(oceny.id) >= 3	
)

SELECT sprawdziany.typ, AVG(oceny.ocena)
FROM sprawdziany
JOIN oceny
ON oceny.sprawdzian_id = sprawdziany.id
WHERE oceny.data_otrzymania LIKE '2020-%'
GROUP BY sprawdziany.typ

