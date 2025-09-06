# Database Performance Monitoring and Refinement

## Objective
To continuously monitor and refine the performance of the `alx-airbnb-database` system, we analyzed frequently used queries with `EXPLAIN ANALYZE` and `SHOW PROFILE`.  
The goal was to identify bottlenecks and apply schema improvements.

---

## Step 1: Queries Monitored

### Query 1: Retrieve all bookings for a given user
```sql
EXPLAIN ANALYZE
SELECT b.id, b.property_id, b.start_date, b.end_date
FROM bookings b
WHERE b.user_id = 5
ORDER BY b.start_date;

