drop table if exists zepto

CREATE TABLE zepto(
sku_id SERIAL PRIMARY KEY,
catrgory VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availabilityQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

-- supplier table

CREATE TABLE supplier(
supplier_id SERIAL PRIMARY KEY,
supplier_name VARCHAR(150) NOT NULL,
city VARCHAR(100)
);

ALTER TABLE zepto
ADD COLUMN supplier_id INTEGER;

ALTER TABLE zepto
ADD CONSTRAINT fk_supplier
FOREIGN KEY(supplier_id)
REFERENCES supplier(supplier_id);

INSERT INTO supplier(supplier_name, city)
VALUES
('Fresh Farms','Delhi'),
('Daily Essentials','Mumbai'),
('Organic Mart','Bangalore'),
('Food Basket','Pune');

UPDATE zepto
SET supplier_id =
FLOOR(RANDOM() * 4 + 1);