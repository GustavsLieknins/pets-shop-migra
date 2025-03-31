USE pet_shop;
DROP TABLE IF EXISTS clients;  

CREATE TABLE clients (  
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  phone_num INT NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
