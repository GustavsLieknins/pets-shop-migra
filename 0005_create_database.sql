USE pet_shop;
DROP TABLE IF EXISTS pets;  

CREATE TABLE pets (  
  id INT NOT NULL AUTO_INCREMENT,
  species_id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  birth_date DATE NOT NULL,
  sex ENUM('male', 'female') NOT NULL,
  price DECIMAL(6, 2) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_species
    FOREIGN KEY (species_id)
    REFERENCES species(id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);

