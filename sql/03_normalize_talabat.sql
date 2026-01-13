
CREATE TEMP TABLE talabat_norm AS
SELECT
  store_name,
  name,
  price,
  regexp_replace(lower(store_name), '[^a-z0-9]+', ' ', 'g') AS brand_norm,
  regexp_replace(lower(name), '[^a-z0-9]+', ' ', 'g') AS name_norm,
  size_norm
FROM read_csv_auto('data/raw/talabat_products_sample.csv');
