-- ============================================================
-- Schema: Northwind-style Sales Database
-- Used as the data source for all queries in this repository.
-- Tables: customers, employees, orders, products, categories,
--         suppliers, calendar
-- ============================================================

-- Customers placing orders
CREATE TABLE customers (
  CustomerID   VARCHAR(5) PRIMARY KEY,
  CompanyName  VARCHAR(50) NOT NULL,
  ContactName  VARCHAR(50),
  ContactTitle VARCHAR(50),
  Address      VARCHAR(100),
  City         VARCHAR(50),
  Region       VARCHAR(50),
  PostalCode   VARCHAR(20),
  Country      VARCHAR(50),
  Phone        VARCHAR(20),
  Fax          VARCHAR(20)
);

-- Sales employees who process orders
CREATE TABLE employees (
  EmployeeID      INT PRIMARY KEY,
  FirstName       VARCHAR(255),
  LastName        VARCHAR(255),
  FullName        VARCHAR(255),
  Title           VARCHAR(255),
  TitleOfCourtesy VARCHAR(50),
  Gender          VARCHAR(50),
  BirthDate       DATE,
  HireDate        DATE,
  Address         TEXT,
  City            VARCHAR(255),
  Region          VARCHAR(255),
  PostalCode      VARCHAR(50),
  Country         VARCHAR(255),
  HomePhone       VARCHAR(50),
  Extension       VARCHAR(10),
  ReportsTo       INT
);

-- Orders placed by customers and fulfilled by employees
CREATE TABLE orders (
  OrderID        BIGINT,
  CustomerID     TEXT,
  EmployeeID     BIGINT,
  OrderDate      DATE,
  RequiredDate   DATE,
  ShippedDate    DATE,
  ShipVia        BIGINT,
  Freight        DOUBLE,
  ShipName       TEXT,
  ShipAddress    TEXT,
  ShipCity       TEXT,
  ShipRegion     TEXT,
  ShipPostalCode TEXT,
  ShipCountry    TEXT,
  ProductID      BIGINT,
  UnitPrice      DOUBLE,
  Quantity       BIGINT,
  Discount       DOUBLE,
  Total_Amount   DOUBLE
);

-- Products available for sale
CREATE TABLE products (
  ProductID       INT PRIMARY KEY,
  ProductName     VARCHAR(255),
  SupplierID      INT,
  CategoryID      INT,
  QuantityPerUnit VARCHAR(255),
  UnitPrice       DECIMAL(10,2),
  UnitsInStock    INT,
  UnitsOnOrder    INT,
  ReorderLevel    INT,
  Discontinued    TINYINT(1)
);

-- Product categories
CREATE TABLE categories (
  CategoryID   BIGINT,
  CategoryName TEXT,
  Description  TEXT
);

-- Product suppliers
CREATE TABLE suppliers (
  SupplierID   BIGINT,
  CompanyName  TEXT,
  ContactName  TEXT,
  ContactTitle TEXT,
  Address      TEXT,
  City         TEXT,
  Region       TEXT,
  PostalCode   TEXT,
  Country      TEXT,
  Phone        TEXT,
  Fax          TEXT,
  HomePage     TEXT,
  Products     TEXT
);

-- Date dimension table used for time-based analysis (e.g. shipping latency, trends by quarter)
CREATE TABLE calendar (
  Date               TEXT,
  Year               INT,
  Month_Number       INT,
  Fiscal_Year        INT,
  Fiscal_Month       INT,
  Day                INT,
  Day_Name           TEXT,
  Month_Name         TEXT,
  Quarter_Number     INT,
  Fiscal_Quarter     INT,
  FQuarter_Name      TEXT,
  Week_No            INT,
  Year_Month         TEXT,
  Year_Week          TEXT
);
