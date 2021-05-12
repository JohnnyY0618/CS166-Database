--Part1
DROP TABLE IF EXISTS Professor cascade;
DROP TABLE IF EXISTS Dept cascade;
DROP TABLE IF EXISTS Work_Dept cascade;
DROP TABLE IF EXISTS Project cascade;
DROP TABLE IF EXISTS Graduate cascade;
DROP TABLE IF EXISTS Work_In cascade;
DROP TABLE IF EXISTS Work_Proj cascade;


-- Part 1
-- translate Entities
CREATE TABLE Professor (
                            prof_ssn CHAR(10) NOT NULL,
                            name CHAR(64),
                            age INTEGER,
                            rank INTEGER,
                            speciality CHAR(64),
                            PRIMARY KEY (prof_ssn)
);

-- many side to a professor, Runs relationship
CREATE TABLE Dept (
                            dno INTEGER NOT NULL,
                            dname CHAR(64),
                            office CHAR(10),
                            prof_ssn CHAR(10) NOT NULL,
                            PRIMARY KEY (dno),
                            FOREIGN KEY (prof_ssn) REFERENCES Professor
);

CREATE TABLE Work_Dept (
                            prof_ssn CHAR(10) NOT NULL,
                            dno INTEGER NOT NULL,
                            time_pc INTEGER,
                            PRIMARY KEY (prof_ssn, dno),
                            FOREIGN KEY (prof_ssn) REFERENCES Professor,
                            FOREIGN KEY (dno) REFERENCES Dept
);

-- many side to a professor, manages relationship
CREATE TABLE Project (
                            pno INTEGER NOT NULL,
                            sponsor CHAR(32),
                            start_date DATE,
                            end_date DATE,
                            budget FLOAT,
                            prof_ssn CHAR(10) NOT NULL,
                            PRIMARY KEY (pno),
                            FOREIGN KEY (prof_ssn) REFERENCES Professor

);
-- many side to a dept, professor; Major relationship to dept, advisor relationship to senior, supervises to professor
CREATE TABLE Graduate (
                            grad_ssn CHAR(10) NOT NULL,
                            name CHAR(64),
                            age INTEGER,
                            deg_pg CHAR(32),
                            dno INTEGER NOT NULL,
                            senior_snn CHAR(10) NOT NULL,
                            --prof_ssn CHAR(10) NOT NULL,
                            PRIMARY KEY (grad_ssn),
                            FOREIGN KEY (dno) REFERENCES Dept,
                            FOREIGN KEY (senior_snn) REFERENCES Graduate
                            --FOREIGN KEY (prof_ssn) REFERENCES Professor
);

CREATE TABLE Work_In (
                            pno INTEGER NOT NULL,
                            prof_ssn CHAR(10) NOT NULL,
                            PRIMARY KEY (pno, prof_ssn),
                            FOREIGN KEY (prof_ssn) REFERENCES Professor,
                            FOREIGN KEY (pno) REFERENCES Project
);

CREATE TABLE Work_Proj (
                            pno INTEGER NOT NULL,
                            grad_ssn CHAR(10) NOT NULL,
                            since CHAR(8),
                            prof_ssn CHAR(10) NOT NULL,
                            PRIMARY KEY (pno, grad_ssn),
                            FOREIGN KEY (grad_ssn) REFERENCES Graduate,
                            FOREIGN KEY (pno) REFERENCES Project,
                            FOREIGN KEY (prof_ssn) REFERENCES Professor
);

--Part2
DROP TABLE IF EXISTS Musicians cascade;
DROP TABLE IF EXISTS Instrument cascade;
DROP TABLE IF EXISTS Plays cascade;
DROP TABLE IF EXISTS Album cascade;
DROP TABLE IF EXISTS Songs cascade;
DROP TABLE IF EXISTS Perform cascade;
DROP TABLE IF EXISTS Telephone cascade;
DROP TABLE IF EXISTS Place cascade;
DROP TABLE IF EXISTS Lives cascade;



-- translate Entities
CREATE TABLE Musicians (
                            ssn CHAR(10) NOT NULL,
                            name CHAR(32),
                            PRIMARY KEY (ssn)
);

CREATE TABLE Instrument (
                            instrId CHAR(10) NOT NULL,
                            dname CHAR(32),
                            key CHAR(5),
                            PRIMARY KEY (instrId)
);

-- translate relationships
CREATE TABLE Plays (
                             ssn CHAR(10) NOT NULL,
                             instrId CHAR(10) NOT NULL,
                             PRIMARY KEY (ssn, instrId),
                             FOREIGN KEY (ssn) REFERENCES Musicians,
                             FOREIGN KEY (instrId) REFERENCES Instrument
);

-- many side to  a musicians, Producer relationship
CREATE TABLE Album (
                            albumIdentifier INTEGER NOT NULL,
                            copyrightDate DATE,
                            speed INTEGER,
                            tile CHAR(32),
                            ssn CHAR(10) NOT NULL,
                            PRIMARY KEY (albumIdentifier),
                            FOREIGN KEY (ssn) REFERENCES Musicians
);

--many side to an Album, Appears relationship
CREATE TABLE Songs (
                            songId INTEGER,
                            title CHAR(32),
                            author CHAR(32),
                            albumIdentifier INTEGER NOT NULL,
                            PRIMARY KEy (songId),
                            FOREIGN KEY (albumIdentifier) REFERENCES Album
);


CREATE TABLE Perform (
                            ssn CHAR(10) NOT NULL,
                            songId INTEGER,
                            PRIMARY KEY (ssn, songId),
                            FOREIGN KEY (ssn) REFERENCES Musicians,
                            FOREIGN KEY (songId) REFERENCES Songs
);

-- Entities in aggregation
CREATE TABLE Place (
                            address CHAR(32),
                            PRIMARY KEY (address)
);
CREATE TABLE Telephone (
                            phone_no CHAR(11),
                            address CHAR(32),
                            PRIMARY KEY(phone_no),
                            FOREIGN KEY (address) REFERENCES Place
);

-- relationship
CREATE TABLE Lives (
                       ssn CHAR(10) NOT NULL,
                       address CHAR(32),
                       phone_no CHAR(11),
                       PRIMARY KEY (ssn, address),
                       FOREIGN KEY (ssn) REFERENCES Musicians,
                       FOREIGN KEY (phone_no) REFERENCES Telephone,
                       FOREIGN KEY (address) REFERENCES Place

);

