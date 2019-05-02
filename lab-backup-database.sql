CREATE USER 'corey'@'localhost' IDENTIFIED BY 'Linux4you!';
CREATE USER 'will'@'localhost' IDENTIFIED BY 'Linux4you!';
CREATE USER 'stosh'@'localhost' IDENTIFIED BY 'Linux4you!';
CREATE USER 'kenny'@'localhost' IDENTIFIED BY 'Linux4you!';
CREATE DATABASE dev;
CREATE DATABASE test;
CREATE DATABASE prod;
CREATE TABLE dev.products (productID INT PRIMARY KEY, productType VARCHAR(50), operatingSystem VARCHAR(50));
CREATE TABLE test.products (productID INT PRIMARY KEY, productType VARCHAR(50), operatingSystem VARCHAR(50));
CREATE TABLE prod.products (productID INT PRIMARY KEY, productType VARCHAR(50), operatingSystem VARCHAR(50));
CREATE TABLE dev.orders (orderID INT PRIMARY KEY, userName VARCHAR(50) UNIQUE, orderType VARCHAR(255), purchaseDate DATE);
CREATE TABLE test.orders (orderID INT PRIMARY KEY, userName VARCHAR(50) UNIQUE, orderType VARCHAR(255), purchaseDate DATE);
CREATE TABLE prod.orders (orderID INT PRIMARY KEY, userName VARCHAR(50) UNIQUE, orderType VARCHAR(255), purchaseDate DATE);
INSERT INTO dev.products (productID,productType,operatingSystem) VALUES (1,'laptop','ubuntu'),(2,'desktop','windows'),(3,'server','rhel'),(4,'tablet','android'),(5,'cellphone','ios');
INSERT INTO dev.orders (orderID,userName,orderType,purchaseDate) VALUES (1,'aaron','laptop','2018-02-23'),(2,'stosh','desktop','2018-01-25'),(3,'kenny','server','2019-12-10'),(4,'mike','tablet','2019-04-22'),(5,'myles','cellphone','2019-05-15');
INSERT INTO test.products (productID,productType,operatingSystem) VALUES (1,'laptop','ubuntu'),(2,'desktop','windows'),(3,'server','rhel'),(4,'tablet','android'),(5,'cellphone','ios');
INSERT INTO test.orders (orderID,userName,orderType,purchaseDate) VALUES (1,'aaron','laptop','2018-02-23'),(2,'stosh','desktop','2018-01-25'),(3,'kenny','server','2019-12-10'),(4,'mike','tablet','2019-04-22'),(5,'myles','cellphone','2019-05-15');
INSERT INTO prod.products (productID,productType,operatingSystem) VALUES (1,'laptop','ubuntu'),(2,'desktop','windows'),(3,'server','rhel'),(4,'tablet','android'),(5,'cellphone','ios');
INSERT INTO prod.orders (orderID,userName,orderType,purchaseDate) VALUES (1,'aaron','laptop','2018-02-23'),(2,'stosh','desktop','2018-01-25'),(3,'kenny','server','2019-12-10'),(4,'mike','tablet','2019-04-22'),(5,'myles','cellphone','2019-05-15');
