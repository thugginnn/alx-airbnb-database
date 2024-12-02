# Performance Monitoring and Refinement Report

## Objective
Monitor and refine the performance of frequently used queries by identifying bottlenecks and implementing optimizations.

---

## Queries Monitored

### Query 1: Fetching Bookings by User ID
```sql
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = 101;
