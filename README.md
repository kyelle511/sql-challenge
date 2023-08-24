# sql-challenge
Module 9 Challenge Assignment - SQL
Contributor: Katy Yelle

### Repository Structure
    -Main Folder
        -README.md
        -EmployeeSQL folder
            -ERD_Diagram.png
            -schema.sql
            -data_analysis.sql
            -data folder
                -departments.csv
                -dept_emp.csv
                -dept_manager.csv
                -employees.csv
                -salaries.csv
                -titles.csv

### Overview
-ERD_Diagram.png
A picture of the Entity Relationship Diagram of the tables based on the contents of the csv files in the data folder. Generated from quickdatabasediagrams.com 

-schema.sql
This sql file creates all the tables for the employee database specifying data types, primary keys, foreign keys and other constraints.  At the top of the file is a series of DROP TABLE CASCADE commands to prepare a fresh start.  Tables should be created in the same order as presented in the file. When importing the csv files into the tables it should be in the same order as well (departments, titles, employees, salaries, dept_emp, dept_manager).

-data_analysis.sql
Performs 8 different analyses using the tables created in schema.sql after the data has been imported from the csv files in the data folder.

-data folder
Contains the csv files to be imported into the tables created in the schema.sql