-- Get inventory value of a category

CREATE OR REPLACE FUNCTION get_inventory_value(
category_name VARCHAR
)

RETURNS NUMERIC AS
$$

DECLARE total_value NUMERIC;

BEGIN

SELECT
SUM(discountedSellingPrice * availabilityQuantity)
INTO total_value
FROM zepto
WHERE catrgory = category_name;

RETURN total_value;

END;

$$ LANGUAGE plpgsql;

--CALL
SELECT get_inventory_value('Fruits & Vegetables');

-- Category wise Discount

CREATE OR REPLACE FUNCTION avg_discount(
category_name VARCHAR
)

RETURNS NUMERIC AS
$$

DECLARE avg_disc NUMERIC;

BEGIN

SELECT
AVG(discountPercent)
INTO avg_disc
FROM zepto
WHERE catrgory = category_name;

RETURN ROUND(avg_disc,2);

END;

$$ LANGUAGE plpgsql;

--CALL 

SELECT avg_discount('Snacks');