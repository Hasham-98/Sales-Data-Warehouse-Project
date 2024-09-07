use Sales_OLTP;



-- sql command for Dim_salesman


select SalesmanID, FirstName, LastName, Email, PhoneNumber, A.AddressID, StreetAddress, City, State, ZipCode
from Salesman S left join Address A
on S.AddressID = A.AddressID;
