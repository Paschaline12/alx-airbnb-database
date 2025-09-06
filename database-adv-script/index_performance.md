# Index Performance Analysis

This document explains the indexes created and the performance improvements observed.

## Created Indexes
- `users.id`, `users.name`
- `bookings.user_id`, `bookings.property_id`, `bookings.start_date`
- `properties.id`, `properties.name`

## Performance Testing
We used the `EXPLAIN` command before and after adding indexes.

### Example Query
```sql
EXPLAIN SELECT b.id, u.name
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE b.start_date >= '2025-01-01'
ORDER BY u.name;




