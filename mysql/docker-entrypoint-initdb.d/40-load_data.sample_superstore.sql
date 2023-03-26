use sample_superstore;
set character_set_database=utf8mb4;

-- categories
truncate table categories;
load data infile '/var/lib/mysql-files/sample_superstore/categories.csv'
into table categories
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- cities
truncate table cities;
load data infile '/var/lib/mysql-files/sample_superstore/cities.csv'
into table cities
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- countries
truncate table countries;
load data infile '/var/lib/mysql-files/sample_superstore/countries.csv'
into table countries
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- customers
truncate table customers;
load data infile '/var/lib/mysql-files/sample_superstore/customers.csv'
into table customers
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- details
truncate table details;
load data infile '/var/lib/mysql-files/sample_superstore/details.csv'
into table details
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- orders
truncate table orders;
load data infile '/var/lib/mysql-files/sample_superstore/orders.csv'
into table orders
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- products
truncate table products;
load data infile '/var/lib/mysql-files/sample_superstore/products.csv'
into table products
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- regional_managers
truncate table regional_managers;
load data infile '/var/lib/mysql-files/sample_superstore/regional_managers.csv'
into table regional_managers
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- regions
truncate table regions;
load data infile '/var/lib/mysql-files/sample_superstore/regions.csv'
into table regions
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- returns
truncate table returns;
load data infile '/var/lib/mysql-files/sample_superstore/returns.csv'
into table returns
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- segments
truncate table segments;
load data infile '/var/lib/mysql-files/sample_superstore/segments.csv'
into table segments
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- ship_modes
truncate table ship_modes;
load data infile '/var/lib/mysql-files/sample_superstore/ship_modes.csv'
into table ship_modes
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- states
truncate table states;
load data infile '/var/lib/mysql-files/sample_superstore/states.csv'
into table states
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;

-- sub_categories
truncate table sub_categories;
load data infile '/var/lib/mysql-files/sample_superstore/sub_categories.csv'
into table sub_categories
fields
  terminated by ','
  optionally enclosed by '"'
ignore 1 lines;
