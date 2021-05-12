# CS 166: Lab5 Assignment: Structured Query Language - SQL

The purpose of the following assignment is to practice the Structured
Query Language - SQL statements. Please create a single script file (.sql),
containing all your SQL queries.
Consider the following schema:
```
Suppliers ( sid NUMERIC(9 , 0) PRIMARY KEY,
            sname CHAR(30) ,
            address CHAR(40)) ;
Parts ( pid NUMERIC(9 , 0) PRIMARY KEY,
        pname CHAR(40) ,
        color CHAR(15)) ;
Catalog ( sid NUMERIC(9 , 0),
          pid NUMERIC(9 , 0),
          cost NUMERIC(10, 2),
          PRIMARY KEY(sid, pid),
          FOREIGN KEY(sid) REFERENCES Suppliers,
          FOREIGN KEY(pid) REFERENCES Parts);
```
In order to create tables and load initial data please download the file
lab5.zip from iLearn to you computer. Unpack the .zip file, you will find three
bash files (in .sh format), three text files and a sql script (in .sql format).
Create the corresponding files into your assigned lab machine for all of these
files. Please be careful about the file extensions. After creating these files, do
the following steps:

Open file startPostgreSQL.sh and change the port number to a value in the
range [1024, 32768]. Execute source ./startPostgreSQL.sh and make sure the
server is running by typing pg ctl status. If it has not started change the port
to a different value and try again. Make sure to check /tmp/$USER/logfile
for any error messages. Once the server is up and running, execute:
```
source ./createPostgreDB.sh
cp ∗.txt /tmp/$USER/myDB/data/
psql −h local host −p $PGPORT $USER” DB” < chapter5.sql
```
The second command from above will copy the .txt files in lab5.zip inside
the data folder of your database. These files need to exist in that location to
be used by the next command that executes chapter5.sql. The .sql script will
initialize the tables and insert data into them so you can run your queries on
top of a toy dataset.
Create a script file with the commands in SQL to answer the following
queries:
• Find the pid of parts with cost lower than 10
• Find the name of parts with cost lower than 10
• Find the address of the suppliers who supply “Fire Hydrant Cap”
• Find the name of the suppliers who supply green parts
• For each supplier, list the supplier’s name along with all parts’ name
that it supply
Create queries.sql and execute the script:
```
psql −h local host −p $PGPORT $USER” DB” < queries.sql
```
Take the screenshot of the output you get after executing the script, **submit
the queries.sql file and the screenshot** at the end of the lab. <bar
  *** DO NOT forget to execute source ./stopPostgreDB.sh to stop the
server once you are done.
