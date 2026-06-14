-- Databricks notebook source
--Q1 Extracting DayName
Select *,
DAYNAME(order_date) As day_name
From `date_functions`.`default`.`orders`;

--Q2 Extracting MonthName

Select *,
MONTHNAME(signup_date) As signup_month_name
From `date_functions`.`default`.`customer_signups`;

--Q3 Extracting MONTH Number

Select sale_id, 
product_name,
sales_date,
MONTH(sales_date)
From `date_functions`.`default`.`sales`;

--Q4 Extracting Year

Select transaction_id,
customer_id,
transaction_date,
Year(transaction_date) As transaction_year
From `date_functions`.`default`.`transactions`;

--Q5 Extracting Day of the month 
Select *,
DAY(delivery_date) As day_of_month
From `date_functions`.`default`.`deliveries`;

--Q6 Adding the current date column

Select *,
CURRENT_DATE() As today_date
From `date_functions`.`default`.`employees`;

--Q7 Converting date into a proper date column

Select *,
To_Date(order_date_text, 'YYY-MM-DD') As order_date
From `date_functions`.`default`.`online_orders`;

--Q8 Formating a date into a text string in the format YYY-MM-DD

Select *,
date_format(payment_date,'yyy-MM-dd') As formatted_payment_date
From `date_functions`.`default`.`payment_dates`;

--Q9  Calculating dates differences

Select *,
DATEDIFF(Current_date(),last_purchase_date) As days_since_last_purchase
From`date_functions`.`default`. `customer_purchases`;

--Q10  Adding 7 days to the date column
Select *,
DATE_ADD(order_date,7) As expected_delivery_date
From `date_functions`.`default`.`shipping_orders`;

--Q11 Extracting the year, month and day from the date column

Select *,
YEAR(booking_date) As booking_year,
MONTH(booking_date) As booking_month,
DAY(booking_date) As booking_day
From `date_functions`.`default`.`bookings`;

--Q12 Extracting year from the date column

Select *,
YEAR(order_date) As order_year
From `date_functions`.`default`.`yearly_orders`
Where (YEAR(order_date) = 2026);

--Q13 Ectracting month number from date column

Select *,
MONTH(order_date) As order_month
From `date_functions`.`default`.`monthly_orders`
Where (MONTH(order_date)=3);

--Q14 Extracting the last day of the month from date column

Select *,
LAST_DAY( start_date) As month_end_date
From `date_functions`.`default`.`subscriptions`;

--Q15 Extracting first day of the month for each campaign send date

Select *,
DATE_TRUNC('MONTH',send_date) As month_start_date
From `date_functions`.`default`.`campaign_sends`;

--Q16 Date in text STRING format from the date column

Select *, 
DATE_FORMAT(invoice_date, 'MMMM yyyy') As invoice_month_year
From `date_functions`.`default`.`invoice_dates`;

--Q17 Calculating customer ages from date_of_birth till current date

Select *,
FLOOR(DATEDIFF(Current_date(),date_of_birth)/365.25) As customer_age
From `date_functions`.`default`.`customer_birthdays`;


--Q18 Classifying oder day names into weekend or weekday
Select *,
DAYNAME(order_date) As day_name,
CASE 
    WHEN DAYNAME(order_date) IN ('Saturday','Sunday') Then 'Weekend'
    ELSE 'Weekday'
    End As day_type 
From `date_functions`.`default`.`weekend_orders`;

--Q19 Extracting the quarter number from each transaction date

Select *, 
QUARTER(transaction_date) As transaction_quarter
From `date_functions`.`default`.`quarterly_transactions`;

--Q20 Returning only orders that are more than 30 days old from current date

Select *,
DATEDIFF(CURRENT_DATE(),order_date) As days_since_order
From `date_functions`.`default`.`recent_orders`
Where DATEDIFF(CURRENT_DATE(),order_date) > 30;

--Bonus Question

Select *,
DATEDIFF(CURRENT_DATE(),last_purchase_date) As days_since_last_purchase,
CASE 
    WHEN DATEDIFF(CURRENT_DATE(),last_purchase_date) <= 30 THEN 'Active Customer'
    when DATEDIFF(CURRENT_DATE(),last_purchase_date) BETWEEN 31 AND 90 THEN 'At Risk Customer'
    WHEN DATEDIFF(CURRENT_DATE(),last_purchase_date) > 90 THEN 'Inactive Customer'
    END As customer_status
From `date_functions`.`default`.`customer_recency`;
