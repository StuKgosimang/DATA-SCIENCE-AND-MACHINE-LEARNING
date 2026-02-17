*CREDIT RISK ANALYSIS PROJECT;
*CUSTOMER INFORMATION;
DATA customer_info;
INPUT cust_id age gender $ province $ signup_date :$20. risk_segment $;
DATALINES;
1001 25 M Gauteng 2023-01-15 Low
1002 45 F WesternCape 2023-02-10 Medium
1003 38 M Gauteng 2023-03-05 High
1004 . F KZN 2023-04-12 Medium
1005 29 M . 2023-05-01 Low
1006 150 F Gauteng 2023-06-20 High
1007 34 M WesternCape 2023/07/01 Medium
1008 41 F Gauteng . Low
1009 23 M KZN 2023-08-19 Low
1010 67 F Gauteng 2023-09-10 High
1011 52 M KZN 2023-10-11 Medium
1012 -5 F Gauteng 2023-11-05 Low
1013 48 M WesternCape 2023-12-01 High
1014 30 F Gauteng 2023-12-15 Medium
1015 36 M Gauteng 2024-01-02 Low
1016 39 F KZN 2024-01-15 Medium
1017 . M Gauteng 2024-02-01 High
1018 42 F WesternCape invalid_date Low
1019 55 M Gauteng 2024-02-20 Medium
1020 28 F KZN 2024-03-01 Low
1021 33 M Gauteng 2024-03-10 Medium
1022 46 F WesternCape 2024-03-15 High
1023 60 M Gauteng 2024-03-20 High
1024 22 F KZN 2024-04-01 Low
1025 37 M Gauteng 2024-04-10 Medium
1026 49 F WesternCape 2024-04-15 Medium
1027 31 M Gauteng 2024-04-20 Low
1028 44 F KZN 2024-04-25 Medium
1029 53 M Gauteng 2024-05-01 High
1030 40 F WesternCape 2024-05-05 Medium
1031 35 M Gauteng 2024-05-10 Low
1032 27 F KZN 2024-05-15 Low
1033 62 M Gauteng 2024-05-20 High
1034 29 F WesternCape 2024-05-25 Medium
1035 38 M Gauteng 2024-06-01 Medium
1036 41 F KZN 2024-06-05 Low
1037 47 M Gauteng 2024-06-10 High
1038 50 F WesternCape 2024-06-15 Medium
1039 26 M Gauteng 2024-06-20 Low
1040 32 F KZN 2024-06-25 Medium
1041 45 M Gauteng 2024-07-01 High
1042 54 F WesternCape 2024-07-05 High
1043 39 M Gauteng 2024-07-10 Medium
1044 28 F KZN 2024-07-15 Low
1045 36 M Gauteng 2024-07-20 Medium
1046 43 F WesternCape 2024-07-25 High
1047 58 M Gauteng 2024-08-01 High
1048 24 F KZN 2024-08-05 Low
1049 34 M Gauteng 2024-08-10 Medium
1050 34 M Gauteng 2024-08-10 Medium
;RUN;


*CREDIT ACCOUNTS;
DATA credit_accounts;
INPUT cust_id income credit_score loan_amount account_open_date :$20. account_type $;
DATALINES;
1001 15000 650 5000 2023-01-16 CreditCard
1002 25000 720 10000 2023-02-11 Loan
1003 . 580 8000 2023-03-06 CreditCard
1004 18000 . 6000 2023-04-13 Loan
1005 -5000 700 7000 2023-05-02 CreditCard
1006 200000 300 150000 2023-06-21 Loan
1007 22000 680 9000 2023/07/02 CreditCard
1008 24000 710 . 2023-07-15 Loan
1009 12000 640 4000 . CreditCard
1010 50000 800 20000 2023-09-11 Loan
1011 30000 690 12000 2023-10-12 CreditCard
1012 17000 710 7000 2023-11-06 Loan
1013 40000 720 15000 2023-12-02 CreditCard
1014 21000 660 9000 2023-12-16 Loan
1015 . 640 6000 2024-01-03 CreditCard
1016 26000 680 10000 2024-01-16 Loan
1017 28000 590 11000 2024-02-02 CreditCard
1018 32000 720 13000 invalid_date CreditCard
1019 35000 750 14000 2024-02-21 Loan
1020 19000 670 8000 2024-03-02 CreditCard
1021 21000 690 9000 2024-03-11 Loan
1022 45000 780 20000 2024-03-16 CreditCard
1023 50000 790 25000 2024-03-21 Loan
1024 12000 650 5000 2024-04-02 CreditCard
1025 28000 700 11000 2024-04-11 Loan
1026 31000 720 13000 2024-04-16 CreditCard
1027 23000 680 9000 2024-04-21 Loan
1028 26000 710 10000 2024-04-26 CreditCard
1029 47000 770 22000 2024-05-02 Loan
1030 29000 690 12000 2024-05-06 CreditCard
1031 24000 680 9500 2024-05-11 Loan
1032 18000 660 7000 2024-05-16 CreditCard
1033 52000 800 26000 2024-05-21 Loan
1034 21000 690 9000 2024-05-26 CreditCard
1035 27000 700 11000 2024-06-02 Loan
1036 25000 710 10000 2024-06-06 CreditCard
1037 46000 780 23000 2024-06-11 Loan
1038 33000 720 14000 2024-06-16 CreditCard
1039 14000 650 6000 2024-06-21 Loan
1040 22000 680 9000 2024-06-26 CreditCard
1041 48000 790 24000 2024-07-02 Loan
1042 51000 800 25000 2024-07-06 CreditCard
1043 26000 700 10000 2024-07-11 Loan
1044 17000 660 7000 2024-07-16 CreditCard
1045 28000 710 11000 2024-07-21 Loan
1046 34000 730 15000 2024-07-26 CreditCard
1047 55000 810 27000 2024-08-02 Loan
1048 13000 640 5500 2024-08-06 CreditCard
1049 24000 690 9500 2024-08-11 Loan
1050 24000 690 9500 2024-08-11 Loan
;RUN;

*PAYMENT HISTORY;
DATA payment_history;
INPUT cust_id missed_payments last_payment_amount payment_date :$20. default_status $ payment_time :$10.;
DATALINES;
1001 0 500 2024-01-01 0 10:30
1002 1 800 2024-01-10 0 11:00
1003 3 600 2024-01-15 1 12:00
1004 . 700 2024-01-20 0 09:45
1005 2 . 2024-01-25 1 14:00
1006 10 5000 2024-01-30 1 invalid
1007 0 900 2024-02-01 0 10:10
1008 1 850 . 0 11:20
1009 0 400 2024-02-10 0 08:30
1010 5 2000 2024-02-15 1 15:00
1011 1 1000 2024-02-20 0 13:10
1012 0 750 2024-02-25 0 10:40
1013 4 1800 2024-03-01 1 12:50
1014 2 950 2024-03-05 0 14:20
1015 1 600 2024-03-10 0 09:30
1016 0 1000 2024-03-15 0 11:10
1017 3 1200 2024-03-20 1 13:45
1018 0 1300 invalid_date 0 10:55
1019 2 1400 2024-03-30 0 14:05
1020 0 800 2024-04-01 0 09:25
1021 1 900 2024-04-05 0 10:15
1022 4 2000 2024-04-10 1 12:35
1023 5 2500 2024-04-15 1 15:50
1024 0 500 2024-04-20 0 08:45
1025 1 1100 2024-04-25 0 10:05
1026 2 1300 2024-05-01 0 11:30
1027 0 900 2024-05-05 0 09:55
1028 1 1000 2024-05-10 0 12:10
1029 3 2200 2024-05-15 1 14:40
1030 1 1200 2024-05-20 0 10:20
1031 0 950 2024-05-25 0 09:35
1032 0 700 2024-06-01 0 08:50
1033 6 2600 2024-06-05 1 16:00
1034 1 900 2024-06-10 0 10:45
1035 2 1100 2024-06-15 0 11:55
1036 0 1000 2024-06-20 0 09:15
1037 4 2300 2024-06-25 1 14:25
1038 1 1400 2024-07-01 0 10:35
1039 0 600 2024-07-05 0 08:40
1040 1 900 2024-07-10 0 11:05
1041 5 2400 2024-07-15 1 15:10
1042 6 2500 2024-07-20 1 16:20
1043 2 1000 2024-07-25 0 12:45
1044 0 700 2024-08-01 0 09:05
1045 1 1100 2024-08-05 0 10:25
1046 3 1500 2024-08-10 1 13:35
1047 7 2700 2024-08-15 1 17:00
1048 0 550 2024-08-20 0 08:20
1049 1 950 2024-08-25 0 10:50
1050 1 950 2024-08-25 0 10:50
;RUN;

*EXPLORING DATA;
PROC CONTENTS DATA = customer_info; RUN;
PROC MEANS DATA = customer_info; RUN;
PROC FREQ DATA=customer_info;
TABLES gender province risk_segment;
RUN;

*EXPLORING NUMERIC VARIABLES;
PROC MEANS DATA=customer_info N NMISS MIN MAX MEAN STD;
VAR age;
RUN;

PROC CONTENTS DATA = credit_accounts; RUN;
PROC MEANS DATA = credit_accounts; RUN;
PROC FREQ DATA=credit_accounts;
TABLES account_type;
RUN;

PROC CONTENTS DATA = payment_history; RUN;
PROC MEANS DATA = payment_history; RUN;
PROC FREQ DATA=payment_history;
TABLES default_status;
RUN;

*CHECKING FOR DUPLICATES;
PROC FREQ DATA=customer_info;
TABLES cust_id / NOCUM NOPERCENT;
RUN;

*MEAN REPLACEMENT;
PROC MEANS DATA = customer_info NOPRINT;
VAR age;
OUTPUT OUT = mean_customer
MEAN = mean_age; RUN;

PROC MEANS DATA = credit_accounts NOPRINT;
VAR income credit_score loan_amount;
OUTPUT OUT = mean_credit
MEAN = mean_income mean_score mean_loan; RUN;

PROC MEANS DATA=payment_history NOPRINT;
VAR missed_payments last_payment_amount;
OUTPUT OUT=mean_payment
MEAN=mean_missed mean_payment;
RUN;

*REPLACING MISSING VALUES;
*customer info;
DATA customer_info_clean;
IF _N_ = 1 THEN SET mean_customer;
SET customer_info;
IF age = . THEN age  = mean_age;
DROP mean_age  _TYPE_ _FREQ_ ;
RUN;
PROC PRINT DATA = customer_info_clean; RUN;


*credit account;
DATA credit_accounts_clean;
IF _N_ = 1 THEN SET mean_credit;
SET credit_accounts;
IF income = . THEN income = mean_income;
IF credit_score = . THEN credit_score = mean_score;
IF loan_amount  = . THEN loan_amount= mean_loan;
DROP mean_income mean_score mean_loan  _TYPE_ _FREQ_ ;
RUN;


*payment info;
DATA payment_history_clean;
IF _N_ = 1 THEN SET mean_payment;
SET payment_history;
IF missed_payments = . THEN missed_payments = mean_missed;
IF last_payment_amount = . THEN last_payment_amount = mean_payment;
DROP mean_missed mean_payment _TYPE_ _FREQ_ ;
RUN;
PROC PRINT DATA = payment_history_clean; RUN;

*MODE REPLACEMENT - CATEGORICAL VARIABLES;
*customer info;
PROC FREQ DATA = customer_info_clean;
TABLES gender province risk_segment;
RUN;

*Replace missing categorical values;
DATA customer_info_clean2;
SET customer_info_clean;
IF MISSING(gender) THEN gender="M";
IF MISSING(province) THEN province="Gauteng";
IF MISSING(risk_segment) THEN risk_segment="Medium";
RUN;

*credit account;
DATA credit_accounts_clean2;
SET credit_accounts_clean;
IF account_type="" THEN account_type="CreditCard";
RUN;


*DEALING WITH OUTLIERS;
*age;
DATA customer_info_clean3;
SET customer_info_clean2;
IF age < 0 or age > 100 THEN age = 41; /*mean*/
RUN;


DATA credit_accounts_clean3;
SET credit_accounts_clean2;
/* Replace negative income, credit_score, or loan_amount */
IF income < 0 THEN income = 32000;       /* mean income */
IF credit_score < 300 THEN credit_score = 705;  /* mean credit score */
IF loan_amount < 0 THEN loan_amount = 11500;    /* mean loan_amount */
RUN;


*Handle extreme outliers;
DATA credit_accounts_clean4;
SET credit_accounts_clean3;
/* Cap extreme values at 99th percentile (simplified example) */
IF income > 100000 THEN income = 100000;
IF loan_amount > 50000 THEN loan_amount = 50000;
RUN;


*Fix payment_history outliers;
DATA payment_history_clean2;
SET payment_history_clean;
/* Fix impossible values */
IF missed_payments < 0 THEN missed_payments = 0;
IF last_payment_amount < 0 THEN last_payment_amount = 500;  /* mean payment */
IF last_payment_amount > 5000 THEN last_payment_amount = 5000; /* cap extreme */
RUN;


*FIX CUSTOMER INFO DATES;

DATA customer_info_final;
SET customer_info_clean3;

* Convert signup_date;
signup_date_sas = INPUT(signup_date, ??ANYDTDTE.);
FORMAT signup_date_sas DATE9.;

* Fill missing signup dates with default;
IF signup_date_sas = . THEN signup_date_sas = '01JAN2024'D;
DROP signup_date;
RUN;


*STEP 2: FIX CREDIT ACCOUNT DATES;

DATA credit_accounts_final;
SET credit_accounts_clean4;

* Convert account_open_date;
account_open_date_sas = INPUT(account_open_date, ??ANYDTDTE.);
FORMAT account_open_date_sas DATE9.;
* Fill missing account_open_date;
IF account_open_date_sas = . THEN account_open_date_sas = '01JAN2024'D;
DROP account_open_date;
RUN;


*STEP 3: FIX PAYMENT HISTORY DATES AND TIMES;
DATA payment_history_final;
SET payment_history_clean2;

*Convert payment date;
payment_date_sas = INPUT(payment_date, ??ANYDTDTE.);
FORMAT payment_date_sas DATE9.;

*Convert payment time;
payment_time_sas = INPUT(payment_time, ??TIME5.);
FORMAT payment_time_sas TIME5.;

*Fill missing payment date;
IF payment_date_sas = . THEN payment_date_sas = '01JAN2024'D;

*Fill missing payment time;
IF payment_time_sas = . THEN payment_time_sas = '12:00'T;
DROP payment_date payment_time;
RUN;


*STEP 4: CREATE FINAL COMBINED TABLE USING LEFT JOIN;

PROC SQL;
CREATE TABLE combined_table_final AS
SELECT
    a.cust_id,
    a.age,
    a.gender,
    a.province,
    a.risk_segment,
    a.signup_date_sas,

    b.income,
    b.credit_score,
    b.loan_amount,
    b.account_type,
    b.account_open_date_sas,

    c.missed_payments,
    c.last_payment_amount,
    c.default_status,
    c.payment_date_sas,
    c.payment_time_sas
FROM customer_info_final AS a
LEFT JOIN credit_accounts_final AS b
ON a.cust_id = b.cust_id
LEFT JOIN payment_history_final AS c
ON a.cust_id = c.cust_id
;QUIT;


*STEP 5: VIEW FINAL CLEAN DATA;
PROC PRINT DATA = combined_table_final;
RUN;


*STEP 6: VERIFY NO MISSING DATES;
PROC MEANS DATA = combined_table_final NMISS;
VAR signup_date_sas account_open_date_sas payment_date_sas payment_time_sas;
RUN;

*REGRESSION MODEL;
PROC LOGISTIC DATA = combined_table_final;
MODEL default_status = age income credit_score loan_amount missed_payments;
RUN;