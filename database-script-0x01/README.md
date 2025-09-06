# Airbnb Database Schema

This folder contains the SQL script to define the database schema for the **ALX Airbnb Project**.

## Files
- **schema.sql** → Defines tables, constraints, and indexes.
- **README.md** → Documentation.

## Entities
1. **Users** → Stores user info.
2. **Properties** → Stores property listings.
3. **Bookings** → Stores booking details.
4. **Payments** → Stores payment info.
5. **Reviews** → Stores user reviews.

## Constraints
- Primary keys are UUIDs.
- Foreign keys ensure relationships between users, properties, bookings, payments, and reviews.
- Indexes improve query performance on frequently searched columns (email, location, date ranges, etc.).

## Usage
Run the schema file in MySQL:

```bash
mysql -u root -p < schema.sql
