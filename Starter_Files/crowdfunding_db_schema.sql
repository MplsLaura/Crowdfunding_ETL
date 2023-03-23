DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;


CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(100)   NOT NULL,
    description varchar(100)   NOT NULL,
    goal real   NOT NULL,
    pledged real   NOT NULL,
    outcome varchar(20)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(5)   NOT NULL,
    currency varchar(5)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    staff_pick boolean   NOT NULL,
    spotlight boolean   NOT NULL,
    category_id varchar(5)   NOT NULL,
    subcategory_id varchar(8)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE category (
    category_id varchar(5)   NOT NULL,
    category varchar(20)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(8)   NOT NULL,
    subcategory varchar(20)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

select * from category
select * from contacts
select * from subcategory
select * from campaign