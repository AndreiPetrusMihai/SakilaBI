
begin transaction;

ALTER TABLE staff DROP CONSTRAINT fk_staff_address;
ALTER TABLE staff DROP CONSTRAINT fk_staff_store;


SET IDENTITY_INSERT staff ON

Insert into staff
 (staff_id,first_name,last_name,address_id,picture,email,store_id,active,username,password,last_update)
Values
 ('3','Andrei','Hillyer','4',NULL,'Mike.Hillyer@sakilastaff.com','3','1','Mike','8cb2237d0679ca88db6464eac60da96345513964','2006-02-15T04:57:16.000')
;
Insert into staff
 (staff_id,first_name,last_name,address_id,picture,email,store_id,active,username,password,last_update)
Values
 ('4','Stefan','Stephens','5',NULL,'Jon.Stephens@sakilastaff.com','4','1','Jon','8cb2237d0679ca88db6464eac60da96345513964','2006-02-15T04:57:16.000')
;

SET IDENTITY_INSERT staff OFF


SET IDENTITY_INSERT store ON

Insert into store
 (store_id,manager_staff_id,address_id,last_update)
Values
('3','3','3','2006-02-15T04:57:12.000')
;
Insert into store
 (store_id,manager_staff_id,address_id,last_update)
Values
('4','4','5','2006-02-15T04:57:12.000')
;
SET IDENTITY_INSERT store OFF



ALTER TABLE staff ADD CONSTRAINT fk_staff_address FOREIGN KEY (address_id) REFERENCES address (address_id) ON UPDATE CASCADE;
ALTER TABLE staff ADD CONSTRAINT fk_staff_store FOREIGN KEY (store_id) REFERENCES store (store_id) ON UPDATE CASCADE;

commit;



begin transaction;

Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('3','MARY','SMITH','MARY.SMITH@sakilacustomer.org','7','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('3','MARY','SMITH','MARY.SMITH@sakilacustomer.org','7','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;
Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('4','PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org','6','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;
Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('4','PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org','6','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('4','PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org','6','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('4','PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org','6','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;
Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('4','PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org','6','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000')
;
Insert into customer
 (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
Values
('4','PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org','6','1','2006-02-14T22:04:36.000','2006-02-15T04:57:20.000');
commit;






begin transaction;
Insert into inventory
 (film_id,store_id,last_update)
Values
('1','3','2006-02-15T05:09:17.000')
;
Insert into inventory
 (film_id,store_id,last_update)
Values
('2','4','2006-02-15T05:09:17.000')
;
Insert into inventory
 (film_id,store_id,last_update)
Values
('3','4','2006-02-15T05:09:17.000')
;
commit;