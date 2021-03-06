CREATE USER 'stosh'@'localhost' IDENTIFIED BY 'Linux4you!','kenny'@'localhost' IDENTIFIED BY 'Linux4you!';
CREATE DATABASE dev;
CREATE DATABASE prod;
CREATE TABLE dev.products (productID INT PRIMARY KEY, productType VARCHAR(50), operatingSystem VARCHAR(50));
CREATE TABLE prod.products (productID INT PRIMARY KEY, productType VARCHAR(50), operatingSystem VARCHAR(50));
CREATE TABLE dev.orders (orderID INT PRIMARY KEY, userName VARCHAR(50) UNIQUE, orderType VARCHAR(255), purchaseDate DATE);
CREATE TABLE prod.orders (orderID INT PRIMARY KEY, userName VARCHAR(50) UNIQUE, orderType VARCHAR(255), purchaseDate DATE);
INSERT INTO prod.products (productID,productType,operatingSystem) VALUES (1,'laptop','ubuntu'),(2,'desktop','windows'),(3,'server','rhel');
INSERT INTO prod.orders (orderID,userName,orderType,purchaseDate) VALUES (1,'aaron','laptop','2018-02-23'),(2,'stosh','desktop','2018-01-25'),(3,'kenny','server','2019-12-10');
INSERT INTO dev.products (productID,productType,operatingSystem) VALUES (1,'laptop','ubuntu'),(2,'desktop','windows'),(3,'server','rhel');
INSERT INTO dev.orders (orderID,userName,orderType,purchaseDate) VALUES (1,'aaron','laptop','2018-02-23'),(2,'stosh','desktop','2018-01-25'),(3,'kenny','server','2019-12-10');
GRANT SELECT, INSERT ON prod.orders TO 'kenny'@'localhost';
