-- Creating 4 tables campaign, category, subcategory, contact

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contact (contact_id),
	company_name VARCHAR(80) NOT NULL,
	description VARCHAR(100),
	goal REAL,
	pledged REAL,
	outcome VARCHAR(20),
	backers_count VARCHAR(20),
	country VARCHAR(10),
	currency VARCHAR(10),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(10), 
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	subcategory_id VARCHAR(10),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE contact (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(80) NOT NULL
);

-- view the tables after importing data from csv files

SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contact;