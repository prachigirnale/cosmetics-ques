-- Create table for Brands
CREATE TABLE brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL,
    headquarters_location VARCHAR(100),
    founding_year INT,
    website_url VARCHAR(255),
    contact_email VARCHAR(100)
);
select * from brands
-- Insert sample data into Brands with additional columns
INSERT INTO brands VALUES(brand_id, brand_name, headquarters_location, founding_year, website_url, contact_email) 
insert into brands values(1, 'Maybelline', 'New York, USA', 1915, 'https://www.maybelline.com', 'info@maybelline.com')
,(2, 'Oreal', 'Paris, France', 1909, 'https://www.loreal.com', 'info@loreal.com')
,(3, 'Revlon', 'New York, USA', 1932, 'https://www.revlon.com', 'info@revlon.com')
,(4, 'Clinique', 'New York, USA', 1968, 'https://www.clinique.com', 'info@clinique.com')
,(5, 'Estée Lauder', 'New York, USA', 1946, 'https://www.esteelauder.com', 'info@esteelauder.com')
,(6, 'Neutrogena', 'Los Angeles, USA', 1930, 'https://www.neutrogena.com', 'info@neutrogena.com')
,(7, 'The Body Shop', 'Brighton, UK', 1976, 'https://www.thebodyshop.com', 'info@thebodyshop.com')
,(8, 'Nivea', 'Hamburg, Germany', 1882, 'https://www.nivea.com', 'info@nivea.com')
,(9, 'Shiseido', 'Tokyo, Japan', 1872, 'https://www.shiseido.com', 'info@shiseido.com')
,(10, 'MAC Cosmetics', 'New York, USA', 1984, 'https://www.maccosmetics.com', 'info@maccosmetics.com')
,(11, 'Bobbi Brown', 'New York, USA', 1991, 'https://www.bobbibrowncosmetics.com', 'info@bobbibrown.com')
,(12, 'Urban Decay', 'Newport Beach, USA', 1996, 'https://www.urbandecay.com', 'info@urbandecay.com')
,(13, 'Too Faced', 'Irvine, USA', 1998, 'https://www.toofaced.com', 'info@toofaced.com')
,(14, 'Anastasia Beverly Hills', 'Los Angeles, USA', 1997, 'https://www.anastasiabeverlyhills.com', 'info@anastasiabeverlyhills.com')
,(15, 'Charlotte Tilbury', 'London, UK', 2013, 'https://www.charlottetilbury.com', 'info@charlottetilbury.com')
,(16, 'Huda Beauty', 'Dubai, UAE', 2013, 'https://www.hudabeauty.com', 'info@hudabeauty.com')
,(17, 'Fenty Beauty', 'New York, USA', 2017, 'https://www.fentybeauty.com', 'info@fentybeauty.com')
,(18, 'Kylie Cosmetics', 'Los Angeles, USA', 2015, 'https://www.kyliecosmetics.com', 'info@kyliecosmetics.com')
,(19, 'Pat McGrath Labs', 'New York, USA', 2015, 'https://www.patmcgrath.com', 'info@patmcgrath.com')
,(20, 'Morphe', 'San Francisco, USA', 2008, 'https://www.morphe.com', 'info@morphe.com')

select * from brands
	
-- Create table for Categories
CREATE TABLE categorie (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    main_purpose VARCHAR(255),
    typical_products TEXT,
    skin_types_applicable VARCHAR(100)
);
select * from categorie

-- Insert sample data into Categories with additional columns
INSERT INTO categorie VALUES  (category_id, category_name, main_purpose, typical_products, skin_types_applicable) 
insert into categorie values(1, 'Skincare', 'To maintain healthy skin', 'Moisturizers, cleansers, serums', 'All skin types')
,(2, 'Makeup', 'To enhance appearance', 'Foundation, lipstick, eyeshadow', 'Varies by product')
,(3, 'Haircare', 'To maintain healthy hair', 'Shampoo, conditioner, hair oil', 'All hair types')
,(4, 'Fragrance', 'To provide a pleasant scent', 'Perfume, cologne, body spray', 'N/A')
,(5, 'Sun Protection', 'To protect skin from UV rays', 'Sunscreen, sunblock', 'All skin types')
,(6, 'Body Care', 'To care for the skin on the body', 'Body lotion, body wash, exfoliant', 'All skin types')
,(7, 'Nail Care', 'To care for nails and cuticles', 'Nail polish, nail treatment, nail tools', 'N/A')
,(8, 'Men''s Grooming', 'To cater to men''s skincare and grooming needs', 'Shaving cream, aftershave, beard oil', 'All skin types')
,(9, 'Organic & Natural', 'To provide products made from natural ingredients', 'Organic skincare, natural makeup', 'All skin types')
,(10, 'Anti-Aging', 'To address signs of aging', 'Anti-wrinkle cream, firming serum', 'Mature skin')
,(11, 'Sensitive Skin', 'To cater to sensitive skin types', 'Hypoallergenic skincare, fragrance-free products', 'Sensitive skin')
,(12, 'Acne Treatment', 'To treat and prevent acne', 'Acne cleanser, spot treatment, oil-free moisturizer', 'Acne-prone skin')
,(13, 'Hair Color', 'To color and enhance hair appearance', 'Hair dye, root touch-up, hair color remover', 'All hair types')
,(14, 'Hair Styling', 'To style and manage hair', 'Hair gel, mousse, hair spray', 'All hair types')
,(15, 'Lip Care', 'To care for lips and provide hydration', 'Lip balm, lip scrub, lip mask', 'All skin types')
,(16, 'Eye Care', 'To care for the delicate eye area', 'Eye cream, eye serum, eye makeup remover', 'All skin types')
,(17, 'Hand Care', 'To care for hands and nails', 'Hand cream, hand sanitizer, cuticle oil', 'N/A')
,(18, 'Tanning & Bronzing', 'To achieve a sun-kissed glow', 'Self-tanner, bronzer, tan extender', 'All skin types')
,(19, 'Foot Care', 'To care for feet and improve foot health', 'Foot cream, foot scrub, foot mask', 'N/A')
,(20, 'Bath & Shower', 'To cleanse and refresh the body', 'Body wash, bath salts, shower gel', 'All skin types');


-- Create table for Products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    brand_id INT,
    category_id INT,
    price DECIMAL(10, 2),
    added_date DATE,
    on_sale BOOLEAN
);
select * from products
-- Insert sample data into Products
INSERT INTO products (product_id, product_name, brand_id, category_id, price, added_date, on_sale) VALUES
insert into products values(1, 'Lipstick', 1, 2, 9.99, '2024-01-01', TRUE)
,(2, 'Foundation', 2, 2, 19.99, '2024-02-01', FALSE)
,(3, 'Shampoo', 3, 3, 5.99, '2024-03-01', TRUE)
,(4, 'Moisturizer', 1, 1, 14.99, '2024-04-01', FALSE)
,(5, 'Concealer', 1, 2, 12.99, '2024-04-15', TRUE)
,(6, 'Blush', 2, 2, 8.99, '2024-04-20', FALSE)
,(7, 'Eyeliner', 3, 2, 7.99, '2024-04-25', TRUE)
,(8, 'Sunscreen', 1, 1, 15.99, '2024-05-01', FALSE)
,(9, 'Conditioner', 2, 3, 6.99, '2024-05-05', TRUE)
,(10, 'Face Wash', 3, 1, 5.49, '2024-05-10', FALSE)
,(11, 'Mascara', 1, 2, 11.49, '2024-05-15', TRUE)
,(12, 'Hair Oil', 2, 3, 9.99, '2024-05-20', FALSE)
,(13, 'Face Serum', 3, 1, 20.99, '2024-05-25', TRUE)
,(14, 'Nail Polish', 1, 2, 4.99, '2024-06-01', FALSE)
,(15, 'Hand Cream', 2, 1, 6.49, '2024-06-05', TRUE)
,(16, 'Body Lotion', 3, 1, 8.49, '2024-06-10', FALSE)
,(17, 'Lip Balm', 1, 2, 3.99, '2024-06-15', TRUE)
,(18, 'Hair Spray', 2, 3, 10.99, '2024-06-20', FALSE)
,(19, 'BB Cream', 3, 2, 14.49, '2024-06-25', TRUE)
,(20, 'Toner', 1, 1, 7.99, '2024-06-30', FALSE);

-- Create table for Reviews
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date DATE
);

-- Insert sample data into Reviews
INSERT INTO reviews  VALUES(review_id, product_id, rating, review_text, review_date)
insert into reviews values(1, 1, 5, 'Great color and lasts long!', '2024-05-01')
,(2, 2, 4, 'Good coverage but a bit pricey.', '2024-05-15')
,(3, 3, 3, 'Average shampoo, nothing special.', '2024-06-01')
,(4, 4, 5, 'Excellent moisturizer for daily use.', '2024-06-10')
,(5, 5, 4, 'Provides good protection without feeling greasy.', '2024-06-20')
,(6, 6, 3, 'Decent blush, but not very long-lasting.', '2024-07-01')
,(7, 7, 5, 'Love this eyeliner! Goes on smoothly and stays put.', '2024-07-15')
,(8, 8, 4, 'Effective sunscreen, absorbs well.', '2024-07-30')
,(9, 9, 2, 'Conditioner didn''t work well for my hair type.', '2024-08-05')
,(10, 10, 4, 'Gentle on the skin and leaves it feeling refreshed.', '2024-08-15')
,(11, 11, 5, 'Favorite mascara! Adds volume without clumping.', '2024-08-25')
,(12, 12, 3, 'Hair oil made my hair greasy.', '2024-09-01')
,(13, 13, 5, 'Love this face serum! Makes my skin glow.', '2024-09-10')
,(14, 14, 2, 'Nail polish chipped quickly.', '2024-09-20')
,(15, 15, 4, 'Hand cream absorbs well and smells great.', '2024-09-30')
,(16, 16, 3, 'Body lotion was okay, not very moisturizing.', '2024-10-10')
,(17, 17, 4, 'Lip balm is hydrating and has a nice scent.', '2024-10-20')
,(18, 18, 5, 'Great hold without making hair stiff.', '2024-10-25')
,(19, 19, 3, 'BB cream was too sheer for my liking.', '2024-11-05')
,(20, 20, 4, 'Toner helps balance my skin and reduce oiliness.', '2024-11-15');

select * from reviews


