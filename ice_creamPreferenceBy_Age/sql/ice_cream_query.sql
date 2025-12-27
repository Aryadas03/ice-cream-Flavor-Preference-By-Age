CREATE DATABASE IF NOT EXISTS ice_cream_db;
USE ice_cream_db;
DROP TABLE IF EXISTS ice_cream;
CREATE TABLE ice_cream (age INT,flavor VARCHAR(50));
SELECT COUNT(*) FROM ice_cream;
SELECT
    CASE
        WHEN age <= 12 THEN 'Kids'
        WHEN age <= 19 THEN 'Teens'
        WHEN age <= 40 THEN 'Adults'
        ELSE 'Seniors'
    END AS age_group,flavor,COUNT(*) AS total FROM ice_cream GROUP BY age_group, flavor;

