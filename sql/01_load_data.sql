
CREATE TEMP TABLE snoonu_raw AS
SELECT * FROM read_csv_auto('data/raw/snoonu_products_sample.csv');
