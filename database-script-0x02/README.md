# Airbnb Database Seed Data

This folder contains SQL scripts to populate the Airbnb database with sample data.

## Files
- **seed.sql** → Inserts users, properties, bookings, payments, and reviews.
- **README.md** → Documentation.

## Sample Data
- **Users**: 3 sample users (Alice, Bob, Charlie).
- **Properties**: Cottage, Beach Villa, Mountain Cabin.
- **Bookings**: Pending and confirmed bookings across properties.
- **Payments**: Completed and pending transactions.
- **Reviews**: Ratings and comments from users.

## Usage
Run the script in MySQL after loading the schema:

```bash
mysql -u root -p < ../database-script-0x01/schema.sql
mysql -u root -p < seed.sql

