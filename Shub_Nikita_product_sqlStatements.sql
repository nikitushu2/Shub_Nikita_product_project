insert ignore into product (productId, name, model, price, type)
values
(3, 'NexGen 2', 2018, 100, 'monitor'),
(2, 'Mercury', 2005, 700, 'tv'),
(6, 'Future 2025', 2011, 200, 'radio'),
(5, 'MaxEffect 2000', 1990, 300, 'phone'),
(7, 'Beast II', 2010, 1500, 'stereo'),
(4, 'Cosmos', 2017, 2000, 'toaster'),
(1, 'Tako delux', 2012, 499, 'moccamaster');

select * from product;
select price, type, productId from product;
select * from product where name = 'Mercury';
select * from product where price = 200;
select * from product where model = 2015;

update product
set model = 2018, price = 700
where productId = 6;

update product
set name = 'NexGen 2', model = 2005
where productId = 1;

update product
set type = 'stereo', name = 'Mercury', price = 100
where productId = 2;

update product
set price = 700, type = 'moccamaster', name = 'Mercury'
where productId = 3;

delete from product where productId = 5;
delete from product where productId = 2;
delete from product where type = 'phone';
delete from product where price = 2000 or name = 'Cosmos';
delete from product where type = 'phone' or price = 200 or model = 2011;