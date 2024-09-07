use Sales_OLTP;

-- sql Command for Dim_Product

select ProductID, ProductName, Price, S.SubCategoryID, SubCategoryName, C.CategoryID, CategoryName
from Product P left join SubCategory S
on P.SubCategoryID = S.SubCategoryID
left join Category C
on S.CategoryID = C.CategoryID;





use Sales_DWH;


select * from Dim_Product where ProductID_BK=1;
-- get the new price of the product (HL Road Frame - Black, 588)
select * from Dim_Product where ProductID_BK=1 and is_current = 1;
-- get the old price of the product (HL Road Frame - Black, 588)
select * from Dim_Product where ProductID_BK=1 and is_current = 0;
