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

## Subqueries

### 1. Non-Correlated Subquery
**Objective:** Find all properties with an average rating greater than 4.0.

**Query Explanation:**  
This query uses a subquery to calculate the average rating for each property. Only properties with an average rating above 4.0 are included in the result.

### 2. Correlated Subquery
**Objective:** Find users who have made more than 3 bookings.

**Query Explanation:**  
This correlated subquery checks each user to see if they have more than 3 bookings. It references the `users` table in the outer query, making it correlated.

## Aggregations and Window Functions

### 1. Total Bookings per User
**Objective:** Find the total number of bookings made by each user.

**Query Explanation:**  
This query uses `COUNT` and `GROUP BY` to calculate the number of bookings for each user. It joins the `users` and `bookings` tables and sorts the results by total bookings.

### 2. Rank Properties by Bookings
**Objective:** Rank properties based on the total number of bookings.

**Query Explanation:**  
This query uses the `RANK()` window function to rank properties by their booking count. Properties with the same booking count receive the same rank.
