CREATE TABLE categories (
	PRIMARY KEY (category_id),
	category_id VARCHAR(4) NOT NULL, -- VARCHAR(4) since cat1...cat9, could use VARCHAR(5) if want: cat10, etc.
	category VARCHAR(20) NOT NULL -- VARCHAR(20) since longest is "film & video" (12)
);

CREATE TABLE subcategories (
	PRIMARY KEY (subcategory_id),
	subcategory_id VARCHAR(8) NOT NULL, -- VARCHAR(8) since subcat1...subcat9, could use VARCHAR(9) if want: subcat100, etc.
	subcategory VARCHAR(20) NOT NULL -- VARCHAR(20) since longest is "photography books" (17)
);

CREATE TABLE contacts (
	PRIMARY KEY (contact_id),
	contact_id INT NOT NULL,
	first_name VARCHAR(30), -- longest is 12 char
	last_name VARCHAR(30), -- longest is 13 char
	email VARCHAR(60) -- longest is 42
);

-- Create campaign table last since references other tables
CREATE TABLE campaign (
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id),
	cf_id INT NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(50), -- longest is 33 chars
    description VARCHAR(75), -- longest is 53 chars
    goal FLOAT(10), -- Max digits = 7, i.e. 142400.0 (remove decimal point)
    pledged FLOAT(10), -- as with goal
    outcome VARCHAR(10), -- longest is 10, "successful", not expecting to have different option?
    backers_count INT,
    country VARCHAR(2), -- all country abbreviations to 2 chars
    currency VARCHAR(3), -- currency abbreviations to 3 chars
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(4), -- as above
    subcategory_id VARCHAR(8) -- as above
);