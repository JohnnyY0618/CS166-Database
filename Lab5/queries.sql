-- Find the pid of parts with cost lower than 10
SELECT pid
FROM Catalog
WHERE cost < 10;

-- Find the name of parts with cost lower than 10
SELECT pname
FROM Parts,Catalog
WHERE Parts.pid=Catalog.pid AND cost<10;

-- Find the address of the suppliers who supply “Fire Hydrant Cap”
SELECT address
FROM Suppliers,Catalog,Parts
WHERE Suppliers.sid=Catalog.sid AND Catalog.pid=Parts.pid AND pname='Fire Hydrant Cap';

-- Find the name of the suppliers who supply green parts
SELECT sname
FROM Suppliers,Catalog,Parts
WHERE Suppliers.sid=Catalog.sid AND Catalog.pid=Parts.pid AND color='Green';

-- For each supplier, list the supplier’s name along with all parts’ name that it supply
SELECT sname,pname
FROM Suppliers,Catalog,Parts
WHERE Suppliers.sid=Catalog.sid AND Catalog.pid=Parts.pid;
