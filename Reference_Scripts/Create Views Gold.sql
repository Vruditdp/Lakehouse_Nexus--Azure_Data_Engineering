-- CREATE VIEW CALENDAR ----

CREATE VIEW gold.Calendar
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) AS QUERY1

    -- CREATE VIEW CUSTOMER ----

CREATE VIEW gold.Customer
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) AS QUERY1

-- CREATE VIEW Products ----

CREATE VIEW gold.Products
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) AS QUERY1


-- CREATE VIEW Returns ----

CREATE VIEW gold.Returns
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) AS QUERY1

-- CREATE VIEW Sales ----

CREATE VIEW gold.Sales
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) AS QUERY1

-- CREATE VIEW Subcategories ----

CREATE VIEW gold.Subcategories
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Subcategories/',
        FORMAT = 'PARQUET'
    ) AS QUERY1


-- CREATE VIEW Territories ----

CREATE VIEW gold.Territories
AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://de1datalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) AS QUERY1