-- seed.sql
-- Insert sample data into Airbnb database

-- USERS
INSERT INTO users (user_id, name, email, password)
VALUES
('u1', 'Alice Johnson', 'alice@example.com', 'password123'),
('u2', 'Bob Smith', 'bob@example.com', 'securePass'),
('u3', 'Charlie Brown', 'charlie@example.com', 'charliePass');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, location, price_per_night)
VALUES
('p1', 'u1', 'Cozy Cottage', 'Nairobi', 50.00),
('p2', 'u2', 'Beach Villa', 'Mombasa', 120.00),
('p3', 'u1', 'Mountain Cabin', 'Naivasha', 80.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, user_id, property_id, start_date, end_date, status)
VALUES
('b1', 'u3', 'p1', '2025-09-10', '2025-09-12', 'confirmed'),
('b2', 'u2', 'p3', '2025-09-15', '2025-09-17', 'pending'),
('b3', 'u3', 'p2', '2025-09-20', '2025-09-25', 'confirmed');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, status, method)
VALUES
('pay1', 'b1', 100.00, 'completed', 'credit_card'),
('pay2', 'b2', 160.00, 'pending', 'paypal'),
('pay3', 'b3', 600.00, 'completed', 'mobile_money');

-- REVIEWS
INSERT INTO reviews (review_id, booking_id, user_id, rating, comment)
VALUES
('r1', 'b1', 'u3', 5, 'Amazing stay, highly recommend!'),
('r2', 'b3', 'u3', 4, 'Great villa, but Wi-Fi was slow.');

