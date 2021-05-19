/* Initialize DB with some seed data */
USE `cypruscodes_db`;

INSERT INTO user_types (user_role, user_type_id)
VALUES ("admin", 1);
INSERT INTO user_types (user_role, user_type_id)
VALUES ("instructor", 2);
INSERT INTO user_types (user_role, user_type_id)
VALUES ("student", 3);

INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, user_type_id)
VALUES ("1","Ahmet", "Akinsql", "2020-11-20", "ahmet@ahmet.com",  SHA2(CONCAT("123456","KABLO_SOYMA_MAKINESI"), 224), 3);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, user_type_id)
VALUES ("2","Sevket", "Karabacak" ,"2020-11-20","sefket@google.com",  SHA2(CONCAT("123456","KABLO_SOYMA_MAKINESI"), 224),3);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, user_type_id)
VALUES ("3","Musdeyde", "Gera" ,"2020-11-20","naughty_girlxx@geraholding.com",  SHA2(CONCAT("123456","KABLO_SOYMA_MAKINESI"), 224), 3);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, user_type_id)
VALUES ("4","Feriha", "Garacocco" ,"2020-11-20","garacoco@gmail.com",  SHA2(CONCAT("123456","KABLO_SOYMA_MAKINESI"), 224), 2);
INSERT INTO users (user_id, first_name, last_name, date_of_birth, email, password, user_type_id)
VALUES ("5","admin", "admin" ,"2020-11-20","admin@cycodes.com",  SHA2(CONCAT("123456","KABLO_SOYMA_MAKINESI"), 224), 1);


INSERT INTO programs (program_name, duration_hours,duration_weeks, price,currency)
VALUES ("24 week software engineer program","288 hours", "24 weeks" ,13000,"TRY");
INSERT INTO programs (program_name, duration_hours,duration_weeks, price,currency)
VALUES ("8 week software engineer program","68 hours", "8 weeks" ,1500,"TRY");
INSERT INTO programs (program_name, duration_hours,duration_weeks, price,currency)
VALUES ("24 week software engineer program","146 hours", "24 weeks" ,5000,"TRY");


INSERT INTO module_definitions (module_definition_id, program_id, title, `description`, `image`, price, currency)
VALUES ("1","1","Fundamentals","HTML CSS Javascript basics", "../assets/images/course/1.png", "5000","TRY");
INSERT INTO module_definitions (module_definition_id, program_id, title, `description`, `image`, price, currency)
VALUES ("2","1","Frontend","HTML CSS Javascript basics","../assets/images/course/1.png","5000","TRY");
INSERT INTO module_definitions (module_definition_id, program_id, title,`description`, `image`, price, currency)
VALUES ("3","1","Backend","HTML CSS Javascript basics","../assets/images/course/1.png","5000","TRY");
INSERT INTO module_definitions (module_definition_id, program_id, title,`description`, `image`, price, currency)
VALUES ("4","2","Core + Fundamentals","HTML CSS Javascript basics","../assets/images/course/1.png","5000","TRY");


INSERT INTO cohorts (cohort_id,program_id, title, start_date, end_date)
VALUES ("1","1","kasim20","2020-11-20","2020-11-20");
INSERT INTO cohorts (cohort_id,program_id, title, start_date, end_date)
VALUES ("2","2","kasim20","2020-09-20","2020-10-20");
INSERT INTO cohorts (cohort_id,program_id, title, start_date, end_date)
VALUES ("3","1","kasim20","2020-05-20","2020-04-20");

INSERT INTO modules (module_id, cohort_id, module_definition_id)
VALUES ("1","1", "1");
INSERT INTO modules (module_id, cohort_id, module_definition_id)
VALUES ("2","1", "2");
INSERT INTO modules (module_id, cohort_id, module_definition_id)
VALUES ("3","1", "3");

INSERT INTO user_modules (user_module_id, module_id, user_id)
VALUES ("1","1", "1");
INSERT INTO user_modules (user_module_id, module_id, user_id)
VALUES ("2","2", "1");
INSERT INTO user_modules (user_module_id, module_id, user_id)
VALUES ("3","3", "1");

INSERT INTO module_dates (module_dates_id, module_id, class_time)
VALUES ("1","1","2020-11-20 12:00:00");
INSERT INTO module_dates (module_dates_id, module_id, class_time)
VALUES ("2","1","2020-11-20 12:00:00");
INSERT INTO module_dates (module_dates_id, module_id, class_time)
VALUES ("3","1","2020-11-20 12:00:00");
INSERT INTO module_dates (module_dates_id, module_id, class_time)
VALUES ("4","2","2020-11-20 12:00:00");
INSERT INTO module_dates (module_dates_id, module_id, class_time)
VALUES ("5","2","2020-11-20 12:00:00");

-- module 1
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (1,1,"Introduction to Programming", 1);
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (2,1,"Programming Foundations", 2);
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (3,1,"Programming Fundamentals", 3);

-- module 2
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (4,2,"React 1", 1);
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (5,2,"React Testing", 2);

-- module 3
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (6,3,"Express basics", 1);
INSERT INTO chapters(chapter_id, module_definition_id, title, sortIndex)
VALUES (7,3,"Databases", 2);

INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (1,1,"First Page of Introduction to Programming","First page content of Intro to Programming chapter (chapter1)", 1);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (2,1,"Second Page of Introduction to Programming","Second page content will be here for chapter 1", 2);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (3,1,"Third Page of Introduction to Programming","Third page content of Intro to Programming Content ( chapter 2 ", 3);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (4,2,"First Page of Programming Foundations","First page content of Programming Fundamentals (chapter 2)", 1);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (5,2,"Second Page of Programming Foundations","Second page content of programming Fundamentals Content (chapter 2)", 2);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (6,2,"Third Page of Programming Foundations"," Third page content of programming Fundamentals Content (chapter 2)", 3);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (7,3,"First Page of Programming Fundamentals","first page content of programming Fundamentals Content (chapter3)", 1);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (8,3,"Second Page of Programming Fundamentals","second page content programming Fundamentals Content (chapter3)", 2);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (9,3,"Third Page of Programming Fundamentals","third page content of programming Fundamentals Content (chapter3)", 3);
-- module 2
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (10,4,"express","express apis....", 1);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (11,5,"sql queries","how to use mysql", 1);
-- module 3
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (12,6,"react","how create-react-app works", 1);
INSERT INTO pages (page_id, chapter_id, title, page_content, sortIndex) 
VALUES (13,7,"testing react apps","using react-testing-library", 1);

INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (1,1,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (2,2,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (3,3,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (4,4,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (5,5,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (6,6,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (7,7,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (8,8,"xxx");
INSERT INTO page_assets (page_asset_id, page_id, document_url)
VALUES (9,9,"xxx");

INSERT INTO page_quiz (page_quiz_id, page_id) 
VALUES (1,1);
INSERT INTO page_quiz (page_quiz_id, page_id) 
VALUES (2,2);
INSERT INTO page_quiz (page_quiz_id, page_id) 
VALUES (3,3);
INSERT INTO page_quiz (page_quiz_id, page_id) 
VALUES (4,4);
INSERT INTO page_quiz (page_quiz_id, page_id) 
VALUES (5,5);
INSERT INTO page_quiz (page_quiz_id, page_id) 
VALUES (6,6);

INSERT INTO page_questions (page_question_id, page_quiz_id, question_title, option_1, option_2, option_3, option_4, option_5, correct_option) 
VALUES (1,1,"Fundamentals Question", "option 1","option 2","option 3","option 4","option 5",3);
INSERT INTO page_questions (page_question_id, page_quiz_id, question_title, option_1, option_2, option_3, option_4, option_5, correct_option) 
VALUES (2,1,"Fundamentals Question", "option 1","option 2","option 3","option 4","option 5",1);
INSERT INTO page_questions (page_question_id, page_quiz_id, question_title, option_1, option_2, option_3, option_4, option_5, correct_option) 
VALUES (3,2,"Fundamentals Question", "option 1","option 2","option 3","option 4","option 5",4);
INSERT INTO page_questions (page_question_id, page_quiz_id, question_title, option_1, option_2, option_3, option_4, option_5, correct_option) 
VALUES (4,2,"Fundamentals Question", "option 1","option 2","option 3","option 4","option 5",2);
INSERT INTO page_questions (page_question_id, page_quiz_id, question_title, option_1, option_2, option_3, option_4, option_5, correct_option) 
VALUES (5,3,"Fundamentals Question", "option 1","option 2","option 3","option 4","option 5",3);
INSERT INTO page_questions (page_question_id, page_quiz_id, question_title, option_1, option_2, option_3, option_4, option_5, correct_option) 
VALUES (6,3,"Fundamentals Question", "option 1","option 2","option 3","option 4","option 5",3);

INSERT INTO page_feedback (page_feedback_id, user_id, page_id, module_id, created_at, comments, rating) 
VALUES (45,2,1,1,"2020-11-20 12:00:00","bravo!",5);
INSERT INTO page_feedback (page_feedback_id, user_id, page_id, module_id, created_at, comments, rating) 
VALUES (8,2,1,1,"2020-11-20 12:00:00","bravo!",5);
INSERT INTO page_feedback (page_feedback_id, user_id, page_id, module_id, created_at, comments, rating) 
VALUES (7,2,1,1,"2020-11-20 12:00:00","bravo!",5);
INSERT INTO page_feedback (page_feedback_id, user_id, page_id, module_id, created_at, comments, rating) 
VALUES (9,2,1,1,"2020-11-20 12:00:00","bravo!",5);

INSERT INTO user_progress(user_progress_id, user_id, page_id, chapter_id, module_id, completed_at) 
VALUES (1,1,1,1,1,"2020-11-20 12:00:00");
INSERT INTO user_progress(user_progress_id, user_id, page_id, chapter_id, module_id, completed_at) 
VALUES (2,1,2,1,1,"2020-11-20 12:00:00");
INSERT INTO user_progress(user_progress_id, user_id, page_id, chapter_id, module_id, completed_at) 
VALUES (3,1,3,1,1,"2020-11-20 12:00:00");
INSERT INTO user_progress(user_progress_id, user_id, page_id,chapter_id, module_id, completed_at) 
VALUES (4,1,1,1,2,"2020-11-20 12:00:00");

INSERT INTO module_instructors(module_instructor_id, module_id, user_id) 
VALUES (1,2,4);
INSERT INTO module_instructors(module_instructor_id, module_id, user_id) 
VALUES (2,1,3);
INSERT INTO module_instructors(module_instructor_id, module_id, user_id) 
VALUES (3,1,2);

INSERT INTO user_payments(user_payments_id, user_id, transcation_date, amount, payment_method, transaction_ref) 
VALUES (2,2,"2020-11-20",5000,"cash","koopBank");
INSERT INTO user_payments(user_payments_id, user_id, transcation_date, amount, payment_method, transaction_ref) 
VALUES (1,3,"2020-09-20",6000,"cash","koopBank");
INSERT INTO user_payments(user_payments_id, user_id, transcation_date, amount, payment_method, transaction_ref) 
VALUES (3,3,"2021-01-12",5000,"e-transfer","koopBank");

INSERT INTO user_ledgers(cohort_id, user_ledger_id, user_id, amount, description) 
VALUES (1,1,1,3000,"ödendi");
INSERT INTO user_ledgers(cohort_id, user_ledger_id, user_id, amount, description) 
VALUES (2,2,2,3000,"ödendi");
INSERT INTO user_ledgers(cohort_id, user_ledger_id, user_id, amount, description) 
VALUES (2,3,3,5000,"ödendi");

INSERT INTO user_pageviews(user_pageviews_id, user_id, page_id, module_id) 
VALUES (1,1,1,1);
INSERT INTO user_pageviews(user_pageviews_id, user_id, page_id, module_id) 
VALUES (2,2,2,2);
INSERT INTO user_pageviews(user_pageviews_id, user_id, page_id, module_id) 
VALUES (3,3,3,3);

INSERT INTO user_quiz_attempts(user_quiz_attempt_id, user_id, page_question_id, is_correct) 
VALUES (1,1,1,0);
INSERT INTO user_quiz_attempts(user_quiz_attempt_id, user_id, page_question_id, is_correct) 
VALUES (2,2,2,0);
INSERT INTO user_quiz_attempts(user_quiz_attempt_id, user_id, page_question_id, is_correct) 
VALUES (3,3,3,1);
INSERT INTO user_quiz_attempts(user_quiz_attempt_id, user_id, page_question_id, is_correct) 
VALUES (4,4,2,0);

INSERT INTO code_katas(kata_id, module_id, chapter_id, kata_ref, kata_title) 
VALUES (1,1,1,"xyzasdsd","KATA 1");
INSERT INTO code_katas(kata_id, module_id, chapter_id, kata_ref, kata_title) 
VALUES (2,1,2,"asdsdFfdf","KATANA");
INSERT INTO code_katas(kata_id, module_id, chapter_id, kata_ref, kata_title) 
VALUES (3,1,3,"asjkjbf","KATALOGY");

INSERT INTO kata_progress(kata_progress_id, kata_id, module_id, chapter_id, kata_ref, kata_title) 
VALUES (1,2,1,3,"abc","katacik");
INSERT INTO kata_progress(kata_progress_id, kata_id, module_id, chapter_id, kata_ref, kata_title) 
VALUES (2,3,1,2,"aabbg","katacix");
INSERT INTO kata_progress(kata_progress_id, kata_id, module_id, chapter_id, kata_ref, kata_title) 
VALUES (3,2,1,2,"aabbg","katacix"); 

INSERT INTO blog_categories(category,category_slug) 
VALUES ("General", "general");
INSERT INTO blog_categories(category,category_slug) 
VALUES ("Coding", "coding");
INSERT INTO blog_categories(category,category_slug) 
VALUES ("philosophy", "philosophy");

INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (1,1, "The perception of space and how people can adopt a life in outerspace ","to-brighter-futures", "To Brigther Futures", "1Content goes here, if you are interested you will need to sort out the markdown render:p", "2021-04-02 09:00:00");
INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (2,1, "Dont panic! This will be the best read of the year","till-dawn", "Difference between Vampires and Developers", " some Content goes here, if you are interested you will need to sort out the markdown render", "2021-04-10 13:00:00");
INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (1,1, "Animal I have become","animal", "imagine all the people dancing and touching each other", " some more Content goes here, if you are interested you will need to sort out the markdown render", "2021-04-11 15:00:00");
INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (1,1, "My milkshake brings all boys to the yard","hey-you", "Is it me you looking for?", " some Content goes here, if you are interested you will need to sort out the markdown render", "2021-04-10 13:00:00");
INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (1,2, "Simple concepts to get your head around with the basics of Js ","javascript-for-beginners", "Javascript for Beginners", "2Content goes here, if you are interested you will need to sort out the markdown render:p","2021-03-02 12:00:00" );
INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (1,2, "Simple concepts to get your head around with the basics of Phyton ","phyton-for-beginners", "Phyton for Beginners", "Some content goes here, if you are interested you will need to sort out the markdown render:p","2021-04-01 14:00:00" );
INSERT INTO blogs(user_id, category_id, `description`, slug, title, blog_content,published_at) 
VALUES (1,3, "Theory of human body","why-humans-have-two-ears-but-only-one-mouth", "Why two ears and only 1 mouth?", "3Content goes here, if you are interested you will need to sort out the markdown render:p","2020-11-20 12:00:00");

INSERT INTO tags(tag)
VALUES ("Day-read");
INSERT INTO tags(tag)
VALUES ("Javascript");
INSERT INTO tags(tag)
VALUES ("Backend");
INSERT INTO tags(tag)
VALUES ("Epic");
INSERT INTO tags(tag)
VALUES ("Fantastic");
INSERT INTO tags(tag)
VALUES ("Life in Mars");

INSERT INTO blog_tags(blog_id, tag_id)
VALUES (1,6);
INSERT INTO blog_tags(blog_id, tag_id)
VALUES (1,5);
INSERT INTO blog_tags(blog_id, tag_id)
VALUES (2,2);
INSERT INTO blog_tags(blog_id, tag_id)
VALUES (2,3);
INSERT INTO blog_tags(blog_id, tag_id)
VALUES (3,1);
INSERT INTO blog_tags(blog_id, tag_id)
VALUES (3,5);
INSERT INTO blog_tags(blog_id, tag_id)
VALUES (3,6);

INSERT INTO blog_comments(blog_id, comment_content)
VALUES (1,"Wow, this made me wanna scream to the face of my ancestors!");
INSERT INTO blog_comments(blog_id, comment_content)
VALUES (1,"Even Elon Tusk would want to read this.. Health to your hands");
INSERT INTO blog_comments(blog_id, comment_content)
VALUES (2,"I think I should join the course now, no second thoughts");
INSERT INTO blog_comments(blog_id, comment_content)
VALUES (3,"I think you just lost it mate");
INSERT INTO blog_comments(blog_id, comment_content)
VALUES (3,"Grandma, why your ears are so big?! Reminds me something hmm..");

INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (1,"No matter how hot your anger may be, it cannot cook... just sayin");
INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (1,"No matter so close, it might still be far");
INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (3,"Probably the best decision you have taken in your entire life");
INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (3,"Not gonna happen, you're just a lazy basdard we all know that, prove me wrong!");
INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (4,"Cant load an emoji to express my feelings to this comment");
INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (5,"stop it");
INSERT INTO blog_comment_replies(blog_comment_id, comment_reply)
VALUES (5,"jajajajjajaj yeayy im Spanish no? uww yeaa jajajaja");





