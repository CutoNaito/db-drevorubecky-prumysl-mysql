CREATE DATABASE drevorubecky_prumysl;
USE drevorubecky_prumysl;
SET @@AUTOCOMMIT = 0;

-- init
START TRANSACTION;
CREATE TABLE customer(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_city` INT NOT NULL,
    `surname` VARCHAR(50) NOT NULL,
    `first_name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(50),
    `ICO` long,
    `IC_DPH` long,
    `total_spending` int,
    CONSTRAINT `id_city_const` FOREIGN KEY (`id_city`) REFERENCES cities(`id`) 
);

CREATE TABLE countries(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE cities(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_country` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `zipcode` INT,
    CONSTRAINT `id_country_const` FOREIGN KEY (`id_country`) REFERENCES countries(`id`) 
);

CREATE TABLE products(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_subcategory` INT NOT NULL,
    `id_color` INT NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `price` FLOAT NOT NULL,
    `price_exc_dph` FLOAT NOT NULL,
    `dph` FLOAT NOT NULL,
    CONSTRAINT `id_subcategory_const` FOREIGN KEY (`id_subcategory`) REFERENCES subcategories(`id`),
    CONSTRAINT `id_color_const` FOREIGN KEY (`id_color`) REFERENCES colors(`id`) 
);

CREATE TABLE categories(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(50)
);

CREATE TABLE subcategories(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_category` INT NOT NULL,
    `name` VARCHAR(50),
    CONSTRAINT `id_category_const` FOREIGN KEY (`id_category`) REFERENCES categories(`id`)
);

CREATE TABLE colors(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(50),
    `hex` VARCHAR(6)
);

CREATE TABLE stores(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_city` INT NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    CONSTRAINT `id_city_const2` FOREIGN KEY (`id_city`) REFERENCES cities(`id`) 
);

CREATE TABLE product_availability(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_store` INT NOT NULL,
    `id_product` INT NOT NULL,
    CONSTRAINT `id_store_const` FOREIGN KEY (`id_store`) REFERENCES stores(`id`),
    CONSTRAINT `id_product_const` FOREIGN KEY (`id_product`) REFERENCES products(`id`) 
);

CREATE TABLE orders(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_customer` INT NOT NULL,
    `id_product_availability` INT NOT NULL,
    `date` DATETIME NOT NULL,
    `price_sum` FLOAT NOT NULL,
    `price_sum_exc_dph` FLOAT NOT NULL,
    `dph_sum` FLOAT NOT NULL,
    CONSTRAINT `id_customer_const` FOREIGN KEY (`id_customer`) REFERENCES customer(`id`),
    CONSTRAINT `id_product_availability_const` FOREIGN KEY (`id_product_availability`) REFERENCES product_availability(`id`)
);
COMMIT;
-- ;;

-- country insertion
START TRANSACTION;
LOAD DATA INFILE "D:/countries.csv" -- needs to be replaced
	INTO TABLE `countries`
    FIELDS TERMINATED BY ","
    LINES TERMINATED BY "\n"
    (`name`);
COMMIT;
-- ;;

-- colors insertion
START TRANSACTION;
LOAD DATA INFILE "D:/colors.csv" -- needs to be replaced
	INTO TABLE `colors`
    FIELDS TERMINATED BY ","
    LINES TERMINATED BY "\n"
    (`name`, `hex`);
COMMIT;
-- ;;

-- other data insertion
START TRANSACTION;
INSERT INTO categories (name) VALUES
	("Clothing"),
	("Electronics"),
	("Home & Garden");
COMMIT;

START TRANSACTION;
INSERT INTO subcategories (id_category, name) VALUES
	(1, "Men's Clothing"),
	(1, "Women's Clothing"),
	(1, "Children's Clothing"),
	(2, "Computers"),
	(2, "Cell Phones"),
	(2, "Television"),
	(3, "Furniture"),
	(3, "Appliances"),
	(3, "Outdoor");
COMMIT;

START TRANSACTION;
INSERT INTO cities (id_country, name, zipcode) VALUES
	(511, "Prague", 12000),
	(512, "Brno", 61500),
	(513, "Bratislava", 81101),
	(514, "Kosice", 04011),
	(515, "Budapest", 1054),
	(516, "Debrecen", 4032),
	(517, "Warsaw", 00-001),
	(518, "Krakow", 31-155),
	(518, "Berlin", 10115),
	(518, "Munich", 80331);
COMMIT;

START TRANSACTION;
INSERT INTO stores (id_city, address) VALUES
	(1, "Wenceslas Square 12"),
	(2, "Freedom Square 3"),
	(3, "Main Street 45"),
	(4, "Liberty Avenue 5"),
	(5, "Alexanderplatz 1"),
	(6, "Marienplatz 2");
COMMIT;
    
START TRANSACTION;
INSERT INTO products (id_subcategory, id_color, name, price, price_exc_dph, dph) VALUES
	(1, 1024, "Red T-Shirt", 15.99, 13.23, 0.21),
	(2, 1025, "Orange Dress", 45.99, 38.17, 0.19),
	(3, 1026, "Yellow Sweater", 35.99, 30.02, 0.2),
	(4, 1027, "Green Laptop", 999.99, 833.33, 0.2),
	(5, 1028, "Blue Smartphone", 499.99, 416.66, 0.2),
	(6, 1029, "Purple Sofa", 799.99, 666.66, 0.2);
COMMIT;

START TRANSACTION;
INSERT INTO product_availability (id_store, id_product) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(3, 6);
COMMIT;

START TRANSACTION;
INSERT INTO customer (id_city, surname, first_name, address, ico, ic_dph) VALUES
	(11, "Novak", "Jiri", "Lidicka 25", 12345678, 87654321),
	(12, "Svoboda", "Pavel", "Hlavna 58", 23456789, 98765432),
	(13, "Kovac", "Ivan", "Mierova 3", 34567890, 10987654),
	(14, "Molnar", "Miklos", "Szentharomsag 7", 45678901, 21091987),
	(15, "Schmidt", "Johannes", "Alexanderstrasse 9", 56789012, 32109876);
COMMIT;

    
-- views
CREATE VIEW `list_of_countries` AS
	SELECT * FROM countries;
    
CREATE VIEW `customer_orders` AS
	SELECT c.surname, c.first_name, c.address, p.name, o.date, o.price_sum
	FROM customer AS c
	INNER JOIN orders AS o ON c.id = o.id_customer
	INNER JOIN product_availability AS pa ON o.id_product_availability = pa.id
	INNER JOIN products AS p ON pa.id_product = p.id;
    
CREATE VIEW `product_sales` AS
	SELECT p.name, COUNT(o.id) AS num_sales, SUM(o.price_sum) AS total_revenue
	FROM products AS p
	INNER JOIN product_availability AS pa ON p.id = pa.id_product
	INNER JOIN orders AS o ON pa.id = o.id_product_availability
	GROUP BY p.name;

CREATE VIEW `top_customers` AS
	SELECT c.surname, c.first_name, c.address, SUM(o.price_sum) AS total_spending
	FROM customer AS c
	INNER JOIN orders AS o ON c.id = o.id_customer
	GROUP BY c.id
	ORDER BY total_spending DESC
	LIMIT 5;

SELECT * from top_customers;

-- procedures
DELIMITER //
CREATE PROCEDURE `add_customer` (IN first_name VARCHAR(50), IN last_name VARCHAR(50), IN country VARCHAR(50), IN city VARCHAR(50), IN zip_code VARCHAR(50), IN address VARCHAR(100))
BEGIN
	DECLARE `country_id` INT;
    DECLARE `city_id` INT;
    SELECT id INTO `country_id` FROM countries WHERE `name` = country;
    SELECT id INTO `city_id` FROM cities WHERE `name` = city AND `zipcode` = zip_code;
    
    INSERT INTO `customer` (id_city, surname, first_name, address) VALUES (city_id, last_name, first_name, address);
END//

DELIMITER //    
CREATE PROCEDURE `delete_customer` (IN first_name VARCHAR(50), IN last_name VARCHAR(50), IN ico LONG, IN ic_dph LONG)
BEGIN
	DECLARE `customer_id` INT;
    SELECT id INTO `customer_id` FROM customer WHERE customer.`first_name` = first_name AND customer.`last_name` = last_name AND customer.`ICO` = ico AND customer.`IC_DPH` = ic_dph;
    DELETE FROM `customer` WHERE id = `customer_id`;
    DELETE FROM `orders` WHERE id_customer = `customer_id`;
END//

DELIMITER //
CREATE PROCEDURE `update_product_price` (IN id INT, IN new_price FLOAT)
BEGIN
    UPDATE `products`
    SET price = `new_price`
    WHERE id = `id`;
END//

-- triggers
DELIMITER //
CREATE TRIGGER `update_customer_spending` AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE customer
    SET total_spending = total_spending + NEW.`price_sum`
    WHERE id = NEW.`id_customer`;
END;

-- indexes
CREATE INDEX idx_customer_id_city ON customer (id_city);
CREATE INDEX idx_customer_surname ON customer (surname);
CREATE INDEX idx_countries_name ON countries (name);
CREATE INDEX idx_cities_id_country ON cities (id_country);
CREATE INDEX idx_cities_name ON cities (name);
CREATE INDEX idx_products_id_subcategory ON products (id_subcategory);
CREATE INDEX idx_products_id_color ON products (id_color);
CREATE INDEX idx_categories_name ON categories (name);
CREATE INDEX idx_subcategories_id_category ON subcategories (id_category);
CREATE INDEX idx_colors_name ON colors (name);
CREATE INDEX idx_stores_id_city ON stores (id_city);

-- users and roles
CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'readonly_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'dataentry_user'@'localhost' IDENTIFIED BY 'password';

CREATE ROLE `sales_representative`;
GRANT SELECT, INSERT, UPDATE ON drevorubecky_prumysl.customer TO sales_representative;
GRANT sales_representative TO 'app_user'@'localhost';

CREATE ROLE `read_only_user`;
GRANT SELECT ON drevorubecky_prumysl.* TO read_only_user;
GRANT `read_only_user` TO 'readonly_user'@'localhost';

CREATE ROLE `data_entry_user`;
GRANT INSERT, UPDATE ON drevorubecky_prumysl.customer TO data_entry_user;
GRANT INSERT, UPDATE ON drevorubecky_prumysl.orders TO data_entry_user;
GRANT `data_entry_user` TO 'dataentry_user'@'localhost';