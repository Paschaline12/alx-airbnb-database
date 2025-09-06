-- Drop the table if it exists (for testing)
DROP TABLE IF EXISTS bookings_partitioned;

-- Create a partitioned version of the bookings table based on start_date
CREATE TABLE bookings_partitioned (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    amount DECIMAL(10,2)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Insert sample data from original bookings table
INSERT INTO bookings_partitioned
SELECT id, user_id, property_id, start_date, end_date, amount
FROM bookings;

-- Test query performance: fetch bookings from 2025
EXPLAIN ANALYZE
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

-- Compare with original table
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

