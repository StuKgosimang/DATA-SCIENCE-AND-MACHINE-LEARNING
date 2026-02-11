*creating Dataset;
DATA retail_sales;
INPUT cust_id province $ category $ sales  month $;
DATALINES;
		1 Gauteng Electronics 12000 Jan
		2 Gauteng Clothing 5000 Jan
		3 WesternCape Electronics 8000 Jan
		4 KZN Groceries 3000 Jan
		5 Gauteng Groceries 4000 Feb
		6 WesternCape Clothing 7000 Feb
		7 KZN Electronics 6000 Feb
		8 Limpopo Groceries 2000 Feb
		9 Gauteng Electronics 15000 Mar
		10 WesternCape Groceries 3500 Mar
		11 KZN Clothing 4500 Mar
		12 Limpopo Electronics 2500 m=Mar
		;
		RUN;

*Total sales per province;
PROC SQL;
CREATE TABLE prov_sales AS
SELECT province, SUM(sales) as total_sales
FROM retail_sales
GROUP BY province;
quit;

*Percentile contribution for each province;
PROC SQL;
CREATE TABLE prov_sales_perc AS
SELECT province, SUM(sales) AS total_sales, (SUM(sales) / (SELECT SUM(sales) FROM retail_sales))*100 AS sales_percent FORMAT = 8.2
FROM retail_sales
GROUP BY province;
QUIT;

* Herfindahl Index (Market Concentration);
PROC SQL;
CREATE TABLE hhi_calc AS
SELECT province, SUM(sales) AS total_sales, (SUM(sales) / (SELECT SUM(sales) FROM retail_sales))*100 AS market_share
FROM retail_sales
GROUP BY province;
QUIT;

DATA hhi_final;
SET hhi_calc;
share_sq = market_share**2;
RUN;

PROC MEANS DATA = hhi_final SUM;
VAR share_sq;
RUN;

*sales by category and province;
PROC SQL;
CREATE TABLE category_prov AS
SELECT province,
       category,
       SUM(sales) AS total_sales
FROM retail_sales
GROUP BY province, category;
QUIT;

*Visulaization;
PROC SGPLOT DATA = prov_sales_perc;
VBAR province/ RESPONSE = total_sales DATALABEL;
RUN;

PROC SGPLOT DATA=category_prov;
VBAR category / RESPONSE=total_sales GROUP=province;
RUN;

