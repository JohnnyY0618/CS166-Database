# CS 166: Lab6 Assignment: Using Java toWrite Database Queries

The purpose of the following assignment is to practice connection to the
database system using Java. If you have never used Java of never tried to
establish connection to a database you might find helpful to read the lab
notes (part1 and part2).
To create initial table structure and load some data you may use the
scripts from previous lab (lab5/ folder in lab6.zip). Once you initialize your
database and verify that it is up and running continue with Exercises 1 and 2.
1. Exercise 1 (SQL)
Write the following queries using the schema from the previous lab:
   * Find the total number of parts supplied by each supplier.
   * Find the total number of parts supplied by each supplier who supplies at least 3 parts.
   * For every supplier that supplies only green parts, print the name of the supplier and the total number of parts that he supplies.
   * For every supplier that supplies green part and red part, print thename of the supplier and the price of the most expensive part that he supplies.

2. Exercise 2 (Java)
For the following exercise you need to download and unzip lab6.zip from
iLearn.
To implement the queries in Java you will need to modify example file
EmbeddedSQL.java. In order to run Java example you will also need to have pg73jdbc3.jar file in the same directory. You can compile and
run the example program by executing compile.sh script.Implement the following queries in the methods Query1 to Query6 using the method QueryExample as an example (EmbeddedSQL.java):
   * Implement the 4 problems from Exercise 1
   * Implement the additional queries where “ ” represents a user’s
input:
      * -Query 5: Find the name of parts with cost lower than “_”
      * -Query 6: Find the address of the suppliers who supply “_” (pname)

## Submission Requirements:
Turn in,
  1. Exercise 1 queries in a SQL script (.sql format), and
  2. Exercise 2 code (modified EmbeddedSQL.java code) 
