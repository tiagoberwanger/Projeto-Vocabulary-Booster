SELECT
T1.ContactName AS "Nome",
T1.Country AS "País",
Count(T2.Country) AS "Número de compatriotas"
FROM w3schools.customers T1, w3schools.customers T2
WHERE T1.Country = T2.Country AND T1.ContactName <> T2.ContactName
GROUP BY T1.Country, T1.ContactName
ORDER BY `Nome`;
