-- INNER JOIN: retrieve all bookings with their respective users
SELECT b.id AS booking_id, u.id AS user_id, u.name, b.property_id, b.start_date, b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
ORDER BY b.start_date;

-- LEFT JOIN: retrieve all properties and their reviews (including properties with no reviews)
SELECT p.id AS property_id, p.name, r.id AS review_id, r.comment, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.name;

-- FULL OUTER JOIN: retrieve all users and bookings, even if unmatched
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.property_id, b.start_date, b.end_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id
ORDER BY u.id;

