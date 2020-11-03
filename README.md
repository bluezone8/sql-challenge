# SQL CHALLENGE
______
### PURPOSE 
The purpose of this repository is to store files related to the Pewlett Hackard Employee Database Analysis 
_____
### Analytical Tool Choice 
The primary tool for this analysis is the PostgreSQL database.  Within the database, queries to create and extract data were executed using SQL.  PostgreSQL provides an efficient and flexible mechanism to take the data from the CSV format to a format (database tables) that can be utlized in analysis.  Additionally, the database can be easily called from Python/Pandas if non-SQL functionality is called for in the analysis of the data.  

The secondary tool utilized for the optional portion of the analysis is Python.  Within this, the modules of Pandas, Matplotlib, SQLAlchemy, and Psycopg2 to provide functionality for calling and querying the database from Python and creating chart analyses of the data.  
____
### APPROACH
While the analysis itself is straightforward and requires no elaboration, there are a few points worth noting related to the creation of the entity relationship model.  A first point is that the dept_emp table is an irregular table that only contains data from primary keys from two other tables and has no single attribute which contains unique data and therefore requires a composite of the two columns in the table to act as the primary key for the table.  A second point is that of the description of the various relationships between the tables in the database.  1. employee to salaries  - many to one - an employee has one salary and a sigle salary can be true of many employees. 2.  employees to dept_mgr - one to one - an employee can be a department manager and a department manager is one employee. 3.  employees to titles - many to one - an employee can have only one title but a single title can apply to many employees. 4. employees to dept_emp - one to one - an employee is one employee and has a single department. 5. employees to departments - many to one - an employee has a single dpeartment but a department has many employees. 6. salaries to dept_mgr - one to many - a department manager has a single salary but a single salary value can apply to many department managers.  7. salaries to dept_emp - one to manay - an employee can have only one salary but a sigle salary value can apply to many employees. 8. dept_mgr to dept_emp - one to one - dept_mgr is essentially a subset of dept_emp that only contains managers and thus a manger is a single employee with one department. 9. dept_mgr to departments - many to one - a department manager has only one department but a single department can have many managers. 10. dept_emp to departments - many to one - a single employee has only one department but a department has many employees
___________
### INCLUDED ITEMS
The items included in the repository inlude:
1.  The SQL code for the database queries used in the analysis (.sql file)
2.  The ER Diagram for the Employee Database (.pdf file)
3.  The Jupyter Notebook containing the database tables imported into Pandas as dataframes, charts of data from Matplotlib, and an additional query called from pandas that provides the employee data from various tables related to our data protagonist April Foolsday.  (.ipynb file)
4. HTML copy of the Jupyter Notebook provided to facilitate viewing of the notebook in color in a browser without Jupyter Notebooks.  