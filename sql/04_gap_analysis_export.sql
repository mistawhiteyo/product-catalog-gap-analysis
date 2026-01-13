
COPY (
  SELECT
    t.store_name AS talabat_brand,
    t.name AS talabat_product_name,
    t.price
  FROM talabat_norm t
  LEFT JOIN snoonu_norm s
    ON t.brand_norm = s.brand_norm
   AND t.name_norm = s.name_norm
   AND t.size_norm = s.size_norm
  WHERE s.product_id IS NULL
)
TO 'outputs/talabat_missing_on_snoonu_sample.csv'
(HEADER, DELIMITER ',');
