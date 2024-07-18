create table ETL
("Rank" int,
BankName varchar(50),
MarketCap_US$billion varchar(100),
MarketCap_EURbillion varchar(100),
MarketCap_GBPbillion varchar(100),
MarketCap_INRbillion varchar(100)

);

BULK INSERT dbo.ETLP1
FROM 'D:\Data Engineering\Project 1\ETL P1.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 
);
