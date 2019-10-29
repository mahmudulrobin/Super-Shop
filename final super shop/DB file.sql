clear screen;

drop table category cascade constraints;
drop table goes_in cascade constraints;
drop table branch cascade constraints;
drop table customer cascade constraints;
drop table membership cascade constraints;
drop table proceed cascade constraints;
drop table product cascade constraints;
drop table occurs_in cascade constraints;
drop table stores_in cascade constraints;
drop table transaction cascade constraints;
drop table warehouse cascade constraints;
drop table sales cascade constraints;

CREATE TABLE branch (
  Branch_ID int,
  Location varchar(11),
  Phone int
);

CREATE TABLE category (
  C_ID int,
  C_Name varchar(20)
);

CREATE TABLE membership (
  M_ID int,
  P_Range_From number,
  P_Range_To number,
  Discount_Rate number,
  Type varchar(50)
);

CREATE TABLE product (
  P_ID int,
  Selling_Price number,
  P_Name varchar(50),
  C_ID int
);

CREATE TABLE customer (
  C_ID int,
  C_Name varchar(50),
  Email varchar(50),
  M_ID int
);

CREATE TABLE transaction (
  T_ID int,
  Cust_ID int,
  Branch_ID int,
  Total_Price number,
  T_Date date
);

CREATE TABLE goes_in (
  P_ID int,
  T_ID int,
  Quantity int
);

CREATE TABLE occurs_in (
  Branch_ID int,
  T_ID int
);

CREATE TABLE proceed (
  T_ID int,
  C_ID int
);

CREATE TABLE stores_in (
  P_ID int,
  P_Quantity int,
  Branch_ID int
);

CREATE TABLE warehouse (
  S_ID int,
  S_Date date,
  P_ID int,
  P_Quantity int,
  Buying_Price number
);

CREATE TABLE sales (
   Serial_no int,
   Month number,
   Sales number
);

commit;