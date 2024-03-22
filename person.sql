-- Insert dummy data into the Department table
DO $$
BEGIN
    FOR i IN 1..10 LOOP
        INSERT INTO Department (DepartmentName) VALUES ('Department ' || i);
    END LOOP;
END $$;

-- Insert dummy data into the Person table for each department
DO $$
DECLARE
    dept_id INT;
BEGIN
    FOR i IN 1..10 LOOP
        SELECT DepartmentID INTO dept_id FROM Department WHERE DepartmentName = 'Department ' || i;
        FOR j IN 1..100 LOOP
            INSERT INTO Person (Name, Age, Address, MobileNumber, DepartmentID)
            VALUES 
                ('User ' || j, 
                 20 + (RANDOM() * 40)::INT, -- Random age between 20 and 60
                 'Address ' || j, 
                 '555-1234', -- Dummy mobile number
                 dept_id);
        END LOOP;
    END LOOP;
END $$;