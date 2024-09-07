use Sales_OLTP;

-- sql command for Dim_Customer
select CustomerID, FirstName, LastName, Email, PhoneNumber, G.GenderID, GenderName
from Customer C left join Gender G
on C.GenderID = G.GenderID;
-------




use Sales_DWH;


select * from Dim_Customer;
select * from Dim_Customer where CustomerID_BK=1;
select * from Dim_Customer where CustomerID_BK=1 and is_current=0;
