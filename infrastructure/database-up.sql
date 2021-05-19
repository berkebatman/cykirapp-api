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
# DROP TABLE products;
# DROP TABLE product_categories;
# DROP TABLE orders;
# DROP TABLE order_line;
# DROP TABLE user_ratings;
# DROP TABLE product_ratings;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
    user_id int AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(500) NOT NULL,
    city VARCHAR(20) NOT NULL,
    town VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    user_ratings_id int NOT NULL,
    FOREIGN KEY (user_ratings_id) REFERENCES user_ratings(user_type_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


/*DROP TABLE IF EXISTS user_types;
CREATE TABLE user_types(
    user_role VARCHAR(50) NOT NULL,
    user_type_id int AUTO_INCREMENT PRIMARY KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


DROP TABLE IF EXISTS programs;
CREATE TABLE programs(
    program_id int AUTO_INCREMENT PRIMARY KEY,
    program_name VARCHAR(50) NOT NULL,
    duration_hours VARCHAR(50) NOT NULL,
    duration_weeks VARCHAR(50) NOT NULL,
    price FLOAT(10,2),
    currency VARCHAR(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


DROP TABLE IF EXISTS module_definitions;
CREATE TABLE module_definitions(
    module_definition_id int AUTO_INCREMENT PRIMARY KEY,
    program_id int,
    title VARCHAR(100), 
   `description` VARCHAR(300),
    `image`  VARCHAR(250),
  	price FLOAT(10,2),
  	currency VARCHAR(5),
    FOREIGN KEY (program_id) REFERENCES programs(program_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS cohorts;
CREATE TABLE cohorts(
    cohort_id int AUTO_INCREMENT PRIMARY KEY,
   	program_id int NOT NULL, 
    title VARCHAR(100) NOT NULL, 
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (program_id) REFERENCES programs(program_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS modules;
CREATE TABLE modules(
	module_id INT AUTO_INCREMENT PRIMARY KEY,
  	cohort_id INT,
   	module_definition_id INT NOT NULL,
  	FOREIGN KEY (cohort_id) REFERENCES cohorts(cohort_id),
  	FOREIGN KEY (module_definition_id) REFERENCES module_definitions(module_definition_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS module_dates;
CREATE TABLE module_dates(
	module_dates_id INT AUTO_INCREMENT PRIMARY KEY,
  	module_id INT NOT NULL,
  	class_time DATETIME NOT NULL,
  	FOREIGN KEY (module_id) REFERENCES modules(module_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS module_instructors;
CREATE TABLE module_instructors(
    module_instructor_id INT AUTO_INCREMENT PRIMARY KEY, 
    module_id int NOT NULL,
    user_id int NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS user_modules;
CREATE TABLE user_modules(
    user_module_id INT AUTO_INCREMENT PRIMARY KEY, 
    module_id int,
    user_id int, 
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS chapters;
CREATE TABLE chapters(
    chapter_id int AUTO_INCREMENT PRIMARY KEY,
    module_definition_id int NOT NULL,
    title VARCHAR(100), 
    FOREIGN KEY (module_definition_id) REFERENCES module_definitions(module_definition_id),
    sortIndex int(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS pages;
CREATE TABLE pages (
    page_id int AUTO_INCREMENT PRIMARY KEY,
    chapter_id int NOT NULL,
    title VARCHAR(100), 
    page_content LONGTEXT,
    FOREIGN KEY (chapter_id) REFERENCES chapters(chapter_id),
    sortIndex int(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS user_ledgers;
CREATE TABLE user_ledgers(
    cohort_id int,
    user_ledger_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int NOT NULL,
    amount FLOAT(10,2), 
    `description` VARCHAR(100),
    FOREIGN KEY (cohort_id) REFERENCES cohorts(cohort_id)
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

CREATE TABLE page_assets(
    page_asset_id int AUTO_INCREMENT PRIMARY KEY,
    page_id int,
    document_url VARCHAR(200) NOT NULL,
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE user_progress(
    user_progress_id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id int NOT NULL,
    page_id int NOT NULL,
    chapter_id int NOT NULL,
    module_id int NOT NULL,
    completed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (chapter_id) REFERENCES chapters(chapter_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE user_pageviews(
    user_pageviews_id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id int NOT NULL,
    page_id int NOT NULL,
    module_id int NOT NULL,
    viewed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE page_feedback(
    page_feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id int NOT NULL,
    page_id int NOT NULL,
    module_id int NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    comments VARCHAR(750),
    rating int,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE page_quiz(
    page_quiz_id  int AUTO_INCREMENT PRIMARY KEY,
    page_id int NOT NULL,
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE page_questions(
    page_question_id  int AUTO_INCREMENT PRIMARY KEY,
    page_quiz_id int NOT NULL,
    question_title VARCHAR(300) NOT NULL,
    option_1 VARCHAR(300),
    option_2 VARCHAR(300),
    option_3 VARCHAR(300),
    option_4 VARCHAR(300),
    option_5 VARCHAR(300),
    correct_option int,
    FOREIGN KEY (page_quiz_id) REFERENCES page_quiz(page_quiz_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE user_quiz_attempts(
    user_quiz_attempt_id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id int NOT NULL,
    page_question_id int NOT NULL,
    attempted_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    is_correct TINYINT(1),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (page_question_id) REFERENCES page_questions(page_question_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE code_katas(
    kata_id int AUTO_INCREMENT PRIMARY KEY,
    module_id int NOT NULL,
    chapter_id int,
    kata_ref VARCHAR(250),
    kata_title VARCHAR(250),
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    FOREIGN KEY (chapter_id) REFERENCES chapters(chapter_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE kata_progress(
    kata_progress_id int AUTO_INCREMENT PRIMARY KEY,
    kata_id int,
    module_id int NOT NULL,
    chapter_id int,
    kata_ref VARCHAR(250),
    kata_title VARCHAR(250),
    completed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (module_id) REFERENCES modules(module_id),
    FOREIGN KEY (chapter_id) REFERENCES chapters(chapter_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS blog_status;
CREATE TABLE blog_status(
    status_id INT AUTO_INCREMENT PRIMARY KEY, 
    blog_status VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS blog_categories;
CREATE TABLE blog_categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(100) NOT NULL,
    category_slug VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS blogs;
CREATE TABLE blogs(
    blog_id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id int NOT NULL, 
    blog_status_id int NOT NULL,
    category_id int NOT NULL,
    `description` VARCHAR(300),
    `image`  VARCHAR(250),
    slug VARCHAR(100) NOT NULL, 
    title VARCHAR(200) NOT NULL,
    blog_content LONGTEXT,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    published_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (blog_status_id) REFERENCES blog_status (status_id),
    FOREIGN KEY (category_id) REFERENCES blog_categories (category_id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS tags;
CREATE TABLE tags(
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(50)
);

DROP TABLE IF EXISTS blog_tags;
CREATE TABLE blog_tags(
    blog_tag_id INT AUTO_INCREMENT PRIMARY KEY,
    blog_id INT NOT NULL, 
    tag_id INT NOT NULL,
    FOREIGN KEY (blog_id) REFERENCES blogs (blog_id),
    FOREIGN KEY (tag_id) REFERENCES tags (tag_id)
);

DROP TABLE IF EXISTS blog_comments;
CREATE TABLE blog_comments(
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    blog_id INT NOT NULL,
    comment_content VARCHAR(300),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (blog_id) REFERENCES blogs (blog_id)
);

DROP TABLE IF EXISTS blog_comment_replies;
CREATE TABLE blog_comment_replies(
    comment_reply_id INT AUTO_INCREMENT PRIMARY KEY,
    blog_comment_id INT NOT NULL,
    comment_reply VARCHAR(300),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (blog_comment_id) REFERENCES blog_comments (comment_id)
);
