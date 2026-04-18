# sql-data-warehouse-project
Building a New Data Warehouse Project using ETL processes and Data Modeling 
## Data Warehousing Project – Sales Data using Medallion Architecture

This project implements a **Sales Data Warehouse** using the Medallion Architecture approach with Bronze, Silver, and Gold layers. The data source consists of structured **CSV files**, representing transactional sales data. The overall project planning, milestones, and workflow were documented using **Notion**, while the warehouse was developed using **SQL Server**.

The **Bronze layer** is implemented conceptually to represent raw data ingestion from CSV files without modification. The **Silver layer** contains cleaned and standardized sales data stored in relational tables, where transformations such as data cleansing, normalization, enrichment, and derived column generation are performed using batch loading techniques.

The **Gold layer** contains business-ready views modeled using a **Star Schema**, including fact and dimension tables with aggregated metrics. These datasets are designed to support **BI reporting in Power BI**, ad-hoc SQL queries, and future analytical and machine learning workloads.
