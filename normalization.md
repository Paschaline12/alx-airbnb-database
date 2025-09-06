# Database Normalization to 3NF

## Objective
Ensure the Airbnb database schema follows the **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## Step 1: First Normal Form (1NF)
- Each table must have a **primary key**.
- All attributes must hold **atomic (indivisible) values**.
- No repeating groups or arrays.

**Example**:  
The `users` table:  
✅ user_id (PK), name, email, password → all fields are atomic.

---

## Step 2: Second Normal Form (2NF)
- Must already be in 1NF.
- All non-key attributes must be **fully dependent** on the primary key.

**Fix**:  
In `bookings`, we use a composite relationship (user_id, property_id).  
All non-key fields (start_date, end_date, status) depend only on booking_id (PK), not partially on user_id or property_id.

---

## Step 3: Third Normal Form (3NF)
- Must already be in 2NF.
- No **transitive dependency** (non-key attributes depending on other non-key attributes).

**Example of violation**:  
If `properties` stored `host_name` directly, it would depend on `user_id` → transitive dependency.  
✅ Instead, we only keep `host_id` in `properties`, and `users` stores the `name`.

---

## Final 3NF Schema

### Users
- user_id (PK)
- name
- email
- password
- created_at

### Properties
- property_id (PK)
- name
- location
- price_per_night
- host_id (FK → Users.user_id)

### Bookings
- booking_id (PK)
- user_id (FK → Users.user_id)
- property_id (FK → Properties.property_id)
- start_date
- end_date
- status

### Reviews
- review_id (PK)
- booking_id (FK → Bookings.booking_id)
- user_id (FK → Users.user_id)
- rating
- comment

### Payments
- payment_id (PK)
- booking_id (FK → Bookings.booking_id)
- amount
- status
- method

---

## Conclusion
By ensuring each table:
- Has atomic attributes (1NF),
- Non-key attributes depend only on the full primary key (2NF),
- And there are no transitive dependencies (3NF),

👉 The schema is now fully normalized to **Third Normal Form (3NF)**.

