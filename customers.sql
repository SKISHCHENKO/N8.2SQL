CREATE TABLE CUSTOMERS (
    id SERIAL PRIMARY KEY,          -- инкрементируемый первичный ключ
    name VARCHAR(100),              -- имя пользователя
    surname VARCHAR(100),           -- фамилия пользователя
    age INT,                        -- возраст пользователя
    phone_number VARCHAR(15)        -- номер телефона
);