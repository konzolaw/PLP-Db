# Church Donations and Missionaries Management System 🇰🇪

A MySQL-based database system designed to manage and streamline **church operations in Kenya**, including donations, donor records, missionaries, service postings, and church locations.

## 📌 Project Overview

This system models a church ecosystem with the ability to:
- Record donor information and donations
- Track church locations across Kenya
- Manage missionary details and assignments
- Organize service postings across East Africa
- Support various local payment methods like **M-Pesa**, **Bank Transfers**, and **Airtel Money**

## 🛠️ Technologies Used

- **MySQL**: Relational Database
- **SQL**: DDL & DML
- **ERD Tool**: ( Draw.io, MySQL Workbench)

## 🗃️ Database Schema

The system is made up of the following main tables:

| Table               | Description |
|--------------------|-------------|
| `Addresses`         | Stores physical addresses used by churches and missionaries |
| `Churches`          | Contains details of various churches in Kenya |
| `Donors`            | Individuals or organizations who contribute donations |
| `Donations`         | Records the amount, method, and date of contributions |
| `Missionaries`      | Stores missionary personal and assignment details |
| `Service_Postings`  | Details about missionary assignments across different regions |
| `Ref_Countries`     | Reference table for East African countries |
| `Ref_Payment_Methods` | Lists accepted donation payment methods |

> A full **ERD (Entity-Relationship Diagram)** is included in the repository as `Church_evang.pdf`.

## 📂 Project Structure

