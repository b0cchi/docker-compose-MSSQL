IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'sampledb')
BEGIN
    CREATE DATABASE sampledb;
END;
GO
USE sampledb;
GO
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'book' AND type = 'U')
BEGIN
    CREATE TABLE book (
        id int identity(1, 1) primary key,
        title nvarchar(50)
    );
END;
GO
