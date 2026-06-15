-- Databricks notebook source
Select account_id,
       account_holder
From   union_functions.default.branch_sandton_accounts  
UNION
SELECT account_id,
       account_holder
From   union_functions.default.branch_rosebank_accounts;

--Q2

Select product_code,
       product_name
From   union_functions.default.savings_products  
UNION
SELECT product_code,
       product_name
From   union_functions.default.current_products;

--Q3

Select staff_id,
       staff_name
From   union_functions.default.retail_banking_staff
UNION 
SELECT staff_id,
       staff_name
From   union_functions.default.corporate_banking_staff;

--Q4
SELECT city_code,
       city_name
From   union_functions.default.mobile_branch_cities
UNION 
SELECT  city_code,
        city_name
From    union_functions.default.digital_branch_cities;

--Q5
SELECT customer_id,
       customer_name
From   union_functions.default.push_notification_targets
UNION 
SELECT customer_id,
       customer_name
From   union_functions.default.inapp_banner_targets;

--Q6
SELECT txn_id,
       account_id,
       amount
From   union_functions.default.atm01_transactions
UNION ALL 
SELECT txn_id,
       account_id,
       amount
From   union_functions.default.atm02_transactions;

--Q8
SELECT complaint_id,
       customer_id
From   union_functions.default.email_complaints
UNION ALL 
SELECT complaint_id,
       customer_id
From   union_functions.default.app_complaints;

--Q10 
SELECT entry_id,
       account_id,
       entry_type
From union_functions.default.debit_entries
UNION ALL
SELECT entry_id,
       account_id,
       entry_type
From   union_functions.default.credit_entries;

