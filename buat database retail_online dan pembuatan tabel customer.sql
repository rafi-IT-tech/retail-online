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
);


create table retail_online.customer_address(
    customer_id int,
    foreign key (customer_id) references  customer(customer_id),
    address_id int,
    foreign key (address_id) references  address(address_id),
    is_default boolean
);

# Tabel promosi
create  table  retail_online.promotion (
    promotion_id int primary key  auto_increment,
    name varchar(50),
    description varchar(50),
    discount_rate varchar(50),
    start_date date,
    end_date date

);

#product Category

    create table retail_online.product_category(
        id int primary key  auto_increment,
        parent_category_id int ,
        category_name varchar(50)

    );


#product

    create table retail_online.product(
      product_id int primary key  auto_increment ,
      category_id int,
      foreign key (category_id) references  retail_online.product_category(id),
        name varchar(250),
        description text,
        product_image varchar(250)
    );

#promosi category
create table retail_online.promotion_category(
    category_id int,
    foreign key (category_id) references  retail_online.product_category(id),
    promotion_id int ,
    foreign key (promotion_id) references retail_online.promotion(promotion_id)
);