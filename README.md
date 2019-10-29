# Super-Shop

Introduction: 
A super shop is a large retailer who stocks and sells a wide variety of merchandise including groceries, clothing and general supplies, or a large store that sells a massive quantity of goods in one product line such as electronics or shoes. Super shops are very large supermarkets or shops selling household goods and equipment. Super shops are usually built outside city centers away from other shops. 
The best example of a superstore is Wal-Mart. A superstore is also referred to as a super center or megastore. Super Shop is a special market with different specialty. Super shop is located in special area for the class of people in Bangladesh. The products are categories in the super shop. The products are allocated with a highly qualified way.
“Super Shop Management System” is a management system to provide service facility to the owner and also to the customers. Super Shop management system helps to create invoices, product category, purchase orders, receiving lists, payment receipts and can print bar labels. A Super shop management system configured to your warehouse, retail or product line will help to create revenue for a company. The Super shop Management System will control operating costs and provide better understanding.

Features: 
1.	Customer buys product, local store sells product, and therefore transaction happens.
2.	Customer can be approved for membership.
3.	Customer can search item for information and reliability.
4.	Warehouse has product inventory.
5.	Warehouse can distribute products to local store.
6.	There is monthly, weekly and daily sales report.
7.	Customer can search in different stores for product availability.
8.	Customer can see top selling products of specific category


Database Link :
We have established connections among the three laptops. One of them is considered as the server or host and the rest of the two are considered as sites. The tables of the project are run in the sites and then accessed via a site link connection. We are using one host and two sites for our project. 


Database Tables (Global Schema):
1.	Branch (branch_ID, Location, Phone)
2.	Category (C_ID, C_Name)
3.	Membership (M_ID, P_Range_From, P_Range_To, Discount_Rate, Type)
4.	Product (P_ID, Selling_Price, P_Name, C_ID)
5.	Customer (C_ID, C_Name, Email, M_ID)
6.	Transaction (T_ID, Cust_ID, Branch_ID, Total_Price, T_Date)
7.	goes_in (P_ID, T_ID, Quantity)
8.	occurs_in (Branch_ID, T_ID)
9.	proceed (T_ID,C_ID)
10.	stores_in (P_ID, P_Quantity, Branch_ID)
11.	warehouse (S_ID, S_Date, P_ID, P_Quantity, Buying_Price)
12.	Sales (Serial_no, Month, Sales)

Fragmentation Schema:
1.	Branch1 = PJbranch_ID,Location,PhoneSLLocation=’Dhanmondi’Branch
2.	Branch2 = PJbranch_ID,Location,PhoneSLLocation=’Mohammadpur’Branch
  
Functions and Procedures: 
We have created two functions and three procedures for our project.The functionality  of the functions and procedures are given below: 
 
Functions:
1. Function1: Displays the names of the customers from the given site.
2. Function2: Displays the total number of customers from the both of the sites.

Procedures:
1. Procedure1: Checks and displays the membership of the customers.
2. Procedure2: Displays the sales report.
3. Procedure3: Distributes the warehouse.

Conclusion:
Distributing the Super Shop database can lead to a very good output in the Super Shop Management System. The owner can access different information from the sites via server or host and look over the whole database management system from one server.
