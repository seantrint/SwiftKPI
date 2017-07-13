DROP DATABASE IF EXISTS Swift_Warehouse;
CREATE DATABASE Swift_Warehouse;
USE Swift_Warehouse;

CREATE TABLE Month(
month_id int(2) not null auto_increment,
start_date Date,
end_date Date,
PRIMARY KEY(month_id)
);

CREATE TABLE Quater(
quater_id int(2) not null auto_increment,
start_date Date,
end_date Date,
PRIMARY KEY(quater_id)
);

CREATE TABLE Year(
year_id int(2) not null auto_increment,
start_date Date,
end_date Date,
PRIMARY KEY(year_id)
);

CREATE TABLE age_group(
age_group_id int(2) not null auto_increment,
min_age int(2),
max_age int(2),
PRIMARY KEY(age_group_id)
);

create table SalesPerYear(
sp_year_id integer (12) not null auto_increment,
year_id integer(12), 
num_sales integer(20),
primary key (sp_year_id)
);

create table SalesPerMonth(
sp_month_id integer (12) not null auto_increment,
month_id integer(12), 
year_id integer(12),
num_sales integer(20),
primary key (sp_month_id)
);

/*tables below need to be edited slightly*/

create table SalesPerQuater(
sp_quater_id integer (12) not null auto_increment,
quater_id integer(12), 
year_id integer(12),
num_sales integer(20),
primary key (sp_quater_id)
);

create table SPBWeek (
spb_week_id integer (12) not null auto_increment,
week_id integer(12), 
num_sales integer(20),
c_id integer (12),
primary key (spb_week_id)
);

create table SPBMonth(
spb_month_id integer (12) not null auto_increment,
month_id integer(12),
num_sales integer(20),
c_id integer(12),
primary key (spb_month_id)
);

create table SPBYear(
spb_year_id integer (12) not null auto_increment,
year_id integer(12),
num_sales integer(20),
c_id integer(12),
primary key (spb_year_id)
);

create table SPCWeek(
spc_week_id integer (12) not null auto_increment,
week_id integer(12), 
num_sales integer(20),
c_id integer (12),
primary key (spc_week_id)
);

create table SPCMonth(
spc_month_id integer (12) not null auto_increment,
month_id integer(12),
num_sales integer(20),
c_id integer(12),
primary key (spc_month_id)
);

create table SPCYear(
spc_year_id integer (12) not null auto_increment,
year_id integer(12),
num_sales integer(20),
c_id integer(12),
primary key (spc_year_id)
);

CREATE TABLE SPEWeek(
spe_week_id INT(10) not null auto_increment,
emp_id INT(20),
num_sales INT(20),
week_id INT (20),
PRIMARY KEY (spe_week_id)
);

CREATE TABLE SPEWeekInsertMonth(
spe_month_id INT(10) not null auto_increment,
emp_id INT(20),
num_sales INT(20),
month_id INT (20),
PRIMARY KEY (spe_month_id)
);

CREATE TABLE SPEYear(
spe_year_id INT(10) not null auto_increment,
emp_id INT(20),
no_Sales INT(20),
year_id INT (20),
PRIMARY KEY (spe_year_id)
);

CREATE TABLE SPAge_group(
sp_age_group_id INT(10) not null auto_increment,
emp_id INT(20),
no_sales INT(20),
age_Group_id INT (20),
PRIMARY KEY (sp_age_group_id)
);