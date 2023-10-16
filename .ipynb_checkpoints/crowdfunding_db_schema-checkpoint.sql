

CREATE TABLE categories (
	PRIMARY KEY (category_id),
	category_id VARCHAR(5) NOT NULL,
	category VARCHAR(20) NOT NULL
);

CREATE TABLE subcategories (
	PRIMARY KEY (subcategory_id),
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(20) NOT NULL
);

CREATE TABLE contacts (
	PRIMARY KEY (contact_id),
	contact_id INT NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(60)
);

-- Create campaign table last since it references other tables
CREATE TABLE campaign (
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id),
	cf_id INT NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(50),
    description VARCHAR(75),
    goal FLOAT(10),
    pledged FLOAT(10),
    outcome VARCHAR(10),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(5),
    subcategory_id VARCHAR(10)
);

--select tables to check csv were imported 
SELECT * FROM categories;

SELECT * FROM subcategories;

SELECT * FROM contacts;

SELECT * FROM campaign;