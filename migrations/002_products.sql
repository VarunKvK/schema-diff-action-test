CREATE TABLE products (
  id serial PRIMARY KEY,
  sku text NOT NULL UNIQUE,
  price numeric(10,2) NOT NULL
);

ALTER TABLE orders ADD COLUMN product_id integer REFERENCES products (id);
-- audit: status defaults to pending for new orders
