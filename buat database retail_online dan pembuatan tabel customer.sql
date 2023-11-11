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


#product_item

create table retail_online.product_item(
    product_item_id int primary key  auto_increment,
    product_id int ,
    foreign key (product_id) references  retail_online.product(product_id),
    sku varchar(50),
    qty_in_stock int ,
    product_image varchar(250),
    price int
);

#membuat table shopping_cart

create table retail_online.shopping_cart(
    shopping_cart_id int primary key  auto_increment,
    customer_id int,
    foreign key (customer_id) references  retail_online.customer(customer_id)

);




#membuat tabel shopping_cart_item

create table  retail_online.shopping_cart_item(
    shopping_cart_item_id int primary key  auto_increment,
    shopping_cart_id int ,
    foreign key (shopping_cart_id) references  retail_online.shopping_cart(shopping_cart_id),
    product_item_id int ,
    foreign key (product_item_id) references  retail_online.product_item(product_item_id),
    quantity int

);


#membuat tabel shipping_method

create table retail_online.shipping_method(
    shipping_method_id int primary key  auto_increment,
    name varchar(50),
    price int

);


#membuat tabel  order status

 create table retail_online.order_status(
    order_status_id int primary key  auto_increment,
     status boolean
 );


#membuat tabel payment_type
create table retail_online.payment_type(
     payment_type_id int primary key  auto_increment,
     value int
);


#membuat customer_payment_method pada transaksi

create table  retail_online.customer_payment_method(
    customer_payment_method_id int primary key auto_increment,
    customer_id int,
    foreign key (customer_id) references  retail_online.customer(customer_id),
    payment_type_id int ,
    foreign key (payment_type_id) references retail_online.payment_type(payment_type_id),
    provider varchar(50),
    account_number int,
    expired_date date,
    is_default date
);


create  table  retail_online.shop_order(
    shop_order_id int primary key auto_increment,
    customer_id int ,
    foreign key (customer_id) references retail_online.customer(customer_id),
    order_date date,
    payment_type_id int ,
    foreign key (payment_type_id) references  retail_online.payment_type(payment_type_id),
    shipping_method_id int ,
    foreign key (shipping_method_id) references retail_online.shipping_method(shipping_method_id),
    order_total int ,
    order_status_id int ,
    foreign key (order_status_id) references retail_online.order_status(order_status_id)
);

