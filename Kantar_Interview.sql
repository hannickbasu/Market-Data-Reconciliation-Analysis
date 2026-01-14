CREATE DATABASE Kantar_Interview;
USE Kantar_Interview;
/* 1) How to identify the Records (Order ID + Product ID combination) 
present in data1 but missing in data2 
(Specify the number of records missing in your answer)*/

SELECT d1.OrderID, d1.ProductID, d1.Qty
FROM data1 d1
LEFT JOIN data2 d2
  ON d1.OrderID = d2.OrderID
 AND d1.ProductID = d2.ProductID
WHERE d2.OrderID IS NULL; #507 records missing
 
SELECT COUNT(*) AS Missing_in_data2
FROM data1 d1
LEFT JOIN data2 d2
  ON d1.OrderID = d2.OrderID
 AND d1.ProductID = d2.ProductID
WHERE d2.OrderID IS NULL;

/*2) How to identify the Records (Order ID + Product ID combination) 
missing in data1 but present in data2 
(Specify the number of records missing in your answer)*/
SELECT d2.OrderID, d2.ProductID
FROM data1 d1 
right join data2 d2
ON d1.OrderID = d2.OrderID
AND d1.ProductID = d2.ProductID
WHERE d1.OrderID IS NULL; #508 records missing

/*3) Find the Sum of the total Qty of Records
 missing in data1 but present in data2*/
SELECT SUM(d2.Qty) AS Total_Qty_Missing_in_data1
FROM data2 d2
LEFT JOIN data1 d1
  ON d2.OrderID = d1.OrderID
 AND d2.ProductID = d1.ProductID
WHERE d1.OrderID IS NULL; #1956 missing records


/*4) Find the total number of unique records (Order ID + Product ID combination)
 present in the combined dataset of data1 and data2*/
SELECT COUNT(*) AS Total_Unique_Records
FROM (
  SELECT OrderID, ProductID FROM data1
  UNION
  SELECT OrderID, ProductID FROM data2
) AS combined; #9936

