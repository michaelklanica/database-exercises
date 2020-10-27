USE codeup_test_db;

# Select all albums
SELECT * FROM albums;

# multiply all sales by 10
UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums;

# Select all albums released before 1981
SELECT * FROM albums WHERE release_date <= 1980;

# subtract 100 from the release dates of all albums
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT * FROM albums WHERE release_date < 1980;

# Select all albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';

# change artist from michael jackson to peter jackson
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';



