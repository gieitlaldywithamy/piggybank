DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS Categorys;
DROP TABLE IF EXISTS users;


CREATE TABLE category (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) UNIQUE,
  luxury boolean DEFAULT false
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  annual_income NUMERIC(8,2) NOT NULL
  -- time_period_start DATE NOT NULL DEFAULT CURRENT_DATE,
  -- time_period_end DATE NOT NULL
);

CREATE TABLE transactions (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  value NUMERIC(8,2) NOT NULL,
  transaction_date DATE NOT NULL DEFAULT CURRENT_DATE,
  merchant VARCHAR(255),
  Category_id INT4 REFERENCES Categorys(id) ON DELETE CASCADE,
  account_id INT4 REFERENCES users(id) ON DELETE CASCADE
);
