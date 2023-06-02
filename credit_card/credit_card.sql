-- Analysing the credit card details of a credit card processing company 
CREATE TABLE country(
    id int NOT NULL,
    country_name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE card_type(
    id int NOT NULL,
    card_type_name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE customer(
    id int NOT NULL,
    country_id int,
    NIN VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE card_number(
    id int NOT NULL,
    card_number int,
    customer_id int,
    card_type_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (card_type_id) REFERENCES card_type(id)
);

CREATE TABLE card_transaction(
    id int NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    amount int,
    card_number_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (card_number_id) REFERENCES card_number(id)
);

INSERT INTO country(id, country_name)
VALUES (1, 'United Kindgom')
VALUES (2, 'India')
VALUES (3, 'France')
VALUES (4, 'Germany')
VALUES (5, 'USA')