CREATE TABLE tab_products(
    product_id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    amount INT NOT NULL
);
CREATE TABLE tab_articles(
    article_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    article INT  NOT NULL ,
    manufacture_name TEXT NOT NULL ,
    cost DECIMAL NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id)REFERENCES tab_products (product_id)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
);
CREATE TABLE tab_sale_prices(
    sale_price_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    sale_prise DECIMAL NOT NULL,
    product_id INT NOT NULL,
    article_id INT NOT NULL ,
    FOREIGN KEY (product_id)REFERENCES tab_products (product_id)
      ON UPDATE NO ACTION
      ON DELETE NO ACTION,
    FOREIGN KEY (article_id)REFERENCES tab_articles (article_id)
      ON UPDATE NO ACTION
      ON DELETE NO ACTION

);
CREATE TABLE tab_persons(
   person_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   last_name TEXT NOT NULL ,
   first_name TEXT NOT NULL ,
   patronymic TEXT NUll
);
CREATE TABLE tab_posts
(
   post_id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   post_name TEXT NOT NULL,
   salary    DECIMAL NOT NULL
);
CREATE  TABLE tab_genders(
  gender_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  gender TEXT NOT NULL
);
CREATE TABLE tab_employees(
    employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    person_id INT NOT NULL,
    gender_id INT NOT NULL,
    post_id  INT NOT NULL ,
    date_of_employment DATE NOT NULL,
    FOREIGN KEY (person_id)REFERENCES tab_persons (person_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (gender_id)REFERENCES tab_genders (gender_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (post_id)REFERENCES tab_posts (post_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
CREATE  TABLE tab_clients(
    client_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    person_id INT NOT NULL ,
    gender_id INT NOT NULL,
    client_email INT NOT NULL,
    discount  INT NULL,
    subscription  BOOL,
    FOREIGN KEY (person_id)REFERENCES tab_persons (person_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (gender_id)REFERENCES tab_genders (gender_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
CREATE TABLE tab_client_numbers(
    client_number_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_number  INTEGER NOT NULL,
    person_id INT NOT NULL ,
    client_id INT NOT NULL,
    FOREIGN KEY (person_id)REFERENCES tab_persons (person_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (client_id)REFERENCES tab_clients (client_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
CREATE TABLE tab_orders(
    order_id  INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    date_of_sale DATE NOT NULL,
    person_id INT NOT NULL ,
    employee_id INT  NOT NULL,
    client_id  INT  NOT NULL,
    sale_prise_id INT NOT NULL,
    amount  INTEGER(255) NOT NULL,
    FOREIGN KEY (product_id)REFERENCES tab_products (product_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY  (person_id)REFERENCES tab_persons (person_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (employee_id)REFERENCES tab_employees (employee_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (client_id)REFERENCES tab_clients(client_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (sale_prise_id)REFERENCES tab_sale_prices (sale_price_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION

);










