-- MySQL dump 10.13  Distrib 8.0.19, for osx10.13 (x86_64)
--
-- Host: visiosound-db2.cdci2pdu7byd.eu-west-2.rds.amazonaws.com    Database: cypruscodes_db
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Current Database: `cypruscodes_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kirapp_db` DEFAULT CHARSET = utf8mb4 DEFAULT COLLATE = utf8mb4_unicode_ci;

USE `kirapp_db`;

# DROP TABLE users;
# DROP TABLE user_ratings;
# DROP TABLE products;
# DROP TABLE product_categories;
# DROP TABLE product_ratings;
# DROP TABLE orders;
# DROP TABLE order_lines;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
    user_id int AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(500) NOT NULL,
    city VARCHAR(20) NOT NULL,
    town VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    user_rating_id int,
    FOREIGN KEY (user_rating_id) REFERENCES user_ratings(user_rating_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS user_ratings;
CREATE TABLE user_ratings(
    user_rating_id int AUTO_INCREMENT PRIMARY KEY,
    user_rating int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS products;
CREATE TABLE products(
    product_id int AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    price int NOT NULL,
    `image` VARCHAR(250),
    listed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    rating int, 
    availability BOOLEAN,
    user_id int,
    category_id int,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES product_categories(category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS product_categories;
CREATE TABLE product_categories(
    category_id int AUTO_INCREMENT PRIMARY KEY,
    category_image VARCHAR(250),
    category_name VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS product_ratings;
CREATE TABLE product_ratings(
    product_rating_id int AUTO_INCREMENT PRIMARY KEY,
    product_rating int,
    product_id int,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
    order_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int, 
    product_id int, 
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS order_lines;
CREATE TABLE order_lines(
	order_line_id int AUTO_INCREMENT PRIMARY KEY,
    product_id int,
    order_id int,
  	FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS user_payments;
CREATE TABLE user_payments(
	user_payments_id int AUTO_INCREMENT PRIMARY KEY,
  	user_id INT NOT NULL,
  	transcation_date DATE NOT NULL,
  	amount FLOAT(10,2) NOT NULL,
  	payment_method VARCHAR(100) NOT NULL,
  	transaction_ref VARCHAR(200),
  	FOREIGN KEY (user_id) REFERENCES users(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS blogs;
CREATE TABLE blogs(
    blog_id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id int NOT NULL, 
    `description` VARCHAR(300),
    `image`  VARCHAR(250),
    slug VARCHAR(100) NOT NULL, 
    title VARCHAR(200) NOT NULL,
    blog_content LONGTEXT,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    published_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
