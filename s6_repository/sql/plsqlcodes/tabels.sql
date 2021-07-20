create table regions(
    region_id number(10) PRIMARY KEY,
    region_name VARCHAR2(25) DEFAULT null
);

CREATE TABLE countries (
    country_nbr number(10),
	country_id CHAR (2) PRIMARY KEY,
	country_name VARCHAR2 (40) DEFAULT NULL,
	region_id NUMBER NOT NULL,
	FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE CASCADE
);

select * from countries;

--------------------------------
--INSERT
--------------------------------


/*Data for the table regions*/
INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East and Africa');
 
 
/*Data for the table countries */
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (1, 'AU','Australia',3);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (2, 'AR','Argentina',2);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (3, 'BE','Belgium',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (4, 'BR','Brazil',2);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (5, 'CA','Canada',2);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (6, 'CH','Switzerland',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (7, 'CN','China',3);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (8, 'DE','Germany',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (9, 'DK','Denmark',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (10, 'EG','Egypt',4);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (11, 'FR','France',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (12, 'HK','HongKong',3);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (13, 'IL','Israel',4);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (14, 'IN','India',3);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (15, 'IT','Italy',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (16, 'JP','Japan',3);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (17, 'KW','Kuwait',4);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (18, 'MX','Mexico',2);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (19, 'NG','Nigeria',4);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (20, 'NL','Netherlands',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (21, 'SG','Singapore',3);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (22, 'UK','United Kingdom',1);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (23, 'US','United States of America',2);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (24, 'ZM','Zambia',4);
INSERT INTO countries(country_nbr, country_id,country_name,region_id) VALUES (25, 'ZW','Zimbabwe',4);
 
