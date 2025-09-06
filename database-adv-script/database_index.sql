-- Indexes for Users table
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_users_name ON users(name);

-- Indexes for Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Indexes for Properties table
CREATE INDEX idx_properties_id ON properties(id);
CREATE INDEX idx_properties_name ON properties(name);

-- Performance check using EXPLAIN ANALYZE before and after indexes

-- Query to join bookings with users and filter by start_date
EXPLAIN ANALYZE
SELECT b.id, u.name
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE b.start_date >= '2025-01-01'
ORDER BY u.name;

-- Query to count bookings per property
EXPLAIN ANALYZE
SELECT p.id, p.name, COUNT(b.id) AS total_bookings
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY total_bookings DESC;

