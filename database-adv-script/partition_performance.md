# Partitioning Performance Report

## Objective
Optimize the performance of queries on the `Booking` table using partitioning by `start_date`.

---

## Initial Performance (Before Partitioning)
**Execution Time:** 400 ms  
**Challenges:**
- Full table scans for date-range queries.
- Inefficient indexing due to large data volume.

---

## Partitioning Implementation
**Approach:**
- Partitioned the `Booking` table by `start_date` into yearly ranges (e.g., 2023, 2024).
- Each partition stores data for a specific year.

**SQL Commands:**
- See `partitioning.sql` for partition creation.

---

## Performance After Partitioning
**Execution Time:** 120 ms  
**Improvements:**
- Query execution time reduced by over 70%.
- Scans now focus only on relevant partitions instead of the entire table.
- Easier maintenance and data management by isolating date ranges.

---

## Conclusion
Partitioning the `Booking` table significantly improved query performance for date-range searches. This strategy is essential for optimizing large datasets, ensuring efficient data access, and reducing query load.
