Sales Data Warehouse Project
Overview
This project involves the extraction, transformation, and loading (ETL) of sales data from an OLTP (Online Transaction Processing) system to a Data Warehouse (DWH). 
The goal is to enable efficient data analysis and reporting by organizing data in a way that supports business intelligence activities.

1. OLTP Source
The OLTP system is designed for day-to-day transactional operations. The schema includes the following key tables:

Product: Contains product information, including category and pricing.
Order: Records customer orders, including order date and associated salesperson.
Customer: Stores customer details such as contact information and demographics.
Salesman: Tracks sales team members and their associated details.
OrderDetails: Provides a breakdown of products ordered, including quantity and total price.
SubCategory and Category: Classify products into hierarchical groups.
Address: Stores addresses related to customers and salespeople.
Gender: Holds gender-related information for customers.
The schema is optimized for handling a high volume of transactions, focusing on data entry, updates, and querying for current transactional data.

2. DWH Destination
The DWH schema is designed for reporting and analysis. It uses a star schema architecture, which includes:

Dim_Product: A dimension table for product details, including hierarchical category information.
Dim_Customer: A dimension table for customer details, optimized for slicing and dicing data based on customer attributes.
Dim_Sales_Man: A dimension table capturing details about sales personnel.
DimDate: A date dimension for handling time-based analysis.
DimTime: A dimension for detailed time attributes, allowing analysis down to specific time intervals.
Fact_Sales: The fact table that stores transactional data, including references to the dimension tables, quantities, and total sales.
This schema is optimized for complex queries, aggregations, and reporting, enabling business users to analyze sales trends, customer behavior, and product performance.

3. ETL Process
The ETL process is responsible for moving data from the OLTP system to the DWH. The key steps include:

Step 1: Extraction
Source: Data is extracted from the OLTP system, specifically from tables like Product, Order, Customer, Salesman, etc.
Format: Data is typically extracted in a structured format (via database queries).
Step 2: Transformation
Ensure data consistency.
Add new columns (e.g, source system code, is_current, start_date, end_date)
Apply Slowly cahnging dimensions(fixed - changing - historical)
Data Mapping: Map fields from the OLTP source to the corresponding fields in the DWH. For example, ProductID in OLTP maps to ProductID_SK in the DWH.
Date & Time Handling: Convert transactional timestamps into appropriate date and time dimensions.

4. Loading
Fact Table Loading: Populate the Fact_Sales table with transactional data.
Dimension Table Loading: Populate dimension tables (Dim_Product, Dim_Customer, Dim_Saleman) with relevant data.
Data Validation: Ensure data integrity by validating that all records are correctly loaded and match the expected schema.
