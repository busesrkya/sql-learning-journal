-- Topic: DDL - CREATE TABLE and ALTER TABLE
-- Note: this uses a standalone demo table ("products") instead of the shared
-- school schema, so it can be run independently without clashing with the
-- tables already created in 00-schema-and-sample-data.

-- Create a table
CREATE TABLE products
(
    product_id   TINYINT,
    product_name VARCHAR(20)
);

-- Add a new column to an existing table
ALTER TABLE products
ADD stock_quantity SMALLINT;

-- Remove a column from an existing table
ALTER TABLE products
DROP COLUMN stock_quantity;
