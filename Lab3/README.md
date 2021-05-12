# CS 166: Lab 3 Assignment: Relational
Modeling
April 18, 2018
This assignment is to practice the relational modeling: convert an ER
model into the Relational model for a specific database. The correct ER
diagrams for the exercises from the previous lab are given to you and you
should use them as a reference, when you are creating the relational model.

To do this assignment, you need to carefully read the lab notes and understand how different ER connectors are modeled in database. Please pay
attention to those constraints in the ER model. When you finish, create
a single “.sql” file contains all the SQL statements that will create all the
tables for both of the two exercises. (Inside the “.sql” file, you can use “–”
at the beginning of a line to add comments.) Make sure you sql script is
“recreatable”, i.e. add “DROP TABLE” statements in the beginning of the
script, so that PosgreSQL will not complain, when you will try to create the
same table twice.
1. Use the entity-relational model created for Exercise 1 (University database)
in the previous lab. Here it is a solution in [lab1](../Lab1/cs166lab1.pdf.pdf) for this exercise. Construct a
corresponding relational schema and database in Postgres.

2. Use the entity-relational model created for Exercise 2 (Notown Records)
in the previous lab. Here it is a solution in [lab1](../Lab1/cs166lab1.pdf.pdf) for this exercise. Construct a
corresponding relational schema and database in Postgres.
