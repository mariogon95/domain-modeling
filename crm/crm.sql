-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS industries;

-- CREATE TABLES

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  adress TEXT,
  phone_number TEXT,
  company_id TEXT
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    communication TEXT,
    date_time TEXT,
    notes TEXT,
    salesperson_id INTEGER,
    contact_id INTEGER
);

CREATE TABLE companies ( 
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Industry_name TEXT
);

--Illll
CREATE TABLE industry_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    inudstry_id INTEGER
)