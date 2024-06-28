CREATE INDEX idx_category ON Sales("Product Category");
CREATE INDEX idx_total_price ON Sales("Total Revenue");

SELECT "Product Category", ROUND(CAST(SUM("Total Revenue") AS numeric), 2) AS "Total Sales"
FROM "Sales"
GROUP BY "Product Category"
HAVING SUM("Total Revenue") IS NOT NULL;

-- Se agregaron índices a las columnas category y total_price para mejorar la velocidad de la consulta.
-- La cláusula HAVING se utiliza en lugar de WHERE para filtrar después de agrupar los datos, lo cual 
-- resulta más eficiente.