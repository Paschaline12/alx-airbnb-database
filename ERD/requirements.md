# ER Diagram Requirements for Airbnb Database

## Entities and Attributes

### User
- user_id (Primary Key)
- name
- email
- password
- created_at

### Property
- property_id (Primary Key)
- name
- location
- price_per_night
- host_id (Foreign Key → User.user_id)

### Booking
- booking_id (Primary Key)
- user_id (Foreign Key → User.user_id)
- property_id (Foreign Key → Property.property_id)
- start_date
- end_date
- status

### Review
- review_id (Primary Key)
- booking_id (Foreign Key → Booking.booking_id)
- user_id (Foreign Key → User.user_id)
- rating
- comment

### Payment
- payment_id (Primary Key)
- booking_id (Foreign Key → Booking.booking_id)
- amount
- status
- method

---

## Relationships
- **User → Booking**: One user can make many bookings.
- **User → Property**: One user can host many properties.
- **Property → Booking**: One property can have many bookings.
- **Booking → Review**: One booking can have one review.
- **Booking → Payment**: One booking can have one payment.

---

## Diagram

