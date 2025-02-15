IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'Users')) 
EXEC dbo.sp_executesql @statement = N'
CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    FName NVARCHAR(100) NOT NULL,
	LName NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) NOT NULL,
);';