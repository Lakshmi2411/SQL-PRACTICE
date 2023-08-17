--Select * from Agents a where a.Agent_code='AA01';
--------------------------------------------------------------
/*
CREATE TABLE Employee (
  Emp_id Varchar NOT NULL PRIMARY KEY,
  Emp_name VARCHAR,
  Location Varchar,
  Commission int,
  Phone_no VARCHAR,
  Country VARCHAR
);

INSERT INTO Employee VALUES
('E01', 'John Doe', 'New York', 20, '123-456-7890', 'USA'),
('E02', 'Jane Smith', 'London', 15, '987-654-3210', 'UK'),
('E03', 'Bob Williams', 'Sydney', 10, '040-5060-7080', 'Australia'),
('E04', 'Sarah Johnson', 'Chicago', 18, '050-6070-8080', 'USA'),  
('E05', 'Mike Brown', 'Toronto', 12, '060-7080-9090', 'Canada'),
('E06', 'Lisa Davis', 'Paris', 22, '070-8090-0001', 'France'),
('E07', 'Chris Miller', 'Berlin', 16, '080-9001-1011', 'Germany'),
('E08', 'Jessica Moore', 'Milan', 25, '090-1011-2121', 'Italy'),
('E09', 'Matthew Taylor', 'Osaka', 19, '010-2121-3131', 'Japan'),
('E10', 'Emma Thomas', 'Shanghai', 30, '011-3131-4141', 'China');
*/

--SELECT * from Employee;
/*
CREATE TABLE Customer (
  customer_id Varchar NOT NULL PRIMARY KEY,
  cust_name VARCHAR NOT NULL,
  cust_city VARCHAR(50),
  WORKING_AREA VARCHAR NOT NULL,
  cust_country VARCHAR(50) NOT NULL,
GRADE INT,
OPENING_AMT FLOAT NOT NULL,
RECIEVE_AMT FLOAT NOT NULL,
PAYMENT_AMT FLOAT NOT NULL,
OUTSTANDING_AMT FLOAT NOT NULL,
phone_number VARCHAR(20) NOT NULL,
Emp_id VARCHAR NOT NULL
);
INSERT INTO Customer VALUES
  ('C01', 'John Doe', 'New York', 'East', 'USA', 2, 1000, 5000, 2000, 3000, '123-456-7890', 'E01'),
  ('C02', 'Jane Smith', 'London', 'West', 'UK', 1, 2000, 6000, 1500, 4500, '987-654-3210', 'E02'),
  ('C03', 'Bob Williams', 'Paris', 'Central', 'France', 3, 1500, 5500, 1000, 4000, '333-333-3333', 'E03'),
  ('C04', 'Sarah Johnson', 'Sydney', 'Australia', 'Australia', 1, 800, 4000, 400, 3400, '222-222-2222', 'E04'),
  ('C05', 'Mark Taylor', 'Toronto', 'North America', 'Canada', 2, 3000, 8000, 2500, 5500, '111-111-1111', 'E05');*/
--select * from Customer;
--DROP TABLE Customers;
/*
INSERT INTO Customer VALUES
  ('C06', 'Amit Shah', 'Mumbai', 'West', 'India', 1, 500, 2000, 1000, 1500, '444-555-6666', 'E11'),
  ('C07', 'Priya Raj', 'Delhi', 'North', 'India', 2, 2000, 4000, 1500, 2500, '777-888-9999', 'E12'),
  ('C08', 'Rohan Desai', 'Bangalore', 'South', 'India', 1, 1000, 3000, 800, 2200, '000-123-4567', 'E13'),
  ('C09', 'Lata Mangeshkar', 'Pune', 'West', 'India', 3, 5000, 10000, 4500, 5500, '999-123-4567', 'E14'),
  ('C10', 'Shahrukh Khan', 'Chennai', 'South', 'India', 2, 1500, 5000, 1000, 4000, '123-765-4321', 'E15');
  
INSERT INTO Employee VALUES
('E11', 'Amar Shah', 'Mumbai', 10, '011-121-2345', 'India'),
('E12', 'Preeti Mishra', 'Delhi', 12, '011-122-2345', 'India'),
('E13', 'Rohit Sharma', 'Bangalore', 15, '011-123-2345', 'India'),
('E14', 'Priyanka Desai', 'Pune', 18, '011-124-2345', 'India'), 
('E15', 'Virat Kohli', 'Chennai', 20, '011-125-2345', 'India');
*/
--SELECT count(Emp_id) from Employee;
--Select count(customer_id) from Customer;
--SELECT avg(outstanding_amt) from Customer;
--select cust_name,customer_id,outstanding_amt,emp_id from Customer where outstanding_amt>(SELECT avg(outstanding_amt) from Customer);
--Select * from Agents where agent_code='AA01';
--SELECT * FROM AGENTS WHERE agent_code IN ('AA01','AA10')
Select * from Employee where emp_id IN(Select emp_id FROM Customer where outstanding_amt>(SELECT avg(outstanding_amt) from Customer));