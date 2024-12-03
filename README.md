## Создание таблицы CUSTOMERS
CREATE TABLE CUSTOMERS (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    age INT,
    phone_number VARCHAR(15)
);

## Создание таблицы ORDERS
CREATE TABLE ORDERS (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id INT,
    product_name VARCHAR(255),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
);

## Запрос для получения названий продуктов для пользователей с именем 'alexey' независимо от регистра
SELECT o.product_name
FROM ORDERS o
JOIN CUSTOMERS c ON o.customer_id = c.id
WHERE LOWER(c.name) = 'alexey';