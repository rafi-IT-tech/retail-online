create database retail_online;

create table retail_online.customer (
    customer_id int primary key AUTO_INCREMENT,
    email_address varchar(50),
    phone_number varchar(50),
    password varchar(255)
);

