-- Aggregation: Find the total number of bookings made by each user
SELECT u.id AS user_id, u.name, COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;

-- Window Function with RANK(): Rank properties based on total number of bookings
SELECT p.id AS property_id, p.name,
       COUNT(b.id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY booking_rank;

-- Window Function with ROW_NUMBER(): Number properties sequentially by bookings
SELECT p.id AS property_id, p.name,
       COUNT(b.id) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS row_num
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY row_num;

