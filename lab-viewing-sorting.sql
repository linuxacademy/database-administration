CREATE DATABASE prod;
CREATE TABLE prod.orders (id INT AUTO_INCREMENT PRIMARY KEY , name VARCHAR(50), productID INT, purchaseDate DATE);
CREATE TABLE prod.products (id INT PRIMARY KEY, type VARCHAR(50) UNIQUE, cost INT);
INSERT INTO prod.orders (id,name,productID,purchaseDate) 
	VALUES (1,'aaron',3,'2018-11-24'),(2,'stosh',5,'2018-03-15'),(3,'kenny',1,'2017-12-05'),(4,'mike',1,'2019-01-11'),(5,'myles',3,'2018-02-12'),(6,'corey',7,'2019-01-05'),(7,'will',4,'2018-02-22'),(8,'jess',4,'2019-05-21'),(9,'matt',2,'2018-03-20');
INSERT INTO prod.products (id,type,cost) 
	VALUES (1,'laptop',2200),(2,'desktop',1500),(3,'server',3500),(4,'tablet',750),(5,'iphone',1200),(6,'android',1000),(7,'gps',250);
