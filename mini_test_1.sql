CREATE DATABASE ShopManager;
USE ShopManager;

CREATE TABLE CATEGORY(
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);


CREATE TABLE PRODUCTS(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    product_price DECIMAL(18,2) NOT NULL,
    product_stock INT NOT NULL,
	category_id INT,
    FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
);

INSERT INTO CATEGORY(category_name) VALUES
	("Điện tử"),
    ("Thời trang");
    
INSERT INTO PRODUCTS(product_name, product_price, product_stock, category_id) VALUES
	("iPhone 15", 25000000 ,10 , 1),
    ("Samsung S23", 20000000, 5, 1),
    ("Áo sơ mi nam", 500000, 50, 2),
    ("Giày thể thao", 1200000, 20, 2);

-- Cập nhật 
UPDATE PRODUCTS
SET product_price = 26000000
WHERE product_name = "iPhone 15";

UPDATE PRODUCTS
SET product_stock = product_stock + 10
WHERE category_id = 1;

-- Xoá
DELETE FROM PRODUCTS
WHERE product_id = 4;

DELETE FROM PRODUCTS
WHERE product_price < 1000000;

-- Truy vấn
SELECT * FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE product_stock > 15;
SELECT * FROM PRODUCTS WHERE product_price BETWEEN 1000000 AND 25000000;
SELECT * FROM PRODUCTS WHERE product_name != "iPhone 15" AND product_stock > 0;
SELECT * FROM PRODUCTS WHERE category_id != 1 AND product_price > 5000000;
