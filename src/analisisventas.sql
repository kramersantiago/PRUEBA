CREATE INDEX idx_category ON Sales("Product Category");
CREATE INDEX idx_region ON Sales("Region");
CREATE INDEX idx_total_price ON Sales("Total Revenue");

SELECT "Product Category", "Region", ROUND(CAST(SUM("Total Revenue") AS numeric), 2) AS "Total Sales"
FROM "Sales"
GROUP BY "Product Category", "Region"
HAVING SUM("Total Revenue") IS NOT NULL;

-- Se observa un mayor total de ventas en Norteamérica con un total de 34982.41 en la categoría “Electrónica”, además, los libros 
-- generan más ingresos en Norteamérica con un total de 1861.93.

-- La categoría de “Electrodomésticos” generó un total de ventas mayor en Europa con 18646.16, junto con la categoría de 
-- “Productos de belleza” con un total de 2621.90.

-- Las categorías “Deportes” e “Indumentaria” generaron más ingresos en Asia, con 14326.52 y 8128.93 respectivamente.
