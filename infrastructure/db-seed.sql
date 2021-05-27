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

INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("1", "Musical Instruments", "../assets/images/guitar.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("2", "Film and Photography", "../assets/images/camera.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("3", "Electronics", "../assets/images/iphone.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("4", "Transport", "../assets/images/bike.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("5", "Holiday and Travel", "../assets/images/tent.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("6","Home, office and Gardening", "../assets/images/printer.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("7", "Sports Equipment", "../assets/images/football.svg");
INSERT INTO product_categories (category_id, category_name, category_image)
VALUES ("8", "Storage", "../assets/images/storage.svg");

INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("1", "Gibson Les Paul", 100, "../assets/images/gitar.png", "2021-5-20 12:00:00", 3, True, "Lefkosa", "Gonyeli", 1, 1);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("2", "Canon Camera Pix S Plus", 40, "../assets/images/kamera.png", "2021-4-20 12:00:00", 4, True, "Girne", "Alsancak", 3, 2);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("3", "Iphone 12", 75, "../assets/images/iphone.png", "2021-5-22 12:00:00", 5, True, "Magusa", "Tuzla", 5, 3);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("4", "Bike", 40, "../assets/images/bike.png", "2021-5-16 12:00:00", 5, True, "Omorfo", "Kalkanli", 4, 4);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("5", "Camping tent", 40, "../assets/images/tent.png", "2021-5-14 12:00:00", 5, True, "Omorfo", "Merkez", 5, 5);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("6", "Printer", 40, "../assets/images/printer.png", "2021-5-18 12:00:00", 5, True, "Girne", "Lapta", 5, 6);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town,user_id, category_id )
VALUES ("7", "Footbal", 40, "../assets/images/football.png", "2021-5-01 12:00:00", 5, True, "Lefke", "Yesilirmak", 5, 7);
INSERT INTO products (product_id, product_name, price, `image`, listed_at, rating, availability, product_city, product_town, user_id, category_id )
VALUES ("8", "Storage", 40, "../assets/images/storage.png", "2021-5-04 12:00:00", 5, True, "Lefkosa", "Hamitkoy", 5, 8);

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

INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (1, "The perception of space and how people can adopt a life in outerspace ","to-brighter-futures", "To Brigther Futures", "1Content goes here, if you are interested you will need to sort out the markdown render:p", "2021-04-02 09:00:00");
INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (2, "Dont panic! This will be the best read of the year","till-dawn", "Difference between Vampires and Developers", " some Content goes here, if you are interested you will need to sort out the markdown render", "2021-04-10 13:00:00");
INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (3, "Animal I have become","animal", "imagine all the people dancing and touching each other", " some more Content goes here, if you are interested you will need to sort out the markdown render", "2021-04-11 15:00:00");
INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (4, "My milkshake brings all boys to the yard","hey-you", "Is it me you looking for?", " some Content goes here, if you are interested you will need to sort out the markdown render", "2021-04-10 13:00:00");
INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (2, "Simple concepts to get your head around with the basics of Js ","javascript-for-beginners", "Javascript for Beginners", "2Content goes here, if you are interested you will need to sort out the markdown render:p","2021-03-02 12:00:00" );
INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (1, "Simple concepts to get your head around with the basics of Phyton ","phyton-for-beginners", "Phyton for Beginners", "Some content goes here, if you are interested you will need to sort out the markdown render:p","2021-04-01 14:00:00" );
INSERT INTO blogs(user_id, `description`, slug, title, blog_content,published_at) 
VALUES (1, "Theory of human body","why-humans-have-two-ears-but-only-one-mouth", "Why two ears and only 1 mouth?", "3Content goes here, if you are interested you will need to sort out the markdown render:p","2020-11-20 12:00:00");