USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS '#1';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '#2';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS '#3';
SELECT genre FROM albums WHERE artist = 'Nirvana';

SELECT 'Which albums were released in the 1990s' AS '#4';
SELECT * FROM albums WHERE release_date BETWEEN 1900 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS '#5';
SELECT * FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' AS '#5';
SELECT * FROM albums WHERE genre = 'Rock';



