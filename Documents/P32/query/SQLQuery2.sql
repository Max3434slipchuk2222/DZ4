IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'Products')) 
EXEC dbo.sp_executesql @statement = N'
CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Price DECIMAL(20,2) NOT NULL
);';