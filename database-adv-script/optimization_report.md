# Optimization Report

## Objective
Optimize a complex query retrieving data from multiple tables (bookings, users, properties, payments) to improve performance.

---

## Initial Query Performance
**Execution Time:** 250 ms  
**Issues Identified:**
1. Full table scans on `payments` due to lack of indexing.
2. Retrieval of unnecessary columns, increasing data load.
3. Nested joins without indexing led to high I/O operations.

---

## Refactored Query Improvements
1. **Index Utilization:**
   - Created indexes on:
     - `payments(status)`
     - `bookings(user_id)`
     - `bookings(property_id)`

2. **Reduced Data Retrieval:**
   - Selected only necessary columns instead of `SELECT *`.

3. **Query Refactoring:**
   - Simplified join logic and ensured efficient filtering.

---

## Performance After Optimization
**Execution Time:** 50 ms  
**Changes:**
- Index usage reduced execution time by over 75%.
- Optimized data retrieval reduced processing overhead.

---

## Conclusion
Refactoring the query and applying indexing significantly improved performance, demonstrating the importance of query structure and database optimization in handling large datasets.
