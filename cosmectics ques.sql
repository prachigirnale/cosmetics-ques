----1)Query to include reviews for products using inner joins
SELECT p.product_name, b.brand_name, c.category_name, r.rating, r.review_text, r.review_date
FROM products p
INNER JOIN brands b ON p.brand_id = b.brand_id
INNER JOIN categorie c ON p.category_id = c.category_id
INNER JOIN reviews r ON p.product_id = r.product_id;

---2)Query to find products with their average ratings
SELECT p.product_name, b.brand_name, AVG(r.rating) AS average_rating
FROM products p
INNER JOIN brands b ON p.brand_id = b.brand_id
INNER JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_name, b.brand_name
ORDER BY average_rating DESC;

---3)Query to find products with average ratings greater than 4.0
SELECT p.product_name, b.brand_name, AVG(r.rating) AS average_rating
FROM products p
INNER JOIN brands b ON p.brand_id = b.brand_id
INNER JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_name, b.brand_name
HAVING AVG(r.rating) > 4.0
ORDER BY average_rating DESC;

---4)Query to find categories with less than 10 products:
SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM products p
INNER JOIN categorie c ON p.category_id = c.category_id
GROUP BY c.category_name
HAVING COUNT(p.product_id) < 10
ORDER BY product_count DESC;

----5)Query to find the earliest added date among all products:
SELECT MIN(added_date) AS earliest_added_date
FROM products;


-----6)Query to find the lowest price among all products:
SELECT MIN(price) AS lowest_price
FROM products;

----7)Query to find the highest price for each category:
SELECT c.category_name, MAX(p.price) AS highest_price
FROM products p
INNER JOIN categorie c ON p.category_id = c.category_id
GROUP BY c.category_name;


----8)Query to retrieve all products with their associated reviews (including products without reviews):
SELECT p.product_name, r.rating, r.review_text
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id;


----9)Query to calculate the average price per category
SELECT c.category_name, AVG(p.price) AS average_price
FROM products p
INNER JOIN categorie c ON p.category_id = c.category_id
GROUP BY c.category_name;


-----9)Query to retrieve reviews with ratings between 3 and 5
SELECT product_id, rating, review_text
FROM reviews
WHERE rating BETWEEN 3 AND 5;


----10)Query to retrieve products with prices between $5 and $15
SELECT product_name, price
FROM products
WHERE price BETWEEN 5 AND 15;





