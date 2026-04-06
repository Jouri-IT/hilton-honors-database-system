# Hilton Honors Database System

A relational database project that simulates a hotel booking and reservation system.
Designed using **SQL** and **Oracle APEX** to manage customers, rooms, employees, and reservations.

---

## 🧠 Project Overview
This project focuses on designing and implementing a normalized relational database for a hotel booking application.
It supports core hotel operations such as room management, customer reservations, and employee-handled bookings.

---

## 🛠️ Technologies Used
- SQL
- Oracle Database
- Oracle APEX
- Relational Database Design (EER, normalization, constraints)

---

## 🗂️ Database Schema
The system consists of the following entities:
- **Customer** (`CustomerID`, `Name`, `Phone`, `Email`)
- **Room** (`RoomNumber`, `Type`, `Price`, `Status`)
- **Employee** (`EmployeeID`, `Name`, `JobTitle`)
- **Reservation** (`ReservationID`, `CheckIn`, `CheckOut`, `TotalPrice`, `CustomerID`, `RoomNumber`, `EmployeeID`)

### Relationships

| Entity | Relationship | Entity | Multiplicity |
|----------|--------------|-------------|--------------|
| Customer | Makes | Reservation | 1..1 to 0..* |
| Room | Included in | Reservation | 1..1 to 0..* |
| Employee | Manages | Reservation | 1..1 to 1..* |

---

## 📁 File Structure
```
schema/
  01_create_tables.sql       -- DDL: CREATE TABLE statements with constraints
  02_insert_data.sql         -- DML: Sample data for all tables
queries/
  01_retrieval_queries.sql   -- SELECT queries (filters, joins, aggregates, subqueries)
  02_update_queries.sql      -- UPDATE and DELETE transactions
  03_insert_queries.sql      -- INSERT transactions
```

---

## 🔍 Features
- Create, update, and delete customer records
- Manage hotel rooms and availability
- Create and cancel reservations
- Retrieve reservations using advanced SQL queries
- Filter rooms by type, price, and availability
- Interactive UI built using Oracle APEX

---

## 📊 Sample SQL Operations
- List rooms by type or price range
- List rooms ordered by price
- List rooms with prices greater than average
- Retrieve reservations within specific dates or price ranges
- Retrieve reservations by employee and price range
- Update customer information
- Cancel reservations

---

## 🎓 Academic Context
This project was developed as part of **IT222 – Database Principles**
at **King Saud University**, College of Computer and Information Sciences, 1st Semester 1447 H.

**Supervisor:** Noura Bander Al-Saud
