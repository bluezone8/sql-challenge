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
While the analysis itself is straightforward and requires no elaboration, there are a couple of points worth noting related to the creation of the entity relationship model.  
A first point is that the dept_emp table is a junction table that only contains data from primary keys from employees and departments tables and serves as a link beween them to other tables.  Subsequently, it has no single attribute which contains unique data and therefore requires a composite of the two columns in the table to act as the primary key for the table.  
A second point is that of the cardinality of the various relationships between the tables in the database.  
1. departments.dept_no to dept_mgr.dept_no - one to many  - there are multiple managers in one department
2. departments.dept_no to dept_emp.dept_no - one to many - there are multiple employees in one one department
3. employees.emp_no to dept_mgr.emp_no - one to one - each manager is only one employee
4. employees.emp_no to dept_emp.emp_no - one to many - the same employee is a part of multiple departments and so a single employee from the employee table will have multiple instances in the dept_emp table
5. employees.emp_no to salaries.emp_no - many to one  - there are multiple employees with the same salary 
6. employees.emp_title_id to titles.title_id - many to one - there are multiple employees with the same title
___________
### INCLUDED ITEMS
The items included in the repository inlude:
1.  The SQL code for the database queries used in the analysis (.sql file)
2.  The ER Diagram for the Employee Database (.jpg file)
3.  The Jupyter Notebook containing the database tables imported into Pandas as dataframes, charts of data from Matplotlib, and an additional query called from pandas that provides the employee data from various tables related to our data protagonist April Foolsday.  (.ipynb file)
4. HTML copy of the Jupyter Notebook provided to facilitate viewing of the notebook in color in a browser without Jupyter Notebooks.  
5.  Table Schema SQL file for the Employee Database (.sql file)