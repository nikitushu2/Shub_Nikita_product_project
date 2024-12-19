drop database if exists productdb;
create database productdb;

use productdb;

create table product(
    productId integer not null primary key,
    name varchar(22) not null,
    model integer not null,
    price integer not null,
    type varchar(13) not null

);

insert into product values(1,'name 1',2024, 100, 'tv');
insert into product values(2,'name 2',2020, 700, 'computer');

create user if not exists 'luke'@'localhost';
set password for 'luke'@'localhost' = password('123');

grant all privileges on productdb.* to 'luke'@'localhost';
