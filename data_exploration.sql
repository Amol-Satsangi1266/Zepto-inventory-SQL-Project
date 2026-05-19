-- Data Exploration --
SELECT COUNT(*) FROM zepto;

-- Sample Data --
SELECT * FROM zepto LIMIT 15;

--null values
SELECT * FROM zepto
WHERE name IS NULL
OR
catrgory IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availabilityQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

--different product categories
SELECT DISTINCT catrgory
FROM zepto
ORDER BY catrgory;

--products in stock vs out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--product names present multiple times
SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;
