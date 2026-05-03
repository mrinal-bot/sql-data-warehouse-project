/*
SCRIPT PURPOSE: The below Query First TRUNCATE the whole Table and then BULK INSERT
		into the Table. This will also show the time duration to insert into each table

WARNING: Before INSERT data, Below Query Truncate First, so previous All data will get erased 
		ensure that you keep backup
*/
EXEC bronze.load_bronze;

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME;
	BEGIN TRY
		PRINT '===================================================';
		PRINT '>> LOADING DATA FROM SOURCE FILE';
		PRINT '===================================================';

		SET @start_time = GETDATE();
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'TRUNCATE TABLE : bronze.crm_cust_info';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		TRUNCATE TABLE bronze.crm_cust_info;

		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'INSERT INTO TABLE : bronze.crm_cust_info';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		BULK INSERT bronze.crm_cust_info
		FROM 'C:\Users\mdey8\OneDrive\Desktop\all folder\sql_datawarehouse_project_26\dataset\source_crm\cust_info.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SELECT COUNT(*) FROM bronze.crm_cust_info;
		SET @end_time = GETDATE();
		PRINT 'Time Duration : ' + CAST(DATEDIFF(second , @start_time,@end_time) AS NVARCHAR) + ' seconds';

		SET @start_time = GETDATE();
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'TRUNCATE TABLE : bronze.crm_prd_info';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		TRUNCATE TABLE bronze.crm_prd_info;


		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'INSERT INTO TABLE : bronze.crm_prd_info';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		BULK INSERT bronze.crm_prd_info
		FROM 'C:\Users\mdey8\OneDrive\Desktop\all folder\sql_datawarehouse_project_26\dataset\source_crm\prd_info.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SELECT COUNT(*) FROM bronze.crm_prd_info;
		SET @end_time = GETDATE();
		PRINT 'Time Duration : ' + CAST(DATEDIFF(second , @start_time,@end_time) AS NVARCHAR) + ' seconds';


		SET @start_time = GETDATE();
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'TRUNCATE TABLE : bronze.crm_sales_details';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		TRUNCATE TABLE bronze.crm_sales_details;

		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'INSERT INTO TABLE : bronze.crm_sales_details';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		BULK INSERT bronze.crm_sales_details
		FROM 'C:\Users\mdey8\OneDrive\Desktop\all folder\sql_datawarehouse_project_26\dataset\source_crm\sales_details.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SELECT COUNT(*) FROM bronze.crm_sales_details;
		SET @end_time = GETDATE();
		PRINT 'Time Duration : ' + CAST(DATEDIFF(second , @start_time,@end_time) AS NVARCHAR) + ' seconds';


		SET @start_time = GETDATE();
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'TRUNCATE TABLE : bronze.erp_cust_az12';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		TRUNCATE TABLE bronze.erp_cust_az12;


		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'INSERT INTO TABLE : bronze.erp_cust_az12';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		BULK INSERT bronze.erp_cust_az12
		FROM 'C:\Users\mdey8\OneDrive\Desktop\all folder\sql_datawarehouse_project_26\dataset\source_erp\CUST_AZ12.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);

		SELECT COUNT(*) FROM bronze.erp_cust_az12;
		SET @end_time = GETDATE();
		PRINT 'Time Duration : ' + CAST(DATEDIFF(second , @start_time,@end_time) AS NVARCHAR) + ' seconds';


		SET @start_time = GETDATE();
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'TRUNCATE TABLE : bronze.erp_loc_a101';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		TRUNCATE TABLE bronze.erp_loc_a101;


		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'INSERT INTO TABLE : bronze.erp_loc_a101';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		BULK INSERT bronze.erp_loc_a101
		FROM 'C:\Users\mdey8\OneDrive\Desktop\all folder\sql_datawarehouse_project_26\dataset\source_erp\LOC_A101.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);

		SELECT COUNT(*) FROM bronze.erp_loc_a101;
		SET @end_time = GETDATE();
		PRINT 'Time Duration : ' + CAST(DATEDIFF(second , @start_time,@end_time) AS NVARCHAR) + ' seconds';


		SET @start_time = GETDATE();
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'TRUNCATE TABLE : bronze.erp_px_cat_g1v2';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		TRUNCATE TABLE bronze.erp_px_cat_g1v2;


		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		PRINT 'INSERT INTO TABLE : bronze.erp_px_cat_g1v2';
		PRINT '++++++++++++++++++++++++++++++++++++++++++++++++++++';
		BULK INSERT bronze.erp_px_cat_g1v2
		FROM 'C:\Users\mdey8\OneDrive\Desktop\all folder\sql_datawarehouse_project_26\dataset\source_erp\PX_CAT_G1V2.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);

		SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;
		SET @end_time = GETDATE();
		PRINT 'Time Duration : ' + CAST(DATEDIFF(second , @start_time,@end_time) AS NVARCHAR) + ' seconds';

	END TRY
	BEGIN CATCH
	PRINT '==========================================';
	PRINT 'ERROR OCCURED DURING LOADING DATA IN BRONZE LAYER';
	PRINT 'Error Message' + ERROR_MESSAGE();
	PRINT 'Error Message' + CAST(ERROR_NUMBER() AS NVARCHAR);
	PRINT 'Error Message' + CAST(ERROR_STATE() AS NVARCHAR);
	PRINT '==========================================';
	END CATCH
END;