-- Prevent Negative Stock
CREATE OR REPLACE FUNCTION check_stock()

RETURNS TRIGGER AS
$$

BEGIN

IF NEW.availabilityQuantity < 0 THEN
RAISE EXCEPTION
'Stock cannot be negative';
END IF;

RETURN NEW;

END;

$$ LANGUAGE plpgsql;

-- Activate Trigger 
CREATE TRIGGER stock_validation

BEFORE INSERT OR UPDATE
ON zepto

FOR EACH ROW
EXECUTE FUNCTION check_stock();

-- END--

-- log Price Changes 
CREATE TABLE price_log
(
log_id SERIAL PRIMARY KEY,
sku_id INTEGER,
old_price NUMERIC,
new_price NUMERIC,
updated_at TIMESTAMP
DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION log_price_change()

RETURNS TRIGGER AS
$$

BEGIN

IF OLD.discountedSellingPrice
<> NEW.discountedSellingPrice THEN

INSERT INTO price_log
(
sku_id,
old_price,
new_price
)

VALUES
(
OLD.sku_id,
OLD.discountedSellingPrice,
NEW.discountedSellingPrice
);

END IF;

RETURN NEW;

END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER price_change_trigger

AFTER UPDATE
ON zepto

FOR EACH ROW
EXECUTE FUNCTION log_price_change();