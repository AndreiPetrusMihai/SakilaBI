select * from customer
select * from DimCustomer

select * from store
select * from DimStore

select * from film
select * from DimFilm

select * from FactCustomersPerStore

delete from AddressSC

create table AddressSC (
  address_id int NOT NULL,
  address VARCHAR(50) NOT NULL,
  address2 VARCHAR(50) DEFAULT NULL,
  district VARCHAR(20) NOT NULL,
  city_id INT NOT NULL,
  postal_code VARCHAR(10) DEFAULT NULL,
  phone VARCHAR(20) NOT NULL,
  last_update DATETIME NOT NULL,
  startDate datetime,
  endDate datetime,
)

select * from address
select * from AddressSC

select * from address
where address_id = 2

select * from AddressSC
where address_id = 2

update AddressSC
set phone = ''
where address_id = 2
