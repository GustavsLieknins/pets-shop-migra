USE pet_shop;
DROP TABLE IF EXISTS purchases;  

CREATE TABLE purchases (  
  id INT NOT NULL AUTO_INCREMENT,
  employee_id INT NOT NULL,
  client_id INT NOT NULL,
  timestamp DATETIME NOT NULL,
  price INT NOT NULL,
  payment_type VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
  FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);
