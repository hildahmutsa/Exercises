-- Databricks notebook source
--Table 1.1

CREATE OR REPLACE TABLE branch_sandton_accounts (account_id STRING,account_holder STRING);

INSERT INTO branch_sandton_accounts VALUES
('A001', 'Nomvula Dlamini'),
('A002', 'David Mokoena'),
('A003','Lerato Sithole'),
('A004','Peter Nkosi');

--Table 1.2
CREATE OR REPLACE TABLE branch_rosebank_accounts (account_id STRING,account_holder STRING);

INSERT INTO branch_rosebank_accounts VALUES
('A003', 'Lerato Sithole'),
('A004', 'Peter Nkosi'),
('A005','Zanele Khumalo'),
('A006','Thabo Motha');


--Table 2.1
CREATE OR REPLACE TABLE savings_products (product_code STRING,product_name STRING);

INSERT INTO savings_products VALUES
('SV01', 'Basic Savings'),
('SV02', 'Premium Savings'),
('SV03','Youth Savings'),
('SV04','Business Savings');

--Table 2.2
CREATE OR REPLACE TABLE current_products (product_code STRING,product_name STRING);

INSERT INTO current_products VALUES
('CR01', 'Standard Current'),
('CR02', 'Gold Current'),
('SV03','Youth Savings'),
('CR04','Business Current');

--Table 3.1
CREATE OR REPLACE TABLE retail_banking_staff (staff_id STRING,staff_name STRING);

INSERT INTO retail_banking_staff VALUES
('S001', 'Mpho Radebe'),
('S002', 'Brian Tshabalala'),
('S003','Aisha Patel'),
('S004','Kabelo Moabelo');

--Table 3.2
CREATE OR REPLACE TABLE corporate_banking_staff (staff_id STRING,staff_name STRING);

INSERT INTO corporate_banking_staff VALUES
('S003','Aisha Patel'),
('S005', 'Nandi Dube'),
('S006','Sipho Khumalo'),
('S004','Kabelo Moabelo');

--Table 4.1
CREATE OR REPLACE TABLE mobile_branch_cities (city_code STRING, city_name STRING);

INSERT INTO mobile_branch_cities VALUES
('C01','Johannesburg'),
('C02','Pretoria'),
('C03','Cape Town'),
('C04','Durban');

--Table 4.2
CREATE OR REPLACE TABLE digital_branch_cities (city_code STRING, city_name STRING);

INSERT INTO digital_branch_cities VALUES
('C03','Cape Town'),
('C05','Polokwane'),
('C06','Port Elizabeth'),
('C01','Johannesburg');

--Table 5.1
CREATE OR REPLACE TABLE push_notification_targets (customer_id STRING, customer_name STRING);

INSERT INTO push_notification_targets VALUES
('C1001','Nomsa Zwane'),
('C1002','Andile Buthelezi'),
('C1003','Fatima Mahomed'),
('C1004','Ryno van Zyl');

--Table 5.2
CREATE OR REPLACE TABLE inapp_banner_targets (customer_id STRING, customer_name STRING);

INSERT INTO inapp_banner_targets VALUES
('C1003','Fatima Mahomed'),
('C1005','Thandeka Cele'),
('C1006','Samuel Nkosi'),
('C1002','Andile Buthelezi');

--Table 6.1
CREATE OR REPLACE TABLE atm01_transactions (txn_id STRING, account_id STRING, amount INT);

INSERT INTO atm01_transactions VALUES
('T1001','A001',500.00),
('T1002','A002',1200.00),
('T1003','A003',300.00),
('T1004','A004',750.00);

--Table 6.2
CREATE OR REPLACE TABLE atm02_transactions (txn_id STRING, account_id STRING, amount INT);

INSERT INTO atm02_transactions VALUES
('T1003','A001',300.00),
('T1005','A002',900.00),
('T1006','A003',450.00),
('T1007','A004',150.00);

--Table 8.1
CREATE OR REPLACE TABLE email_complaints (complaint_id STRING, customer_id STRING);

INSERT INTO email_complaints VALUES
('EC001','C2001'),
('EC002','C2002'),
('EC003','C2003'),
('EC004','C2004');


--Table 8.2
CREATE OR REPLACE TABLE app_complaints (complaint_id STRING, customer_id STRING);

INSERT INTO app_complaints VALUES
('AC001','C2005'),
('AC002','C2001'),
('AC003','C2006'),
('AC004','C2007');

--Table 10.1
CREATE OR REPLACE TABLE debit_entries (entry_id STRING,account_id STRING, entry_type STRING);

INSERT INTO debit_entries VALUES
('DR001','A001','Debit'),
('DR002','A002','Debit'),
('DR003','A003','Debit'),
('DR004','A004','Debit');

--Table 10.2
CREATE OR REPLACE TABLE credit_entries (entry_id STRING,account_id STRING, entry_type STRING);

INSERT INTO credit_entries VALUES
('CR001','A001','Credit'),
('CR002','A005','Credit'),
('CR003','A002','Credit'),
('CR004','A006','Credit');









