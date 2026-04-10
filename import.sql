CREATE TABLE online_retail (
    invoiceno TEXT,
    stockcode TEXT,
    description TEXT,
    quantity INTEGER,
    invoicedate TEXT,
    unitprice TEXT,
    customerid TEXT,
    country TEXT
);

COPY online_retail
FROM '/online_retail.csv'
DELIMITER ';'
CSV HEADER;

ALTER TABLE online_retail
ADD COLUMN unitprice_num NUMERIC;

UPDATE online_retail
SET unitprice_num = REPLACE(unitprice, ',', '.')::NUMERIC;

ALTER TABLE online_retail
ADD COLUMN invoicedate_date TIMESTAMP;

UPDATE online_retail
SET invoicedate_date = TO_TIMESTAMP(invoicedate, 'DD/MM/YYYY HH24:MI');