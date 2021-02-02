SELECT 
ProductName as "Produto",
MIN(o.Quantity) as "Mínima",
MAX(o.Quantity) as "Máxima",
ROUND(AVG(o.Quantity), 2) as "Média"
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.ProductID = o.ProductID
GROUP BY p.ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
