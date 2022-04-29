select * from DimCustomer

select * from DimFilm

select * from film

select * from address

create table NewAddress (
  address_id int NOT NULL,
  address VARCHAR(50) NOT NULL,
  address2 VARCHAR(50) DEFAULT NULL,
  district VARCHAR(20) NOT NULL,
  city_id INT  NOT NULL,
  postal_code VARCHAR(10) DEFAULT NULL,
  phone VARCHAR(20) NOT NULL,
  last_update DATETIME NOT NULL,
)

insert into NewAddress values 
	(1, 'aaa', '', 'AAA', 1, '123', '', '2006-02-15 04:45:30.000'),
	(2, 'bbb', '', 'BBB', 2, '567', '', '2006-02-15 04:45:30.000')

create table AddressSC (
  address_id int NOT NULL,
  address VARCHAR(50) NOT NULL,
  address2 VARCHAR(50) DEFAULT NULL,
  district VARCHAR(20) NOT NULL,
  city_id INT  NOT NULL,
  postal_code VARCHAR(10) DEFAULT NULL,
  phone VARCHAR(20) NOT NULL,
  last_update DATETIME NOT NULL,
  startDate datetime,
  endDate datetime,
)

delete from AddressSC

select * from NewAddress

select * from address
where address_id = 1

select * from AddressSC
where address_id = 1

update address
set phone = '123455'
where address_id = 1

update address
set phone = ''
where address_id = 1

update NewAddress
set phone = '123455'
where address_id = 1