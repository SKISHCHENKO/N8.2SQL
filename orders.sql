CREATE TABLE ORDERS (
    id SERIAL PRIMARY KEY,          -- инкрементируемый первичный ключ
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- дата заказа, по умолчанию текущее время
    customer_id INT,                -- внешний ключ, ссылающийся на id из таблицы CUSTOMERS
    product_name VARCHAR(255),      -- наименование товара
    amount INT,                     -- количество товара
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)  -- внешний ключ
);