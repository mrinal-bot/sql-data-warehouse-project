USE DataWarehouse;

SELECT * FROM bronze.erp_loc_a101;
SELECT * FROM bronze.crm_cust_info;
SELECT * FROM bronze.erp_cust_az12;

SELECT * FROM bronze.erp_px_cat_g1v2;
SELECT * FROM bronze.crm_prd_info;
SELECT * FROM bronze.crm_sales_details;


SELECT CST_ID, COUNT(*)
FROM silver.crm_cust_info
GROUP BY CST_ID
HAVING COUNT(*) > 1;

SELECT * FROM bronze.crm_cust_info
WHERE CST_ID = 29466;

SELECT CST_FIRSTNAME
FROM silver.crm_cust_info
WHERE CST_FIRSTNAME != TRIM(CST_FIRSTNAME);

SELECT cst_lastname
FROM silver.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname);

SELECT cst_key
FROM bronze.crm_cust_info
WHERE cst_key IS NULL;

SELECT * FROM silver.crm_cust_info;

SELECT * FROM bronze.crm_prd_info;

SELECT PRD_KEY,
COUNT(*)
FROM bronze.crm_prd_info
GROUP BY PRD_KEY
HAVING COUNT(*) >1 AND PRD_KEY IS NULL;

SELECT * FROM bronze.crm_prd_info
WHERE prd_cost is null;

SELECT DISTINCT PRD_LINE FROM bronze.crm_prd_info;

SELECT prd_start_dt FROM bronze.crm_prd_info;
select * FROM silver.crm_prd_info;

SELECT 
sls_cust_id,
COUNT(*)
FROM bronze.crm_sales_details
GROUP BY sls_cust_id
HAVING COUNT(*) > 1;

SELECT SLS_SALES FROM bronze.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price;

SELECT SLS_QUANTITY FROM bronze.crm_sales_details
WHERE sls_quantity <0 OR sls_quantity IS NULL;


SELECT sls_price FROM bronze.crm_sales_details
WHERE sls_price <0 OR sls_price IS NULL;

SELECT sls_sales,
sls_quantity,
sls_price
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price;

SELECT * FROM silver.crm_sales_details;

SELECT CID FROM silver.erp_cust_az12
WHERE CID IS NULL OR CID NOT LIKE 'NASA%';

SELECT BDATE FROM silver.erp_cust_az12
WHERE BDATE>GETDATE();

SELECT DISTINCT GEN FROM bronze.erp_cust_az12;

SELECT * FROM silver.erp_cust_az12;


SELECT CID FROM bronze.erp_loc_a101
WHERE CID != TRIM(CID);

SELECT DISTINCT CNTRY FROM silver.erp_loc_a101;

SELECT * FROM silver.erp_loc_a101;

SELECT * FROM silver.erp_px_cat_g1v2;