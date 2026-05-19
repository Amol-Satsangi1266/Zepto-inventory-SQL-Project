-- Products with Supplier Names 
SELECT
z.name,
z.catrgory,
z.discountedSellingPrice,
s.supplier_name,
s.city
FROM zepto z
INNER JOIN supplier s
ON z.supplier_id = s.supplier_id
LIMIT 20;


-- Total Inventory By Supplier

SELECT
s.supplier_name,
COUNT(z.sku_id) AS total_products,
SUM(z.availabilityQuantity) AS stock
FROM supplier s
LEFT JOIN zepto z
ON s.supplier_id = z.supplier_id
GROUP BY s.supplier_name
ORDER BY stock DESC;