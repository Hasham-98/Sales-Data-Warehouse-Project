use Sales_OLTP;



--sql command for fact table

select OD.ProductID, O.CustomerId, O.SalesmanID, O.OrderDate, O.OrderID, OD.OrderDetailsID, OD.Quantity, 
       OD.TotalPrice, OD.LastModifiedDate
from [Sales_OLTP].[dbo].[OrderDetails] as OD inner join [Sales_OLTP].[dbo].[Order] as O
on Od.OrderID = O.OrderID
where OD.OrderDetailsID > ?;

--------------------------------------------------------------------------------
use Sales_DWH;
--sql command for Meta Table

select [Last_Load_OrderDetailsID_BK]
from [Sales_DWH].[dbo].[Meta_Control_Fact_Sales_Load]
where [SalesOrderDetails]='Orders_Details';


--sql command to get the max(OrderDetailsID))
select max(OrderDetailsID_BK) as last_ID
from Fact_Sales;


--sql command to update meta table with max(OrderDetailsID) value 
update Meta_Control_Fact_Sales_Load
set Last_Load_OrderDetailsID_BK=?, 
Last_load_date=?
where SalesOrderDetails='Orders_Details';
