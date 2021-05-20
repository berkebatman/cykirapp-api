/* Initialize DB with some seed data */
USE `kirapp_db`;

INSERT INTO user_ratings (user_rating_id, user_rating)
VALUES ("1", 2);
INSERT INTO user_ratings (user_rating_id, user_rating)
VALUES ("2", 1);
INSERT INTO user_ratings (user_rating_id, user_rating)
VALUES ("3", 5);
INSERT INTO user_ratings (user_rating_id, user_rating)
VALUES ("4", 4);
INSERT INTO user_ratings (user_rating_id, user_rating)
VALUES ("5", 3);

INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, city, town, phone_number, user_rating_id)
VALUES ("1","Ahmet", "Akinsql", "2020-11-20", "ahmet@ahmet.com",  123456, "Lefkosa", "Hamitkoy", 05488888888, 1);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, city, town, phone_number, user_rating_id)
VALUES ("2","Cevdet", "Curry" ,"2020-11-20","sefket@google.com", 123456, "Girne", "Alsancak", 05488888888, 2);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, city, town, phone_number, user_rating_id)
VALUES ("3","Musdeyde", "Gahpe" ,"2020-11-20","naughty_girlxx@geraholding.com", 123456, "Magusa", "Gulseren", 05488888888, 3);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, city, town, phone_number, user_rating_id)
VALUES ("4","Feriha", "Garacocco" ,"2020-11-20","garacoco@gmail.com", 123456, "Omorfo", "Kalkanli", 05488888888, 4);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, city, town, phone_number, user_rating_id)
VALUES ("5","Lefkeli", "Ganayakz" ,"2020-11-20","admin@cycodes.com", 123456, "Lefke", "Iskele", 05488888888, 5);

INSERT INTO product_categories (category_id, category_name)
VALUES ("1", "Musical Instruments");
INSERT INTO product_categories (category_id, category_name)
VALUES ("2", "Film and Photography");
INSERT INTO product_categories (category_id, category_name)
VALUES ("3", "Electronics");
INSERT INTO product_categories (category_id, category_name)
VALUES ("4", "Transport");
INSERT INTO product_categories (category_id, category_name)
VALUES ("5", "Holiday and Travel");
INSERT INTO product_categories (category_id, category_name)
VALUES ("6","Home, office and Gardening" );
INSERT INTO product_categories (category_id, category_name)
VALUES ("7", "Sports Equipment");
INSERT INTO product_categories (category_id, category_name)
VALUES ("8", "Storage");

INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("1", "Gibson Les Paul", 100, "../assets/images/gitar.png", "2021-5-20 12:00:00", 3, True, 1, 1);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("2", "Canon Camera Pix S Plus", 40, "../assets/images/kamera.png", "2021-4-20 12:00:00", 4, True, 3, 2);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("3", "Iphone 12", 75, "../assets/images/iphone.png", "2021-5-22 12:00:00", 5, True, 5, 3);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("4", "Bike", 40, "../assets/images/bike.png", "2021-5-16 12:00:00", 5, True, 4, 4);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("5", "Camping tent", 40, "../assets/images/tent.png", "2021-5-14 12:00:00", 5, True, 5, 5);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("6", "Printer", 40, "../assets/images/printer.png", "2021-5-18 12:00:00", 5, True, 5, 6);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("7", "Footbal", 40, "../assets/images/football.png", "2021-5-01 12:00:00", 5, True, 5, 7);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, user_id, category_id )
VALUES ("8", "Storage", 40, "../assets/images/storage.png", "2021-5-04 12:00:00", 5, True, 5, 8);

INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("1", 5, 1);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("2", 2, 2);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("3", 3, 3);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("4", 4, 4);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("5", 5, 5);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("6", 1, 6);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("7", 2, 7);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("8", 2, 8);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("9", 3, 3);
INSERT INTO product_ratings (product_rating_id, product_rating, product_id)
VALUES ("10", 4, 4);

INSERT INTO orders (order_id, user_id, product_id)
VALUES ("1", 1, 1);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("2", 2, 2);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("3", 3, 3);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("4", 4, 4);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("5", 5, 5);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("6", 2, 6);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("7", 3, 7);
INSERT INTO orders (order_id, user_id, product_id)
VALUES ("8", 1, 8);

INSERT INTO order_lines (order_line_id, product_id, order_id)
VALUES ("1", 1, 1);
INSERT INTO order_lines (order_line_id, product_id, order_id)
VALUES ("2", 1, 2);
INSERT INTO order_lines (order_line_id, product_id, order_id)
VALUES ("3", 2, 6);
INSERT INTO order_lines (order_line_id, product_id, order_id)
VALUES ("4", 2, 4);
INSERT INTO order_lines (order_line_id, product_id, order_id)
VALUES ("5", 5, 2);

