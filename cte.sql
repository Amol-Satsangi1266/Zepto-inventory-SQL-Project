-- Top categories by revenue
WITH category_revenue AS
(
SELECT
catrgory,
SUM(discountedSellingPrice * availabilityQuantity)
AS total_revenue
FROM zepto
GROUP BY catrgory
)

SELECT *
FROM category_revenue
WHERE total_revenue > 100000
ORDER BY total_revenue DESC;

-- Rank top discounted products

WITH discount_rank AS
(
SELECT
name,
catrgory,
discountPercent,
RANK() OVER(
ORDER BY discountPercent DESC
) AS rank_num
FROM zepto
)

SELECT *
FROM discount_rank
WHERE rank_num <= 10;