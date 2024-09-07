
-----------------------------------------------------------------------------------------------------------
--Lookups
use Sales_DWH;
use Sales_DWH;
-- Lookup on Dim_product
select * from Dim_Product;
select ProductID_SK, ProductID_BK
from Dim_Product
where is_current=1;

-- Lookup on Dim_customer
select CustomerID_SK, CustomerID_BK
from Dim_Customer
where is_current=1;


-- Lookup on Dim_salesman
select SalesmanID_SK, SalesmanID_BK
from Dim_Sales_Man
where is_current=1;


---- Lookup on Dim_Date
select DateSK, Date
from DimDate;


-- Lookup on Dim_Time
select TimeSK, Time
from DimTime


