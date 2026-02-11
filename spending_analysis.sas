
*IMPORTING THE DATA FROM SHEETS;
PROC IMPORT DATAFILE="/home/u64450810/spending_analysis.xlsx"
    OUT=customers
    DBMS=XLSX
    REPLACE;
    SHEET="customerrs";
    GETNAMES=YES;
RUN;

PROC IMPORT DATAFILE="/home/u64450810/spending_analysis.xlsx"
    OUT=income
    DBMS=XLSX
    REPLACE;
    SHEET="income";
    GETNAMES=YES;
RUN;

PROC IMPORT DATAFILE="/home/u64450810/spending_analysis.xlsx"
    OUT=transactions
    DBMS=XLSX
    REPLACE;
    SHEET="transactions";
    GETNAMES=YES;
RUN;

*ANALYSE TABLE CONTENTS;
PROC CONTENTS DATA=customers; RUN;
PROC CONTENTS DATA=income; RUN;
PROC CONTENTS DATA=transactions; RUN;

*JOIN THE TABLES;
PROC SQL;
CREATE TABLE full_data AS
SELECT 
    a.cust_id,
    a.gender,
    a.age,
    a.province,
    b.monthly_income,
    c.monthly_spend
FROM customers a
LEFT JOIN income b
    ON a.cust_id = b.cust_id
LEFT JOIN transactions c
    ON a.cust_id = c.cust_id;
QUIT;

*CLEAN DATA;
DATA clean_data;
SET full_data;
*invalid ages;
IF age < 18 OR age > 100 THEN age = .;

*Negative or illogical spending;
IF monthly_spend < 0 THEN monthly_spend = .;
IF monthly_spend > monthly_income THEN monthly_spend = .;

*invalid province;
IF province IN ("-99", "", "NA") THEN province = "Unknown";

*REPLACE MISSING VALUES;
PROC MEANS DATA = clean_data NOPRINT;
VAR age monthly_income monthly_spend;
OUTPUT OUT = means
	MEAN = mean_age mean_income mean_spend; RUN;
	
DATA clean_data;
IF _N_=1 THEN SET means;
SET clean_data;

IF age = . THEN age = mean_age;
IF monthly_income = . THEN monthly_income  = mean_income;
IF monthly_spend = . THEN monthly_spend = mean_spend;

DROP mean_:;
RUN;

*FEATURE ENGINEERING;
DATA final_data;
SET clean_data;

spend_ratio = monthly_spend / monthly_income;

IF age < 30 THEN age_group = "Young";
ELSE IF age < 50 THEN age_group = "Middle";
ELSE age_group = "Senior";

RUN;

*LINEAR REGRESSION;
PROC REG DATA=final_data;
MODEL monthly_spend = age monthly_income spend_ratio;
RUN;
QUIT;

