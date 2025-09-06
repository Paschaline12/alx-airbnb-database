-- Initial query: retrieve all bookings with user, property, and payment details
SELECT b.id AS booking_id,
       u.id AS user_id, u.name AS user_name, u.email,
       p.id AS property_id, p.name AS property_name, p.location,
       pay.id AS payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

-- Analyze performance with EXPLAIN
EXPLAIN
SELECT b.id AS booking_id,
       u.id AS user_id, u.name AS user_name, u.email,
       p.id AS property_id, p.name AS property_name, p.location,
       pay.id AS payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

-- Refactored query: only include essential columns and use indexes on join keys
EXPLAIN
SELECT b.id AS booking_id,
       u.name AS user_name,
       p.name AS property_name,
       pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

