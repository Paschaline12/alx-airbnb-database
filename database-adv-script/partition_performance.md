# Partitioning Performance Report

## Objective
The `bookings` table had performance issues due to its large size.  
To improve query speed, we partitioned the table by the `start_date` column (RANGE by year).

## Method
1. Created a new `bookings_partitioned` table partitioned by year.
2. Inserted existing booking records into the partitioned table.
3. Ran performance tests using `EXPLAIN ANALYZE` on queries filtering by `start_date`.

## Results
- **Original Table**: Queries scanned the entire `bookings` table.
- **Partitioned Table**: Queries only scanned the relevant partition (e.g., `p2025`).
- Execution plan showed significantly fewer rows processed for date-range queries.

## Conclusion
Partitioning the `bookings` table on `start_date` reduced query execution time when filtering by date.  
This approach is most beneficial for large datasets where queries are frequently restricted to specific date ranges.

