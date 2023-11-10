create database retail_online;

create table retail_online.customer (
    customer_id int primary key AUTO_INCREMENT,
    email_address varchar(50),
    phone_number varchar(50),
    password varchar(255)

);

create table retail_online.country (
    country_id int primary key  auto_increment,
    country_name varchar(250)
);

create table  retail_online.address(
    address_id int primary key auto_INCrement,
    unit_number int ,
    street_number int,
    address_line1 varchar(250),
    address_line2 varchar(250),
    city varchar(50),
    region varchar(50),
    postal_code varchar(50),
    country_id int ,
    foreign key (country_id)  REFERENCES  country(country_id)
)


create table retail_online.customer_address(
    customer_id int,
    foreign key (customer_id) references  customer(customer_id),
    address_id int,
    foreign key (address_id) references  address(address_id),
    is_default boolean
);
