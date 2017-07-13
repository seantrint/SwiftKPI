DROP DATABASE IF EXISTS SwiftRental;

CREATE DATABASE SwiftRental;

USE SwiftRental;

CREATE TABLE Customer(
c_id INTEGER(12) NOT NULL AUTO_INCREMENT,
c_fname VARCHAR(25),
c_lname VARCHAR(25),
c_address VARCHAR(150),
c_phone INTEGER(12),
city_id INTEGER(5),
c_dob date,
c_license int(10),
c_date_joined DATE,
emp_id INTEGER(10),
PRIMARY KEY (c_id)
);

CREATE TABLE Branch(
b_id INTEGER(25) NOT NULL AUTO_INCREMENT,
b_address VARCHAR(150),
city_id INTEGER(5),
b_phone INTEGER(10),
PRIMARY KEY (b_id)
);

create table Employee
(
employee_id int (20) NOT NULL AUTO_INCREMENT,
branch_id int (20),
e_fname VARCHAR(25),
e_lname VARCHAR(25),
e_address varchar(50),
e_phone int(25), 
e_date_started date,
e_date_finished date,
job_type_id int (20),
PRIMARY KEY (employee_id)
);

CREATE TABLE Employee_Type(
job_type_id INTEGER(20) NOT NULL AUTO_INCREMENT,
job_type VARCHAR(50),
PRIMARY KEY (job_type_id)
);

CREATE TABLE City(
city_id INTEGER(20) NOT NULL AUTO_INCREMENT,
city_name VARCHAR(50),
country_id INTEGER(25),
PRIMARY KEY (city_id)
);

CREATE TABLE Country(
country_id INTEGER(20) NOT NULL AUTO_INCREMENT,
vat_rate_id INTEGER(20),
country_name VARCHAR(50),
PRIMARY KEY (country_id)
);

CREATE TABLE Vat_Rate(
vat_rate_id INTEGER(20) NOT NULL AUTO_INCREMENT,
vat_rate Float(5,3),
PRIMARY KEY (vat_rate_id)
);

create table Vehicle(
v_id int(20),
v_type int (20),
v_desc varchar (300),
v_year int (15),
v_price int(5),
v_reg int (10),
PRIMARY KEY (v_id)
);

create table Vehicle_Type(
v_type_id integer(20) NOT NULL AUTO_INCREMENT, 
model varchar(25),
PRIMARY KEY (v_type_id)
);

create table Rental_Details
(
rental_detail_id int(10) NOT NULL AUTO_INCREMENT,
v_id int (20),
rent_id int(20),
PRIMARY KEY(rental_detail_id)
);

create table Rentals
(
rental_id int(20) NOT NULL AUTO_INCREMENT,
r_start_date date,
r_end_date date,
c_id int (20),
insurance_id int(5),
PRIMARY KEY (rental_id)
);

create table Insurance
(
insurance_id int(20) NOT NULL AUTO_INCREMENT,
insurance_price int(20) ,
in_type_id int (20) ,
PRIMARY KEY (insurance_id)
);

create table InsuranceType
(
in_type_id int (20) NOT NULL AUTO_INCREMENT,
in_type VARCHAR(50),
PRIMARY KEY(in_type_id)
);

