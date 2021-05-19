# CS 166: Lab7 Assignment: Indexing

The purpose of the following assignment is to explore how indexes can
be used to improve the performance of SQL queries, the different types of
indexes supported by Postgres, and the issues involved around indexes and
the optimizer.

Having read chapter 8 in the textbook will help you understand many
aspects of this lab.

For this assignment you will need to download and unzip lab7.zip from
Google Drive. Execute the following commands to setup your environment.
```
source ./startPostgreSQL.sh
source ./createPostgreDB.sh
```

Write the following SQL queries in queries.sql both with and without
using indexes:
1. Count how many parts in NYC have more than 70 parts on hand
2. Count how many total parts on hand, in both NYC and SFO, are Red
3. List all the suppliers that have more total on hand parts in NYC than
   they do in SFO.
4. List all suppliers that supply parts in NYC that aren’t supplied by
   anyone in SFO.
5. Update all of the NYC on hand values to on hand - 10.
6. Delete all parts from NYC which have less than 30 parts on hand.
   Some notes about the data model and the questions:
   * part number is the primary key for each part table. But it is not unique
   across both tables.
   * If a part has the same number in NYC and SFO it is the same part,
   regardless of color, etc.
   * If I say, e.g. “Red parts”, I mean color name = “Red” not color = 0.
   *  Different suppliers may supply the same part in NYC and SFO.
   
If you want to measure execution time of individual query you need to
   execute “\timing” command in interactive psql terminal. I have provided you
   with a measure.sh script, which measures this time for you. Execution time can
   vary depending on the multiple factors, hence be sure that you re-port average
   time across several executions.
   
Write all your queries in queries.sql file. File create indexes.sql should contain
   create statements for all the indexes you decide are best for the queries you have
   written.
   
Notice that the last two questions are changing the data. To make the
   experiment reasonable, make sure that your queries run on the same data, with
   and without indexes.
   
You should experiment with B-tree indexes, built on different columns. Create a
   lab7.txt file and record the execution time of the queries before the index creation
   and after index creation. Use the following syntax for create index statement:
```
   CREATE INDEX index name
   ON table name
   [USING BTREE]
   (index.col.name)
```
   You can find the Postgres documentation on indexes at
   http://www.postgresql.org/docs/8.1/static/indexes.html
   
**<u>Task Summaries:</u>**
1. Start PostgreSQL server and create database (execute startPostgreSQL.sh and
   createPostgreDB.sh).
2. Create tables (execute create_tables.sql).
3. Write the above mentioned SQL queries in queries.sql script, execute it, and take
   the <u>screenshot of the output</u>.
4. Write the relevant DROP INDEX and CREATE INDEX statements in
   create_indexes.sql script.
5. Execute measure.sh script, take the <u>screenshot</u> of the output and create a lab7.txt
   file as mentioned above.
6. Submit the modified queries.sql, create_indexes.sql scripts, lab7.txt file, and the
   taken screenshots (two) in iLearn.
7. Execute stopPostgreDB.sh.
