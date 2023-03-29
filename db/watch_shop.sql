DROP TABLE IF EXISTS watches;
DROP TABLE IF EXISTS brands;

CREATE TABLE brands (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    image VARCHAR(255)
);

CREATE TABLE watches (
    id SERIAL PRIMARY KEY,
    brand_id INT NOT NULL REFERENCES brands(id) ON DELETE CASCADE,
    model VARCHAR(255),
    price INT,
    image VARCHAR(255),  
    sold BOOLEAN 
);


INSERT INTO brands (name, image) VALUES ('Breguet', 'https://www.watches-of-switzerland.co.uk/medias/breguet-6w-logo.png?context=bWFzdGVyfHJvb3R8MTIyNzR8aW1hZ2UvcG5nfGg1Mi9oY2YvOTA5ODgyMjU4MjMwMi5wbmd8ZGU3OGY4OGUyNWIzOTQ2N2IxMmRmZGMyZTA1MmJiMjBjNDI1N2EyZjdhZjE3NjhmNWVkNmJkZDllODQxZDIyNg&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Brietling', 'https://www.watches-of-switzerland.co.uk/medias/breitling-logo.png?context=bWFzdGVyfHJvb3R8MTA5MDV8aW1hZ2UvcG5nfGhjNi9oZDgvOTA5ODgyMjc0NjE0Mi5wbmd8Nzc1N2Q3MzRkZDBlYjRjNDk3NjA1ZjhkYjE0ZjY3NjU5NDgzYTcwZjRmNWQzNzk0N2Q1NjdhMzM2NzE1NmFmZg&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Cartier', 'https://www.watches-of-switzerland.co.uk/medias/cartier-logo.png?context=bWFzdGVyfHJvb3R8NzcxM3xpbWFnZS9wbmd8aGQ0L2hhNS85MDk4ODIzNDk5ODA2LnBuZ3wzYzRjNWQ2MmM2YmVlZGQ4MDc1ZDQwNzlkMjMwNjUyZTk0ZDFmNzI5MjFkNzA5ZGMwYmU0NGRkNjI1ZTg4MWE1&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Hamilton', 'https://www.watches-of-switzerland.co.uk/medias/hamilton-logo.png?context=bWFzdGVyfHJvb3R8NTk2MXxpbWFnZS9wbmd8aDk2L2hhMy85MTU2NDc0MjA4Mjg2LnBuZ3wxZDA3MDlmNzljZGY5NjRkZmRlN2Q1ODJlY2JhNWY0ZmQ2ZmUxMGI3NjE4MmIwMmJmZjUyYjk2YWU4NzdhY2Rl&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Longines', 'https://www.watches-of-switzerland.co.uk/medias/longines-logo.png?context=bWFzdGVyfHJvb3R8ODUyMnxpbWFnZS9wbmd8aDI0L2g1Mi85MDk4ODI2MDg4NDc4LnBuZ3wxZTM5MzFjOTVmMzJlZGJhZjBiNmRjNmYxMjQ1YzVhNzc2NTA0ZDQxMzk0ZWNmNTE4YTgxNjg2ODliMjNhMmM3&imwidth=320');
INSERT INTO brands (name, image) VALUES ('NOMOS Glashute', 'https://www.watches-of-switzerland.co.uk/medias/nomos-glashutte-logo.png?context=bWFzdGVyfHJvb3R8ODA4OXxpbWFnZS9wbmd8aDNiL2g5Zi85MDk4ODI2NjEyNzY2LnBuZ3xlNjEwN2FjMTI5OTRjZTM5ZGQ3YTg1Mzk0YTMzNjNhMTRhZDQxMGQ1M2I4MDcyMDQ2YTVjMWQ4ZDIxNGU0OWJh&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Omega', 'https://www.watches-of-switzerland.co.uk/medias/omega-logo.png?context=bWFzdGVyfHJvb3R8OTQ1M3xpbWFnZS9wbmd8aDUzL2g3Ny85MDk4ODI3MTM3MDU0LnBuZ3xkYTQ3MDc1ZDE1MGI5ZWU5ZGY1YmMxMWU5MzJjMGVlNWJkNDJjMTYwZDQ3ZGZiODA4MWI3YWVmZWMzZWZjMTc3&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Patek Philippe', 'https://www.watches-of-switzerland.co.uk/medias/patek-philippe-6w-logo.png?context=bWFzdGVyfHJvb3R8OTk2NHxpbWFnZS9wbmd8aGMzL2g2MS85MDk4ODIwODc4MzY2LnBuZ3wwY2VmNDViNTU1ZjFlYjA5YWQ3MDRlNDk5NDliZGQzMjY5Nzc3MjM3ODVlNTkxNTgzMjZkYThmYjI2ZWU3Njdk&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Rolex', 'https://www.watches-of-switzerland.co.uk/medias/rolex-logo.png?context=bWFzdGVyfHJvb3R8MjA2ODR8aW1hZ2UvcG5nfGhmNC9oMmYvOTA5ODgyMDc0NzI5NC5wbmd8YzE1OTQ3NWVlYTYyZWYyNmZjOWIzYWIyZDg5ZjExNzY5NWJmYjk4Y2Y4ZmM5ZThmZTQxOWViOTZkM2VjOGJiYQ&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Grand Seiko', 'https://www.watches-of-switzerland.co.uk/medias/grand-seiko-logo.png?context=bWFzdGVyfHJvb3R8MTI0MzZ8aW1hZ2UvcG5nfGg3MC9oYWIvOTA5ODgyNTEwNTQzOC5wbmd8M2RjNTM3ZjdlMWFhMTljYjgwZjAzZGY5ZDY2ZjUwODg4MjI1ZWNhYzcxMGQwOTJiOGQ1NDkzY2I3M2VjNDhjNQ&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Tag Heuer', 'https://www.watches-of-switzerland.co.uk/medias/tag-heuer-logo.png?context=bWFzdGVyfHJvb3R8MTY0MjV8aW1hZ2UvcG5nfGhmOS9oYjUvOTA5ODgzMDY3NTk5OC5wbmd8NGNmMWU3N2JjYmM1Y2VhZTI0YzcyMWEwMGQ3M2VmMzI5ZDliMTdjOGE2MTZiZGNhYWY3ZmUzNjIxZmMzZjVhNw&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Tissot', 'https://www.watches-of-switzerland.co.uk/medias/tissot-logo.png?context=bWFzdGVyfHJvb3R8MTI5MzF8aW1hZ2UvcG5nfGgwMS9oNGIvOTA5ODgzMDgwNzA3MC5wbmd8ZGMwNjJmNTM1N2RlOGRhMWIzN2ZlNDFhYmI4OTVjMDEwNDZhMjEyMzA0ZGM2NThiYTAzNTMwYThlYTdlZTRiZQ&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Tudor', 'https://www.watches-of-switzerland.co.uk/medias/tudor-logo.png?context=bWFzdGVyfHJvb3R8Nzc3M3xpbWFnZS9wbmd8aDQyL2hhYS85MDk4ODMxMjk4NTkwLnBuZ3w5M2E1MzQ3ZjI5Mjk2ODE3NWU3NGFiOTljMDMxOWY1YjQyZDllNDIxYzAzNjUwNjQ5NDhhMzlmZGExM2Y4YWU2&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Vacheron Constantin', 'https://www.watches-of-switzerland.co.uk/medias/vacheron-constantin-logo.png?context=bWFzdGVyfHJvb3R8OTM0M3xpbWFnZS9wbmd8aGE4L2gyOC85MDk4ODMxNTYwNzM0LnBuZ3wwZjM3OGYxZjUwODBlMzk5YTQwZDliYTUzMTY4MDhmNzkyYWRjMTgxNzUwYjZlODlhNDk4YzU3ZDA4MGZjZmYx&imwidth=320');
INSERT INTO brands (name, image) VALUES ('Zenith', 'https://www.watches-of-switzerland.co.uk/medias/zenith-logo.png?context=bWFzdGVyfHJvb3R8NDUwNHxpbWFnZS9wbmd8aDBmL2g2OS85MDk4ODMxNjkxODA2LnBuZ3xlMDYwOGM1MTAxYWVlMjE4N2Q4N2FiMzdhMWE5OTYzYWQ1NjY2ZWM2YjhhODkwMzhkNzk1MjZiOTljMzI3MmEx&imwidth=320');
INSERT INTO brands (name, image) VALUES ('miscellaneous', 'https://cdn.shopify.com/s/files/1/0072/3104/5683/files/miscellaneous_logotype_3137x.png?v=1613526599');


INSERT INTO watches (brand_id, model, price, image, sold) VALUES (3, 'Tank', 10000, 'https://content.thewosgroup.com/productimage/17311221/17311221_1.jpg?impolicy=zoom', False);
INSERT INTO watches (brand_id, model, price, image, sold) VALUES (5, 'Legend Diver', 2000, 'https://content.thewosgroup.com/productimage/17351077/17351077_1.jpg?impolicy=zoom', False);
INSERT INTO watches (brand_id, model, price, image, sold) VALUES (7, 'Seamaster Diver 300', 5500, 'https://content.thewosgroup.com/productimage/17331437/17331437_1.jpg?impolicy=zoom', False);
INSERT INTO watches (brand_id, model, price, image, sold) VALUES (7, 'Speedmaster', 6000, 'https://content.thewosgroup.com/productimage/17331767/17331767_1.jpg?impolicy=zoom', False);
INSERT INTO watches (brand_id, model, price, image, sold) VALUES (9, 'Day Date', 35000, 'https://content.thewosgroup.com/productimage/17305152/17305152_1.png?impolicy=lister-rolex', False);
INSERT INTO watches (brand_id, model, price, image, sold) VALUES (9, 'Explorer', 6000, 'https://content.thewosgroup.com/productimage/17305081/17305081_1.png?impolicy=lister-rolex', False);
INSERT INTO watches (brand_id, model, price, image, sold) VALUES (9, 'Submariner', 8000, 'https://content.thewosgroup.com/productimage/17304427/17304427_1.png?impolicy=lister-rolex', False);

