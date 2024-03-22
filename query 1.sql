-- Create the Department table
CREATE TABLE Department (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Create the Person table with a foreign key constraint
CREATE TABLE Person (
    PersonID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Address VARCHAR(255),
    MobileNumber VARCHAR(20),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Insert dummy data into the Department table
INSERT INTO Department (DepartmentName)
VALUES
    ('HR'),
    ('Engineering'),
    ('Marketing');

-- Insert dummy data into the Person table
INSERT INTO Person (Name, Age, Address, MobileNumber, DepartmentID)
VALUES
    ('John Doe', 35, '123 Main St', '555-1234', 2),  -- John Doe in Engineering department
    ('Jane Smith', 28, '456 Oak St', '555-5678', 3), -- Jane Smith in Marketing department
    ('Michael Johnson', 40, '789 Elm St', '555-7890', 1); -- Michael Johnson in HR department
