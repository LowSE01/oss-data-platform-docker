-- @formatter:off

create database if not exists sample_superstore;
use sample_superstore;

-- ----------------------------
-- table structure for categories
-- ----------------------------
drop table if exists categories;
create table categories (
  category_id bigint not null,
  category varchar(32),
  primary key (category_id)
);

-- ----------------------------
-- table structure for cities
-- ----------------------------
drop table if exists cities;
create table cities (
  city_id bigint not null,
  city varchar(32),
  state_id bigint default null,
  primary key (city_id),
  index (state_id)
);

-- ----------------------------
-- table structure for countries
-- ----------------------------
drop table if exists countries;
create table countries (
  country_id bigint not null,
  country varchar(32),
  primary key (country_id)
);

-- ----------------------------
-- table structure for customers
-- ----------------------------
drop table if exists customers;
create table customers (
  customer_id char(20) not null,
  customer_name varchar(32),
  segment_id bigint default null,
  primary key (customer_id),
  index (segment_id)
);

-- ----------------------------
-- table structure for details
-- ----------------------------
drop table if exists details;
create table details (
  row_id bigint not null,
  order_id char(20),
  product_id bigint default null,
  sales double default null,
  quantity bigint default null,
  discount double default null,
  profit double default null,
  primary key (row_id),
  index (order_id),
  index (product_id)
);

-- ----------------------------
-- table structure for orders
-- ----------------------------
drop table if exists orders;
create table orders (
  order_id char(20) not null,
  order_date date default null,
  ship_date date default null,
  ship_mode_id bigint default null,
  customer_id char(20),
  city_id bigint default null,
  postal_code varchar(8),
  primary key (order_id),
  index (ship_mode_id),
  index (customer_id),
  index (city_id)
);

-- ----------------------------
-- table structure for products
-- ----------------------------
drop table if exists products;
create table products (
  product_id bigint not null,
  sub_category_id bigint default null,
  product_name varchar(128),
  primary key (product_id),
  index (sub_category_id)
);

-- ----------------------------
-- table structure for regional_managers
-- ----------------------------
drop table if exists regional_managers;
create table regional_managers (
  regional_manager_id bigint not null,
  regional_manager varchar(32),
  region_id bigint default null,
  primary key (regional_manager_id),
  index (region_id)
);

-- ----------------------------
-- table structure for regions
-- ----------------------------
drop table if exists regions;
create table regions (
  region_id bigint not null,
  country_id bigint default null,
  region varchar(8),
  primary key (region_id),
  index (country_id)
);

-- ----------------------------
-- table structure for returns
-- ----------------------------
drop table if exists returns;
create table returns (
  return_id bigint not null,
  returned varchar(8),
  order_id char(20),
  primary key (return_id),
  index (order_id)
);

-- ----------------------------
-- table structure for segments
-- ----------------------------
drop table if exists segments;
create table segments (
  segment_id bigint not null,
  segment varchar(16),
  primary key (segment_id)
);

-- ----------------------------
-- table structure for ship_modes
-- ----------------------------
drop table if exists ship_modes;
create table ship_modes (
  ship_mode_id bigint not null,
  ship_mode varchar(16),
  primary key (ship_mode_id)
);

-- ----------------------------
-- table structure for states
-- ----------------------------
drop table if exists states;
create table states (
  state_id bigint not null,
  state varchar(32),
  region_id bigint default null,
  primary key (state_id),
  index (region_id)
);

-- ----------------------------
-- table structure for sub_categories
-- ----------------------------
drop table if exists sub_categories;
create table sub_categories (
  sub_category_id bigint not null,
  category_id bigint default null,
  sub_category varchar(16),
  primary key (sub_category_id),
  index (category_id)
);
