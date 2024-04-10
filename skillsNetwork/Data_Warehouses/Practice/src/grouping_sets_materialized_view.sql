CREATE MATERIALIZED VIEW IF NOT EXISTS DNsales
AS
SELECT date, autoclassname, isnew, salespersonname, amount
FROM sales.factautosales
INNER JOIN sales.dimdate
ON sales.factautosales.salesdatekey = sales.dimdate.id
INNER JOIN sales.dimautocategory
ON sales.factautosales.autoclassid = sales.dimautocategory.autoclassid
INNER JOIN sales.dimsalesperson
ON sales.factautosales.salespersonid = sales.dimsalesperson.salespersonid
ORDER BY date, autoclassname, isnew, salespersonname, amount;

SELECT * FROM DNsales;