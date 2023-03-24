DROP TABLE campaign cascade;
DROP TABLE contacts cascade;
DROP TABLE category cascade;
DROP TABLE subcategory cascade;


-- Create contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

SELECT * FROM contacts;

-- Create category table 
CREATE TABLE category(
    category_id VARCHAR(4) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

SELECT * FROM category;

-- Create subcategory table 
CREATE TABLE subcategory (
	subcategory_id VARCHAR(6) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

SELECT * FROM subcategory;

-- Create campaign table
CREATE TABLE campaign (
    cd_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(4) NOT NULL,
    subcategory_id VARCHAR(6) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM campaign;
