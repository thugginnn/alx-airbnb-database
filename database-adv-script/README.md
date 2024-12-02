# Advanced SQL Joins: Airbnb Database

## Overview:
This project demonstrates the use of various SQL joins to extract meaningful data from a simulated Airbnb database.

## SQL Queries:
1. **INNER JOIN:**  
   Retrieves bookings and their respective users.  
   ```sql
   SELECT bookings.id AS booking_id, bookings.booking_date, users.id AS user_id, users.name
   FROM bookings
   INNER JOIN users ON bookings.user_id = users.id;
