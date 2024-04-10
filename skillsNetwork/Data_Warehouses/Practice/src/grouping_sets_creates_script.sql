CREATE SCHEMA IF NOT EXISTS sales;

CREATE TABLE IF NOT EXISTS sales.dimautocategory (
  autoclassid INT GENERATED ALWAYS AS IDENTITY,
  autoclassaltid INT NOT NULL,
  autoclassname VARCHAR(264) NOT NULL,
  isnew BOOLEAN DEFAULT FALSE,
  PRIMARY KEY(autoclassid)
);

CREATE TABLE IF NOT EXISTS sales.dimsalesperson (
  salespersonid INT GENERATED ALWAYS AS IDENTITY,
  salespersonaltid INT NOT NULL,
  salespersonname VARCHAR(264) NOT NULL,
  PRIMARY KEY(salespersonid)
);

CREATE TABLE IF NOT EXISTS sales.dimdate (
  id INT GENERATED ALWAYS AS IDENTITY,
  date VARCHAR(16) NOT NULL,
  day CHAR(2) NOT NULL,
  day_of_week VARCHAR(16),
  month CHAR(2) NOT NULL,
  month_name VARCHAR(16) NOT NULL,
  quarter CHAR(2) NOT NULL, 
  quarter_name VARCHAR(16) NOT NULL,
  year INTEGER NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS sales.factautosales(
  transactionid INT GENERATED ALWAYS AS IDENTITY,
  salesid INT NOT NULL,
  salesdatekey INT NOT NULL,
  autoclassid INT NOT NULL,
  salespersonid INT NOT NULL,
  amount NUMERIC(13, 2) NOT NULL,
  PRIMARY KEY(transactionid),
  CONSTRAINT fk_dimdate
    FOREIGN KEY(salesdatekey) 
	  REFERENCES sales.dimdate(id)
	  ON DELETE CASCADE,
  CONSTRAINT fk_dimautocategory
    FOREIGN KEY(autoclassid) 
	  REFERENCES sales.dimautocategory(autoclassid)
	  ON DELETE CASCADE,
  CONSTRAINT fk_dimsalesperson
    FOREIGN KEY(salespersonid) 
	  REFERENCES sales.dimsalesperson(salespersonid)
	  ON DELETE CASCADE
);
