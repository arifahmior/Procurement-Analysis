SELECT * FROM sakila.`procurement kpi analysis dataset`;
ALTER TABLE sakila.`procurement kpi analysis dataset`
ADD COLUMN Total_Price DECIMAL (10,2);
SELECT * FROM `procurement kpi analysis dataset` LIMIT 10;
ALTER TABLE sakila.`procurement kpi analysis dataset` DROP COLUMN Total;
SELECT * FROM `procurement kpi analysis dataset` LIMIT 10;
UPDATE sakila.`procurement kpi analysis dataset`
SET Total_Price = Quantity * Unit_Price ;
SELECT * FROM `procurement kpi analysis dataset` LIMIT 10;
DESCRIBE sakila.`procurement kpi analysis dataset`;
ALTER TABLE sakila.`procurement kpi analysis dataset` DROP COLUMN Total_Price;
SELECT * FROM `procurement kpi analysis dataset` LIMIT 10;
ALTER TABLE sakila.`procurement kpi analysis dataset`
ADD COLUMN Total_Price DECIMAL(10, 2);
SELECT Quantity, Unit_Price, (CAST(Quantity AS DECIMAL(10,2)) * CAST(Unit_Price AS DECIMAL(10,2))) AS Total_Price
FROM sakila.`procurement kpi analysis dataset`
LIMIT 10;
SET SQL_SAFE_UPDATES = 0;
UPDATE sakila.`procurement kpi analysis dataset`
SET Total_Price = CAST(Quantity AS DECIMAL(10,2)) * CAST(Unit_Price AS DECIMAL(10,2))
WHERE Quantity IS NOT NULL AND Unit_Price IS NOT NULL;
SET SQL_SAFE_UPDATES = 1;
SELECT Quantity, Unit_Price, Total_Price
FROM sakila.`procurement kpi analysis dataset`
LIMIT 10;
SELECT * FROM sakila.`procurement kpi analysis dataset`;


