
CREATE TEMP TABLE snoonu_norm AS
SELECT
  product_id,
  regexp_replace(lower(brand), '[^a-z0-9]+', ' ', 'g') AS brand_norm,
  regexp_replace(lower(product_name), '[^a-z0-9]+', ' ', 'g') AS name_norm,
  size_norm
FROM snoonu_raw
WHERE is_active = true AND is_deleted = false;
