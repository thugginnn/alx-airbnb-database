# Database Seeding

This script populates the database with sample data to simulate an Airbnb-like environment.

## Entities Seeded:
- Users: 3 sample users (guest, host, admin)
- Properties: 2 properties listed by the host
- Bookings: 2 bookings, reflecting different statuses
- Payments: Payment data linked to bookings
- Reviews: User reviews for properties
- Messages: Communication between users

## How to Execute:
Run the script in your SQL environment to insert the sample data:
```sql
source path/to/seed.sql;
