-- Finding the 5 oldest customers
SELECT * FROM users ORDER BY created_at LIMIT 5;

-- What day of the week most users register on?
SELECT DAYNAME(created_at) AS day, COUNT(*) AS registered FROM users GROUP BY day ORDER BY registered DESC LIMIT 2;

-- Users who have never posted a photo

SELECT username
FROM users
LEFT JOIN photos 
ON users.id = photos.user_id
WHERE photos.id IS NULL;


-- Most popular photo and user who posted it 

SELECT id, image_url, COUNT(*) as total
FROM photos
JOIN likes 
ON likes.photo_id = photos.id
GROUP BY(photos.id) ORDER BY total DESC;


-- How many times does the average user post
SELECT (SELECT Count(*) FROM photos)/(SELECT Count(*) FROM users) AS avg; 

-- Top 5 most commonly used hashtags

SELECT tags.tag_name, COUNT(*) as total
FROM photo_tags
JOIN tags 
ON photo_tags.tag_id = tags.id
GROUP BY(tags.tag_name) ORDER BY total DESC;


-- Find users who have liked every single photo on the website 

SELECT username, Count(*) AS number_likes 
FROM users 
       INNER JOIN likes 
	   ON users.id = likes.user_id 
GROUP BY likes.user_id 
HAVING number_likes = (SELECT Count(*) FROM photos); 





