CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Synapse@1'

CREATE DATABASE SCOPED CREDENTIAL cred_vrudit
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH (
    LOCATION = 'https://de1datalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_vrudit
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://de1datalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_vrudit
)

CREATE EXTERNAL FILE FORMAT fromat_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


--------------------------------
----create external table extsales----
-------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fromat_parquet
) AS
SELECT * FROM gold.sales

SELECT*FROM gold.extsales


CREATE EXTERNAL TABLE gold.extreturns
WITH(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fromat_parquet
) AS
SELECT * FROM gold.returns

SELECT*FROM gold.extreturns

CREATE EXTERNAL TABLE gold.ext_territories
WITH(
    LOCATION = 'ext_territories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fromat_parquet
) AS
SELECT * FROM gold.territories

SELECT*FROM gold.ext_territories