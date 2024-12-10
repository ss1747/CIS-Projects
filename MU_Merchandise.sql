CREATE DATABASE MU_Merchandise;

USE MU_MERCHANDISE;


-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Contact VARCHAR(255),
    Paid BOOLEAN NOT NULL
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ItemType VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    Size VARCHAR(255),
    Price DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert Data into Customers Table
INSERT INTO Customers (Name, Contact, Paid)
VALUES
('Drew Clancy', NULL, TRUE),
('Griffin Means', NULL, TRUE),
('Andrew Fretz', NULL, TRUE),
('Lily Womer', 'lw1349@messiah.edu', TRUE),
('Jasper Silvis', '610-864-2589', TRUE),
('Gabe Henry', '484-797-4447', TRUE),
('Tiffani Fout', '240-277-9609', TRUE),
('Jake McIntire', '717-736-3027', TRUE),
('Madeline Pendleton', '267-664-8019', TRUE),
('Regan Tan', '717-802-7771', TRUE),
('Sean Lau', NULL, TRUE),
('Aaron Swarr', '717-468-3245', TRUE),
('Josh Cook', '717-448-2338', TRUE),
('Adam Bautista', 'adaman27@gmail.com', TRUE),
('Isaiah Cottrell', NULL, TRUE),
('Andrew Clancy', '717-691-0412', TRUE),
('Aaron Smith', '717-353-5434', TRUE),
('Thomas Phillips', NULL, TRUE),
('Colin Wages', NULL, TRUE),
('Sam Alderfer', NULL, TRUE),
('Sam Kinch', NULL, TRUE),
('Sherian Henry', NULL, TRUE),
('Matthew Merlo', NULL, TRUE),
('Jacob Cruzan', NULL, TRUE),
('Zac McIntire', NULL, TRUE),
('Gavin Kinch', NULL, TRUE);

-- Insert Data into Orders Table
INSERT INTO Orders (CustomerID, ItemType, Quantity, Size, Price)
VALUES
(1, 'M Short Sleeve', 2, 'M,M', 141.00),
(2, 'M Short Sleeve', 1, 'L', 54.00),
(3, 'M Short Sleeve', 2, NULL, 173.00),
(4, 'M Short Sleeve', 1, NULL, 55.00),
(5, 'M Short Sleeve', 2, 'M,M', 168.00),
(5, 'W Short Sleeve', 1, 'M', NULL),
(6, 'M Short Sleeve', 1, 'L', 114.00),
(7, 'M Short Sleeve', 1, 'M', 119.00),
(8, 'M Short Sleeve', 2, 'M,XL', 32.00),
(9, 'M Short Sleeve', 1, 'L', 178.00),
(10, 'M Short Sleeve', 1, 'L', 55.00),
(11, 'M Short Sleeve', 1, 'M', 55.00),
(12, 'M Short Sleeve', 1, 'XL', 114.00),
(13, 'M Short Sleeve', 2, 'M,XL', 110.00),
(14, 'M Short Sleeve', 1, 'M', 59.00),
(15, 'M Short Sleeve', 1, 'L', 55.00),
(16, 'M Short Sleeve', 1, 'XL', 55.00),
(17, 'M Short Sleeve', 5, '2X,L,M', 276.00),
(17, 'W Short Sleeve', 2, '3X,XL', NULL),
(18, 'M Short Sleeve', 2, 'XL,L', 119.00),
(19, 'M Short Sleeve', 2, 'L,L', 200.00),
(20, 'M Short Sleeve', 2, 'M,M', 55.00),
(21, 'M Short Sleeve', 1, 'L', 54.00),
(22, 'M Short Sleeve', 1, 'S', 55.00),
(23, 'M Short Sleeve', 1, 'XXL', 109.00),
(24, 'M Short Sleeve', 1, 'L', 137.00),
(24, 'W Short Sleeve', 2, 'L,XL', NULL),
(25, 'M Short Sleeve', 1, 'M', 109.00),
(26, 'M Short Sleeve', 1, 'L', 32.00);
