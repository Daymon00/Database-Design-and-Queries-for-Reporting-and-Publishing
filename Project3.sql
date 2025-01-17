CREATE TABLE reporters(
    reporter_id NUMBER PRIMARY KEY,
    reporter_name VARCHAR2(50) NOT NULL
)
CREATE TABLE offices(
    office_id NUMBER PRIMARY KEY,
    office_name VARCHAR2(50) NOT NULL,
    office_location VARCHAR2(50) NOT NULL
)
CREATE TABLE reporter_offices(
    reporter_id NUMBER,
    office_id NUMBER,
    PRIMARY KEY (reporter_id, office_id),
    FOREIGN KEY (reporter_id) REFERENCES reporters (reporter_id),
    FOREIGN KEY (office_id) REFERENCES offices (office_id)
)
CREATE TABLE articles(
    article_id NUMBER PRIMARY KEY,
    article_title VARCHAR2(50) NOT NULL,
    publish_date DATE NOT NULL,
    article_body VARCHAR2(50) NOT NULL,
    article_status VARCHAR2(50) NOT NULL
)
CREATE TABLE reporter_articles(
    reporter_id NUMBER,
    article_id NUMBER,
    PRIMARY KEY (reporter_id,article_id),
    FOREIGN KEY (reporter_id) REFERENCES reporters (reporter_id),
    FOREIGN KEY (article_id) REFERENCES articles (article_id)
)
CREATE TABLE topics(
    topic_id NUMBER PRIMARY KEY,
    topic_name VARCHAR2(50) NOT NULL
)

CREATE TABLE article_topics(
    article_id NUMBER,
    topic_id NUMBER,
    PRIMARY KEY (article_id, topic_id),
    FOREIGN KEY (article_id) REFERENCES articles (article_id),
    FOREIGN KEY (topic_id) REFERENCES topics (topic_id)
)
CREATE TABLE photos(
    photo_id NUMBER PRIMARY KEY,
    photo_description VARCHAR2(50) NOT NULL
)
CREATE TABLE article_photos(
    article_id NUMBER,
    photo_id NUMBER,
    PRIMARY KEY (article_id, photo_id),
    FOREIGN KEY (article_id) REFERENCES articles (article_id),
    FOREIGN KEY (photo_id) REFERENCES photos (photo_id)
)

--Insert Commands
INSERT INTO reporters (reporter_id, reporter_name) 
VALUES (100, 'James Wu');
INSERT INTO reporters (reporter_id, reporter_name) 
VALUES (101, 'Mary Bow');
INSERT INTO reporters (reporter_id, reporter_name) 
VALUES (102, 'Kat Mars');
INSERT INTO reporters (reporter_id, reporter_name)
VALUES (103, 'Alan Katz');
INSERT INTO reporters (reporter_id, reporter_name)
VALUES (104, 'Bob Marley');
INSERT INTO reporters (reporter_id, reporter_name)
VALUES (105, 'Daymon Wu');

INSERT INTO offices (office_id, office_name, office_location) 
VALUES (10, 'Japan Office', 'Japan');
INSERT INTO offices (office_id, office_name, office_location) 
VALUES (11, 'New York Office', 'New York');
INSERT INTO offices (office_id, office_name, office_location) 
VALUES (12, 'China Office', 'China');
INSERT INTO offices (office_id, office_name, office_location)
VALUES (13, 'Arlington Virginia', 'Arlington');
INSERT INTO offices (office_id, office_name, office_location)
VALUES (14, 'Washington DC', 'Washington');

INSERT INTO reporter_offices (reporter_id, office_id)
VALUES (101, 10);
INSERT INTO reporter_offices (reporter_id, office_id)
VALUES (102, 13);
INSERT INTO reporter_offices (reporter_id, office_id)
VALUES (103, 13);
INSERT INTO reporter_offices (reporter_id, office_id)
VALUES (104, 14);
INSERT INTO reporter_offices (reporter_id, office_id)
VALUES (105, 12);

INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status) 
VALUES (700, 'Cooking with Obama', TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'Wow! Obama can cook!', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status) 
VALUES (701, 'Hello Elmo', TO_DATE('2023-04-16', 'YYYY-MM-DD'), 'Tickle me elmo.', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status) 
VALUES (702, 'Goodwill', TO_DATE('2023-04-17', 'YYYY-MM-DD'), 'I want free shoes.', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (703, 'Photo Only Article 1', TO_DATE('2023-04-01', 'YYYY-MM-DD'), NULL, 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (704, 'Photo Only Article 2', TO_DATE('2023-05-15', 'YYYY-MM-DD'), NULL, 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (705, 'Regular Article', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'This is a regular article with text content.', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (706, 'Cars and Automobiles', TO_DATE('2022-05-17', 'YYYY-MM-DD'), 'The importance of the wheel', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (707, 'Article A', TO_DATE('2023-05-17', 'YYYY-MM-DD'), 'AAAAA', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (708, 'Article B', TO_DATE('2023-02-17', 'YYYY-MM-DD'), 'BBBBB', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (709, 'Article C', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'CCCCC', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (710, 'Article D', TO_DATE('2022-10-10', 'YYYY-MM-DD'), 'Dinosuar', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (711, 'Article E', TO_DATE('2022-05-17', 'YYYY-MM-DD'), 'Elephant', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (712, 'Article F', TO_DATE('2023-07-17', 'YYYY-MM-DD'), 'Fabulous', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (713, 'Article G', TO_DATE('2021-03-17', 'YYYY-MM-DD'), 'Great Depression', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (714, 'Article H', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Hungry Hippos', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (715, 'Article I', TO_DATE('2021-01-10', 'YYYY-MM-DD'), 'In a world far far away', 'Published');


INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (100, 700);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (101, 700);
INSERT INTO reporter_articles (reporter_id, article_id) 
VALUES (102, 701);
INSERT INTO reporter_articles (reporter_id, article_id) 
VALUES (103, 701);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (104, 702);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (104, 702);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 703);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 703);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 704);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 705);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (104, 706);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 707);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 708);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 709);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (102, 710);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (102, 711);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (105, 712);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (102, 713);




INSERT INTO topics (topic_id, topic_name)
VALUES(1, 'Brexit');
INSERT INTO topics (topic_id, topic_name)
VALUES(2, 'Immigration');
INSERT INTO topics (topic_id, topic_name)
VALUES(3, 'General');
INSERT INTO topics (topic_id, topic_name)
VALUES (4, 'Technology');
INSERT INTO topics (topic_id, topic_name)
VALUES (5, 'Healthcare');
INSERT INTO topics (topic_id, topic_name)
VALUES (6, 'Environment');
INSERT INTO topics (topic_id, topic_name)
VALUES (7, 'Sports');
INSERT INTO topics (topic_id, topic_name)
VALUES (8, 'Politics');
INSERT INTO topics (topic_id, topic_name)
VALUES (9, 'Business');
INSERT INTO topics (topic_id, topic_name)
VALUES (10, 'Entertainment');
INSERT INTO topics (topic_id, topic_name)
VALUES (11, 'Education');
INSERT INTO topics (topic_id, topic_name)
VALUES (12, 'Science');
INSERT INTO topics (topic_id, topic_name)
VALUES (13, 'Travel');
INSERT INTO topics (topic_id, topic_name)
VALUES (14, 'Fashion');
INSERT INTO topics (topic_id, topic_name)
VALUES (15, 'Food Places');
INSERT INTO topics (topic_id, topic_name)
VALUES (16, 'Music Today');
INSERT INTO topics (topic_id, topic_name)
VALUES (17, 'Art');
INSERT INTO topics (topic_id, topic_name)
VALUES (18, 'History');
INSERT INTO topics (topic_id, topic_name)
VALUES (19, 'Social Media');
INSERT INTO topics (topic_id, topic_name)
VALUES (20, 'Games');

INSERT INTO article_topics (article_id, topic_id) 
VALUES (700, 1);
INSERT INTO article_topics (article_id, topic_id) 
VALUES (701, 1);
INSERT INTO article_topics (article_id, topic_id) 
VALUES (702, 2);
INSERT INTO article_topics (article_id, topic_id)
VALUES (703, 3);
INSERT INTO article_topics (article_id, topic_id) 
VALUES (704, 3);
INSERT INTO article_topics (article_id, topic_id) 
VALUES (705, 3);
INSERT INTO article_topics (article_id, topic_id) 
VALUES (706, 2);
INSERT INTO article_topics (article_id, topic_id)
VALUES (707, 2);
INSERT INTO article_topics (article_id, topic_id)
VALUES (708, 1);
INSERT INTO article_topics (article_id, topic_id)
VALUES (708, 54);
INSERT INTO article_topics (article_id, topic_id)
VALUES (710, 55);

INSERT INTO photos (photo_id, photo_description) 
VALUES (5000, 'Brexit Photo 1');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5001, 'Immigration Photo 1');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5002, 'Elmo Photo 1');
INSERT INTO photos (photo_id, photo_description)
VALUES (5003, 'Car Photo 1');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5004, 'Brexit Photo 2');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5005, 'Immigration Photo 2');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5006, 'Elmo Photo 2');
INSERT INTO photos (photo_id, photo_description)
VALUES (5007, 'Car Photo 2');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5008, 'Brexit Photo 3');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5009, 'Immigration Photo 3');
INSERT INTO photos (photo_id, photo_description) 
VALUES (5010, 'Elmo Photo 3');
INSERT INTO photos (photo_id, photo_description)
VALUES (5011, 'Car Photo 3');


INSERT INTO article_photos (article_id, photo_id)
VALUES (700, 5000);
INSERT INTO article_photos (article_id, photo_id) 
VALUES (701, 5000);
INSERT INTO article_photos (article_id, photo_id) 
VALUES (702, 5000);
INSERT INTO article_photos (article_id, photo_id)
VALUES (705, 5001);
INSERT INTO article_photos (article_id, photo_id) 
VALUES (706, 5002);
INSERT INTO article_photos (article_id, photo_id) 
VALUES (707, 5003);
INSERT INTO article_photos (article_id, photo_id)
VALUES (708, 5000);


INSERT INTO article_topics (article_id, topic_id)
VALUES (700, 50);
INSERT INTO article_topics (article_id, topic_id)
VALUES (701, 50);
INSERT INTO article_topics (article_id, topic_id)
VALUES (702, 50);
INSERT INTO article_photos (article_id, photo_id)
VALUES (703, 50);
INSERT INTO article_topics (article_id, topic_id)
VALUES (704, 50);
INSERT INTO article_topics (article_id, topic_id)
VALUES (705, 51);
INSERT INTO article_topics (article_id, topic_id)
VALUES (706, 52);
INSERT INTO article_photos (article_id, photo_id)
VALUES (707, 53);
INSERT INTO article_photos (article_id, photo_id)
VALUES (708, 53);

INSERT INTO topics (topic_id, topic_name)
VALUES (50, 'General');
INSERT INTO topics (topic_id, topic_name)
VALUES (51, 'Cars');
INSERT INTO topics (topic_id, topic_name)
VALUES (52, 'News');
INSERT INTO topics (topic_id, topic_name)
VALUES (53, 'Misc');
INSERT INTO topics (topic_id, topic_name)
VALUES (54, 'Yankees');
INSERT INTO topics (topic_id, topic_name)
VALUES (55, 'Education');

INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (800, 'Importance of Education', TO_DATE('2022-05-17', 'YYYY-MM-DD'), 'CUNY offers quality education.', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (801, 'Education and Financial Things', TO_DATE('2022-10-12', 'YYYY-MM-DD'), 'CUNY students financial aid.', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (802, 'CUNY Financial Planning', TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'CUNY has financial aid.', 'Published');

INSERT INTO article_topics (article_id, topic_id)
VALUES (800, 55);
INSERT INTO article_topics (article_id, topic_id)
VALUES (801, 55);
INSERT INTO article_topics (article_id, topic_id)
VALUES (802, 55);

INSERT INTO topics (topic_id, topic_name)
VALUES (55, 'education');

--Question 1
SELECT art.article_title, art.publish_date, rep.reporter_name
FROM articles art
JOIN reporter_articles ra ON art.article_id = ra.article_id
JOIN reporters rep ON ra.reporter_id = rep.reporter_id
JOIN article_topics at ON art.article_id = at.article_id
JOIN topics t ON at.topic_id = t.topic_id
WHERE t.topic_name IN ('Brexit', 'Immigration')
AND art.publish_date >= ADD_MONTHS(TO_DATE('2023-04-17', 'YYYY-MM-DD'), -6)
AND art.article_status = 'Published';
  
--Question 2
SELECT a.article_title, a.publish_date
FROM articles a
JOIN article_topics at ON a.article_id = at.article_id
JOIN topics t ON at.topic_id = t.topic_id
WHERE t.topic_name = 'education'
AND a.publish_date >= TO_DATE('2023-04-17', 'YYYY-MM-DD') - INTERVAL '1' YEAR
AND a.article_body LIKE '%CUNY%'
AND (a.article_body LIKE '%financial%' OR  a.article_body LIKE '%terms%');



--Question 3
SELECT *
FROM topics
WHERE topic_id NOT IN(
    SELECT DISTINCT topic_id
    FROM article_topics
    WHERE article_id IN(
        SELECT article_id
        FROM articles
        WHERE publish_date >= TO_DATE(TO_CHAR(SYSDATE, 'yyyy-mm-dd'), 'yyyy-mm-dd') - 6
        AND article_status = 'published'
        )
)
--Question 4
SELECT t.topic_name, COUNT(*) AS article_count
FROM topics t, article_topics at, articles a
WHERE t.topic_id = at.topic_id
AND at.article_id = a.article_id
AND a.publish_date >= ADD_MONTHS(TO_DATE('2023-05-18', 'YYYY-MM-DD'), -12)
GROUP BY t.topic_name
ORDER BY COUNT(*) DESC
FETCH FIRST 5 ROWS ONLY;

--Question 5
SELECT r.reporter_name, TO_CHAR(a.publish_date, 'YYYY') AS year_published, COUNT(*) AS article_count
FROM reporters r, reporter_articles ra, articles a
WHERE r.reporter_id = ra.reporter_id
AND ra.article_id = a.article_id
AND a.publish_date >= ADD_MONTHS(TRUNC(SYSDATE), -60)
GROUP BY r.reporter_name, TO_CHAR(a.publish_date, 'YYYY')
ORDER BY r.reporter_name;


--Question 6
SELECT ar.article_title, ar.publish_date
FROM articles ar, article_photos ap, photos ph, article_topics at, topics tp
WHERE ar.article_id = ap.article_id
AND ap.photo_id = ph.photo_id
AND ap.article_id = at.article_id
AND at.topic_id = tp.topic_id
AND tp.topic_name = 'Yankees'
AND ar.publish_date >= DATE '2023-05-17' - INTERVAL '6' MONTH;


INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (803, 'Yankees Win the Championship', TO_DATE('2023-05-18', 'YYYY-MM-DD'), 'The New York Yankees win', 'Published');
INSERT INTO article_topics (article_id, topic_id)
VALUES (803, 54);
INSERT INTO topics (topic_id, topic_name)
VALUES (54, 'Yankees');
INSERT INTO photos (photo_id, photo_description)
VALUES (5001, 'Yankees Photo 1');
INSERT INTO article_photos (article_id, photo_id)
VALUES (803, 5001);
--Question 7
SELECT r.reporter_name
FROM reporters r, reporter_articles ra, articles a
WHERE r.reporter_id = ra.reporter_id
AND ra.article_id = a.article_id
AND ra.reporter_id = r.reporter_id
AND a.article_status NOT IN ('Completed', 'Draft')
AND a.publish_date >= SYSDATE - INTERVAL '6' MONTH
ORDER BY r.reporter_name;

--Question 8

SELECT art.article_title, rep.reporter_name, top.topic_name
FROM articles art
JOIN reporter_articles ra ON art.article_id = ra.article_id
JOIN reporters rep ON ra.reporter_id = rep.reporter_id
JOIN article_topics atp ON art.article_id = atp.article_id
JOIN topics top ON atp.topic_id = top.topic_id
WHERE art.publish_date = DATE '2023-05-17'
ORDER BY rep.reporter_name;

INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (100, 800);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (101, 801);
INSERT INTO reporter_articles (reporter_id, article_id)
VALUES (101, 802);

INSERT INTO reports (reporter_id, report_date)
VALUES (100, TO_DATE('2023-05-17', 'YYYY-MM-DD'));
INSERT INTO reports (reporter_id, report_date)
VALUES (101, TO_DATE('2023-05-17', 'YYYY-MM-DD'));

--Question 9
SELECT art.article_title, reporters.reporter_name
FROM articles art
JOIN reporter_articles ra ON art.article_id = ra.article_id
JOIN reporters ON ra.reporter_id = reporters.reporter_id
WHERE art.publish_date = DATE '2023-05-18'
AND art.article_id NOT IN (
    SELECT atp.article_id
    FROM article_topics atp
);

INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (900, 'Artificial Intelligence', DATE '2023-05-18', 'Uhoh', 'Published');
INSERT INTO articles (article_id, article_title, publish_date, article_body, article_status)
VALUES (901, 'Renewable Energy', DATE '2023-05-18','Recycle', 'Published');
INSERT INTO reporters (reporter_id, reporter_name)
VALUES (121, 'Jerry');
INSERT INTO reporters (reporter_id, reporter_name)
VALUES (122, 'Sam');
INSERT INTO reporter_articles (article_id, reporter_id)
VALUES (900, 121);
INSERT INTO reporter_articles (article_id, reporter_id)
VALUES (901, 122);
--Question 10
ALTER TABLE reporters
ADD office_id NUMBER;

UPDATE reporters
SET office_id = (
    SELECT office_id
    FROM offices
    WHERE office_name = 'Washington DC'
)
WHERE office_id = (
    SELECT office_id
    FROM offices
    WHERE office_name = 'Arlington Virginia'
);
--Question 11
SET AUTOCOMMIT OFF;
DELETE FROM topics;
SELECT COUNT(*) AS topic_count FROM topics;
INSERT INTO topics (topic_id, topic_name)
SELECT 1, 'Topic 1' FROM same UNION ALL
SELECT 2, 'Topic 2' FROM same UNION ALL
SELECT 3, 'Topic 3' FROM same UNION ALL 
SELECT 4, 'Topic 4' FROM same UNION ALL
SELECT 5, 'Topic 5' FROM same;
SELECT COUNT(*) AS topic_count FROM topics;
--Question 12
--Window 1
SET AUTOCOMMIT OFF;

CREATE TABLE articles_backup 
AS SELECT * FROM articles;

UPDATE articles 
SET reporter_id = (SELECT reporter_id 
FROM reporters 
WHERE reporter_name = 'Daymon Wu') 
WHERE article_id IN (SELECT article_id 
FROM reporter_articles 
WHERE reporter_id = (SELECT reporter_id 
FROM reporters 
WHERE reporter_name = 'Sam'));


UPDATE reporter_articles 
SET reporter_id = (SELECT reporter_id 
FROM reporters 
WHERE reporter_name = 'Daymon Wu') 
WHERE reporter_id = (SELECT reporter_id 
FROM reporters 
WHERE reporter_name = 'Sam');

DELETE FROM articles;
INSERT INTO articles SELECT * FROM articles_backup;
COMMIT;

DROP TABLE articles_backup;
COMMIT;

--Window 2
SET AUTOCOMMIT OFF;


DELETE FROM articles 
WHERE article_id IN (SELECT article_id 
FROM reporter_articles 
WHERE reporter_id = (SELECT reporter_id 
FROM reporters 
WHERE reporter_name = 'Daymon Wu'));

--Question 13

--Question 14
DESCRIBE reporters;
DESCRIBE offices;
DESCRIBE reporter_offices;
DESCRIBE articles;
DESCRIBE reporter_articles;
DESCRIBE topics;
DESCRIBE article_topics;
DESCRIBE photos;
DESCRIBE article_photos;
--Question 15
SELECT *
FROM v$version;
