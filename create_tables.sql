CREATE TABLE tab_products(
    product_id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name TEXT NOT NULL ,
    load_type    TEXT NOT NULL ,
    amount       INTEGER(255)NOT NULL ,
    cost         INTEGER(255)NOT NULL ,
    manufacturer TEXT NOT NULL,
    sale_price   INTEGER(255) NOT NULL
);

CREATE TABLE tab_employees(
    employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    last_name   TEXT NOT NULL ,
    first_name  TEXT NOT NULL ,
    patronymic  TEXT NULL,
    gender     TEXT NOT NULL ,
    date_of_employment DATE NOT NULL ,
    post       TEXT NOT NULL ,
    salary     INTEGER(255)
);
CREATE  TABLE tab_client(
    client_id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    last_name   TEXT NOT NULL ,
    first_name  TEXT NOT NULL ,
    patronymic  TEXT NULL,
    gender      TEXT NOT NULL,
    phone       INTEGER(255)NOT NULL ,
    email       INTEGER(150)NOT NULL ,
    discount    INT NULL ,
    subscription BOOL
);

CREATE TABLE tab_orders(
    order_id      INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id    TEXT NOT NULL,
    date_of_sale  DATE NOT NULL ,
    employee_id   TEXT NOT NULL,
    client_id     TEXT NOT NULL,
    sale_prise    INTEGER(255) NOT NULL,
    amount        INTEGER(255) NOT NULL
);