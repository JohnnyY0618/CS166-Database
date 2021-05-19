# CS 166 Project Description
## Introduction
In this project, we will model and build a hospital database management system. We will manage
this system to track information about different hospitals, such as the specialized departments
they maintain, the maintenance of these departments, the doctors and staff and the appointments
attended by the doctors, the medical records of the patients who took the appointments.

The project consists of three phases: (i) Requirement Analysis using the ER-model design, (ii)
Translation to Relational schema, and (iii) Implementation.

### i. Requirement Analysis (Phase 1: ER Diagram)

You will design a hospital database management system that serves the needs of hospital
managers, doctors, and patients. Each of these types of individuals needs access to the following
information:

__Hospital Management:__
1. Given a department ID, get the active appointments for the week.
2. Given a department ID and a date, find (i) the available appointments, (ii) the active
   appointments, (iii) the list of patients who made appointments on that given date.
3. Given a doctor name and a date, list all the available appointments of the doctor for the
   given date.
4. Given a patient ID, retrieve the patient details (Name, Age, Gender, Address, Total
   number of appointments to the hospital, etc.).
5. Given a department ID and a patient ID, list all the appointments (active or past) made by
   the patient in that department.
6. Given a maintenance staff ID, list all the requests addressed by the staff.
   N.B.: Active appointments are already booked by the patients, Past appointments are already
   attended by the patients, and Available appointments can be booked by patients. 
   
__Hospital Maintenance Staff:__
1. Given a date range, list all the appointments (past or active) made by a given patient ID.
2. Given a doctor name, list all maintenance requests made by the doctor.
3. After a maintenance request is addressed, make necessary entries showing the available
   appointments for that doctor of the department. 
   
__Patients:__
1. Given a hospital name, find the specialized departments in the hospital.
2. Given a hospital name and a specialized department name, find all the doctors whose
   appointments are available on the week.
3. Given an appointment number, find the appointment details (time slot, doctor name,
   department, etc.)
4. Make an appointment for a doctor of a department:
- Get on the waitlist for an appointment if the chosen doctor has no available slots
  in the week. 
__Doctors:__
1. Make a maintenance request with a list of available appointments (time slot, department
   name, number of patients per hour, etc.).
