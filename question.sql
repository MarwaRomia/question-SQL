use dataset
#Q.1: selects the "Customer Name" and "City" columns from the "Customers" table.
select CUST_NAME ,CUST_CITY from customer;
#Q.2: What is the number of different (distinct) customer countries?
select distinct CUST_COUNTRY from customer
#Q.3: selects all the customers from the country "London", in the "Customers" table:
select CUST_NAME,CUST_CITY from customer where CUST_CITY= 'London'
#Q.4: Show the Customer information with code C00015.
select  CUST_NAME,CUST_CODE from customer where CUST_CODE= 'C00015'
#Q.5: selects all fields from "Customers" where country is " USA" or " India".
select * from customer where CUST_COUNTRY ='USA' or CUST_COUNTRY= 'India'
#Q.6: selects all fields from "Customers" where city is NOT " Bangalore"
select * from customer where CUST_CITY != "Bangalore"
#Q.7: selects all customers from the "Customers" table, sorted DESCENDING by the "city" column.
select CUST_NAME, desc CUST_CITY from customer order by  CUST_CITY
#Q.8: finds the biggest amount of order:
select max(ORD_AMOUNT)  from orders
#Q.9: finds the number of orders.
select ORD_NUM from orders
#Q.10: finds the average amount of all orders.
select ADVANCE_AMOUNT from orders
#Q.11: selects all customers with a Customer Name starting with "m".
select CUST_NAME from customer where CUST_NAME like 'M%'
#Q.12: selects all customers with a Customer Name starting with "s".
select CUST_NAME from customer where CUST_NAME like 'S%' 
#Q.13: selects all customers that are in " Australia", " USA" or "UK".
select CUST_NAME,CUST_COUNTRY from customer where CUST_COUNTRY in('Australia','USA')  or'UK'
#Q.14: selects orders in January.
select ORD_NUM,ORD_DATE from orders where ORD_DATE between '2008-01-01' AND '2008-01-30'
#Q.15: selects the customers with amount payment between 1000 and 4000.
select CUST_NAME,PAYMENT_AMT from customer where PAYMENT_AMT between 1000 and 4000
#Q.16: selects all orders with customer information.
select c.CUST_NAME,o.ORD_NUM,o.ORD_DATE,o.CUST_CODE,c.CUST_CODE
from orders o
join customer c
on o.CUST_CODE = c.CUST_CODE
#Q.17: select all customers, and any orders information they might have.
select c.CUST_NAME,c.CUST_CODE,o.CUST_CODE,o.ORD_NUM,o.ORD_DESCRIPTION 
from customer c
join orders o
on c.CUST_CODE = o.CUST_CODE
#Q.18: lists the number of customers in each country.
select CUST_COUNTRY,sum(GRADE) as grade from customer group by CUST_COUNTRY
#Q.19: lists the number of orders sent by each agent.
select a.AGENT_NAME,sum(o.ORD_AMOUNT) as ord_num
from orders o
join agents a
on a.AGENT_CODE=o.AGENT_CODE
group by AGENT_NAME
#Q.20:  lists the number of customers in each country. Only include countries with more than 5 customers.
select CUST_COUNTRY,sum(GRADE) as grade from customer group by CUST_COUNTRY
having grade > 5



