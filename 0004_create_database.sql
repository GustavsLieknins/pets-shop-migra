USE pet_shop;
DROP TABLE IF EXISTS employees;  

CREATE TABLE employees (  
  id INT NOT NULL AUTO_INCREMENT,
  client_id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  salary INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);
