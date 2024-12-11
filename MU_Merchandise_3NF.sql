-- Drop the database if it already exists
DROP DATABASE IF EXISTS MU_Merchandise;
CREATE DATABASE MU_Merchandise;

-- Use the newly created database
USE MU_Merchandise;

-- Create Customers Table
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_Contact VARCHAR(255)
);

-- Create Sizes Table
CREATE TABLE Sizes (
    Size_ID INT AUTO_INCREMENT PRIMARY KEY,
    Size VARCHAR(10) NOT NULL
);

CREATE TABLE Items (
    Item_ID INT AUTO_INCREMENT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price DECIMAL(10, 2),
    Size_ID INT,
    FOREIGN KEY (Size_ID) REFERENCES Sizes(Size_ID)
);

-- Create Orders Table
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Item_ID INT NOT NULL,
    Paid BOOLEAN NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID)
);

-- Insert Data into Sizes Table
INSERT INTO Sizes (Size) VALUES 
('S'), 
('M'), 
('L'), 
('XL'), 
('2XL'), 
('3XL'), 
('4XL');


-- Insert Data into Customers Table
INSERT INTO Customers (Customer_Name, Customer_Contact)
VALUES
('Drew Clancy', NULL),
('Griffin Means', NULL),
('Andrew Fretz', NULL),
('Lily Womer', 'lw1349@messiah.edu'),
('Jasper Silvis', '610-864-2589'),
('Gabe Henry', '484-797-4447'),
('Tiffani Fout', '240-277-9609'),
('Jake McIntire', '717-736-3027'),
('Madeline Pendleton', '267-664-8019'),
('Regan Tan', '717-802-7771'),
('Sean Lau', NULL),
('Aaron Swarr', '717-468-3245'),
('Josh Cook', '717-448-2338'),
('Adam Bautista', 'adaman27@gmail.com'),
('Isaiah Cottrell', NULL),
('Andrew Clancy', '717-691-0412'),
('Aaron Smith', '717-353-5434'),
('Thomas Phillips', NULL),
('Colin Wages', NULL),
('Sam Alderfer', NULL),
('Sam Kinch', NULL),
('Sherian Henry', NULL),
('Matthew Merlo', NULL),
('Jacob Cruzan', NULL),
('Zac McIntire', NULL),
('Gavin Kinch', NULL);

-- Insert Data into Items Table
INSERT INTO Items (Item_name, Item_price, Size_ID)
VALUES
("M Short Sleeve", 27, 1),
("M Short Sleeve", 27, 2),
("M Short Sleeve", 27, 3),
("M Short Sleeve", 27, 4),
("M Short Sleeve", 27, 5),
("M Short Sleeve", 27, 6),
("W Short Sleeve", 27, 1),
("W Short Sleeve", 27, 2),
("W Short Sleeve", 27, 3),
("W Short Sleeve", 27, 4),
("W Short Sleeve", 27, 5),
("W Short Sleeve", 27, 6),
("Long Sleeve", 32, 1),
("Long Sleeve", 32, 2),
("Long Sleeve", 32, 3),
("Long Sleeve", 32, 4),
("Long Sleeve", 32, 5),
("Long Sleeve", 32, 6),
("Sweatshirt", 55, 1),
("Sweatshirt", 55, 2),
("Sweatshirt", 55, 3),
("Sweatshirt", 55, 4),
("Sweatshirt", 55, 5),
("Sweatshirt", 55, 6),
("Sweatshirt", 55, 7);

INSERT INTO Orders (Customer_ID, Item_ID, Paid) VALUES
(1, 2, 0),
(1, 2, 0),
(1, 14, 0),
(1, 20, 0),
(2, 3, 1),
(2, 8, 1),
(3, 2, 0),
(3, 2, 0),
(3, 14, 0),
(3, 14, 0),
(3, 20, 0),
(4, 20, 0),
(5, 2, 1),
(5, 2, 1),
(5, 8, 1),
(5, 15, 1),
(5, 20, 1),
(6, 3, 1),
(6, 21, 1),
(6, 15, 1),
(7, 14, 1),
(7, 16, 1),
(7, 20, 1),
(8, 14, 1),
(9, 9, 1),
(9, 14, 1),
(9, 14, 1),
(9, 16, 1),
(9, 25, 1),
(10, 21, 1),
(11, 20, 1),
(12, 4, 0),
(12, 16, 0),
(12, 22, 0),
(13, 20, 1),
(13, 22, 1),
(14, 2, 1),
(14, 14, 1),
(15, 21, 1),
(16, 22, 0),
(17, 2, 1),
(17, 3, 1),
(17, 5, 1),
(17, 5, 1),
(17, 5, 1),
(17, 10, 1),
(17, 12, 1),
(17, 15, 1),
(17, 20, 1),
(18, 15, 1),
(18, 16, 1),
(18, 21, 1),
(19, 3, 1),
(19, 3, 1),
(19, 7, 1),
(19, 15, 1),
(19, 15, 1),
(19, 20, 1),
(20, 22, 1),
(21, 2, 1),
(21, 2, 1),
(22, 21, 1),
(23, 1, 1),
(23, 11, 1),
(23, 20, 1),
(24, 3, 1),
(24, 21, 1),
(24, 22, 1),
(25, 3, 1),
(25, 8, 1),
(25, 20, 1),
(26, 15, 1);

Select * From Sizes;
Select * From Customers;
Select * From Items;
Select * From Orders;

Select C.Customer_name as Name, count(O.Order_ID) as Num_orders
from Customers C
join Orders O
On C.Customer_ID = O.Customer_ID
Group by O.Customer_ID




