#Part 1 - University

Design and draw an ER diagram that captures the information about the university. Use only the basic ER model
here, that is include only entities, relationships and attributes. Dont forget to indicate any key and participation
constraints. Consider the following information about a university database:

* Professors have an SSN, a name, an age, a rank and a research specialty. <bar>
* Projects have a project number, a sponsor name (e.g., NSF), a starting date, an ending date and a budget.<bar>
* Graduate students have an SSN, a name, an age and a degree program (e.g., M.S. or Ph.D.).<bar>
* Each project is managed by one professor (known as the projects principal investigator).<bar>
* Each project is worked on by one or more professors (known as the projects co-investigators).<bar>
* Professors can manage and/or work on multiple projects.<bar>
* Each project is worked on by one or more graduate students (known as the projects research assistants).<bar>
* When graduate students work on a project, a professor must supervise their work on the project. Graduate students can work on multiple projects, in which case they will have a (potentially different) supervisor for each one.<bar>
* Departments have a department number, a department name and a main office.<bar>
* Departments have a professor (known as the chairman) who runs the department.<bar>
* Professors work in one or more departments and for each depart- ment that they work in, a time percentage is associated with their job.<bar>
* Graduate students have one major department in which they are working on their degree.<bar>
* Each graduate student has another, more senior graduate student (known as a student advisor) who advises him or her on what courses to take.<bar>

#Part 2 - Notown

Design and draw an ER diagram for your schema. Be sure to indicate all key and cardinality constraints and
any assumptions that you make. Identify any constraints that you are unable to capture in the ER diagram and
briefly explain why you could not express them. The following information describes the situation that the Notown
database must model. Notown Records has decided to store information about musicians who perform on its
albums (as well as other company data) in a database.<bar>

* Each musician that records at Notown has an SSN, a name, an address and a phone number. Poorly paid
musicians often share the same address, and no address has more than one phone.<bar>
* Each instrument that is used in songs recorded at Notown has a name (e.g., guitar, synthesizer, flute) and a
musical key (e.g., C, E).<bar>
* Each album that is recorded on the Notown label has a title, a copyright date, a format (e.g., CD or MC),
and an album identifier.<bar>
* Each song recorded at Notown has a title and an author.<bar>
* Each musician may play several instruments, and a given instrument may be played by several musicians.<bar>
* Each album has a number of songs on it, but no song may appear on more than one album.<bar>
* Each song is performed by one or more musicians, and a musician may perform a number of songs.<bar>
* Each album has exactly one musician who acts as its producer. A musician may produce several albums, of course.<bar>

