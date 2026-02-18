task 1:Database Setup and Schema Design.
------------------------------------------


creating a database LibraryDB then we want use the database by using 'use LibraryDB '
then we can create the tables in database and adding primary key & foreign key for relationships

----Sample SQL Commands Used in sql

-- create the database
create database LibraryDB;
USE LibraryDB; 

-- Create and populate Authors table
create table Authors (...);
INSERT INTO Authors (...) VALUES (...);

-- Create and populate Categories table
CREATE TABLE Categories (...);
INSERT INTO Categories (...) VALUES (...);

-- Create Books table with Foreign Keys
   CREATE TABLE Books (...);

-- Create Members and Borrowings tables
CREATE TABLE Members (...);
CREATE TABLE Borrowings (...);

features
--------
Creating databases and tables

 Using AUTO_INCREMENT, PRIMARY KEY, and FOREIGN KEY

 Data insertion using INSERT INTO

 Data querying using SELECT

 Relational integrity via foreign keys

 Using ROLLBACK --if transactions were enabled
