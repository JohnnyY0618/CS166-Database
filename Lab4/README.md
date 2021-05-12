# CS 166: Lab 4 Assignment: The Relational Algebra & SQL

The purpose of the following assignment is to practice writing queries
using relational algebra and SQL. First, read Lab 4 notes before proceeding.
Please use the relational algebra operators to write the queries, and then
write the equivalent query in SQL.

You will need to turn-in the lab, so write your answers (i.e., queries in
both relational algebra and and SQL) in a text/word document, and upload
it to iLearn.

Assume that the following relations exist:
* BOOKS(DocId, Title, Publisher, Year)
* STUDENTS(StId, StName, Major, Age)
* AUTHORS(AName, Address)
* borrows(DocId, StId, Date)
* has-written(DocId, AName)
* describes(DocId, Keyword)

The following shows the entity relationship diagram. The key fields of
the relations are underlined in the ER diagram.
![image](https://user-images.githubusercontent.com/72288397/118036717-c37d6600-b321-11eb-8feb-120a1495c86a.png)

Write the following queries in relational algebra and then the equivalent
SQL query:
1. List the year and title of each book
2. List all information about students whose major is CS
3. List all students with books they can borrow
4. List all books published by McGraw-Hill before 1990
5. List the name of those authors who are living in Davis
6. List the name of students who are older than 30 and who are not
studying CS
7. Rename AName in the relation AUTHORS to Name
8. List the names of all students who have borrowed a book and who are
CS majors
9. List the title of books written by the author “Jones”
10. As previous, but not books that have the keyword “database”
11. Find the name of the youngest student
12. Find the title of the oldest book
