/*
--------------------------------------------------------------------
© 2017 sqlservertutorial.net All Rights Reserved
--------------------------------------------------------------------
Name   : BikeStores
Link   : http://www.sqlservertutorial.net/load-sample-database/
Version: 1.0
--------------------------------------------------------------------
*/

/*
Differences in MySQL from MS SQL Server, regarding this file:

MySQL: DROP DATABASE
MS SQL: DROP SCHEMA

*/

-- Drop tables in the correct order to avoid foreign key issues
DROP TABLE IF EXISTS sales.order_items;
DROP TABLE IF EXISTS sales.orders;
DROP TABLE IF EXISTS production.stocks;
DROP TABLE IF EXISTS production.products;
DROP TABLE IF EXISTS production.categories;
DROP TABLE IF EXISTS production.brands;
DROP TABLE IF EXISTS sales.customers;
DROP TABLE IF EXISTS sales.staffs;
DROP TABLE IF EXISTS sales.stores;

-- Drop database instead of schema (deletes databases)
DROP DATABASE IF EXISTS sales;
DROP DATABASE IF EXISTS production;
DROP DATABASE IF EXISTS BikeStores;