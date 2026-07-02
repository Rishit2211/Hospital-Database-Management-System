# Hospital-Database-Management-System
A database-driven Hospital Management System for managing patient records, doctor details, appointments, treatments, and billing efficiently through a centralized platform.
# Hospital Database Management System

## Overview

The Hospital Database Management System is a database-driven project designed to streamline hospital operations by managing patient records, doctor information, appointments, treatments, and billing data. The system provides a centralized platform for storing and retrieving healthcare-related information efficiently and securely.

## Features

* Patient registration and management
* Doctor and staff information management
* Appointment scheduling and tracking
* Medical history and treatment record management
* Billing and payment tracking
* Database queries and reporting
* Secure and organized data storage

## Database Modules

### Patient Management

* Add new patients
* Update patient details
* View patient records
* Delete patient records

### Doctor Management

* Store doctor information
* Manage specialties and departments
* View doctor schedules

### Appointment Management

* Schedule appointments
* Track appointment status
* Manage patient-doctor assignments

### Treatment Records

* Store diagnoses and treatment details
* Maintain patient medical history
* Record prescriptions and procedures

### Billing Management

* Generate bills
* Track payments
* Maintain billing history

## Database Design

The database consists of the following main entities:

* Patients
* Doctors
* Departments
* Appointments
* Treatments
* Billing
* Staff

Relationships are established using primary and foreign keys to ensure data integrity and consistency.

## Technologies Used

* SQL
* MySQL / PostgreSQL / Oracle Database (update according to your implementation)
* ER Diagram Design
* Database Normalization Techniques

## Sample Tables

| Table Name   | Description                            |
| ------------ | -------------------------------------- |
| Patients     | Stores patient information             |
| Doctors      | Stores doctor details                  |
| Appointments | Manages appointment records            |
| Treatments   | Stores treatment and diagnosis details |
| Billing      | Maintains billing information          |
| Staff        | Stores hospital staff records          |

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/hospital-database-management-system.git
   ```

2. Open your database management system.

3. Import the SQL file:

   ```sql
   source hospital_db.sql;
   ```

4. Verify that all tables and relationships are created successfully.

## Usage

* Insert patient, doctor, and appointment data.
* Execute SQL queries to retrieve records.
* Generate reports for appointments, treatments, and billing.
* Maintain and update hospital information efficiently.

## Example Queries

### Retrieve All Patients

```sql
SELECT * FROM Patients;
```

### View Upcoming Appointments

```sql
SELECT * FROM Appointments
WHERE Appointment_Date >= CURRENT_DATE;
```

### Find Doctor by Department

```sql
SELECT * FROM Doctors
WHERE Department_ID = 1;
```

## Future Enhancements

* User authentication and role-based access control
* Web-based interface integration
* Electronic Medical Records (EMR) support
* Automated report generation
* Data backup and recovery features

## Learning Outcomes

This project demonstrates:

* Relational database design
* Entity Relationship (ER) modeling
* SQL query development
* Data normalization
* Database management concepts

## Contributing

Contributions are welcome. Feel free to fork the repository, create a feature branch, and submit a pull request.

## License

This project is intended for educational and academic purposes.
