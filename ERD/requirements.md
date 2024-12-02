# ER Diagram for ALX Airbnb Database

## Entities and Attributes:
- **User**
  - Attributes: user_id (PK), first_name, last_name, email, password_hash, phone_number, role, created_at.
- **Property**
  - Attributes: property_id (PK), host_id (FK), name, description, location, pricepernight, created_at, updated_at.
- **Booking**
  - Attributes: booking_id (PK), property_id (FK), user_id (FK), start_date, end_date, total_price, status, created_at.
- **Payment**
  - Attributes: payment_id (PK), booking_id (FK), amount, payment_date, payment_method.
- **Review**
  - Attributes: review_id (PK), property_id (FK), user_id (FK), rating, comment, created_at.
- **Message**
  - Attributes: message_id (PK), sender_id (FK), recipient_id (FK), message_body, sent_at.

## Relationships:
- **User ↔ Booking**: One-to-Many
- **User ↔ Property**: One-to-Many
- **Property ↔ Booking**: One-to-Many
- **Booking ↔ Payment**: One-to-One
- **Property ↔ Review**: One-to-Many
- **User ↔ Message**: One-to-Many (self-referential)

