USE pet_shop;
DROP TABLE IF EXISTS purchase_pets;  

CREATE TABLE purchase_pets (  
  id INT NOT NULL AUTO_INCREMENT,
  pet_id INT NOT NULL,
  purchase_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (pet_id) REFERENCES pets(id) ON DELETE CASCADE,
  FOREIGN KEY (purchase_id) REFERENCES purchases(id) ON DELETE CASCADE
);
