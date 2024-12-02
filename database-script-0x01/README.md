# Airbnb Database Schema Design

This document describes the design of the database schema for an Airbnb-like application. The schema follows relational database principles and optimizes for performance with indexes on frequently queried columns.

## Tables

### 1. User
The `User` table stores information about users, including their role (guest, host, admin), personal details, and account information.

### 2. Property
The `Property` table stores information about properties listed by hosts. It includes attributes such as location, price, description, and is linked to the `User` table through the `host_id`.

### 3. Booking
The `Booking` table records details of property bookings made by users. Each booking is linked to both the `Property` and `User` tables via foreign keys.

### 4. Payment
The `Payment` table records payments for bookings. It links to the `Booking` table and stores details about payment methods and amounts.

### 5. Review
The `Review` table stores feedback left by users about properties. Reviews are linked to both the `Property` and `User` tables.

### 6. Message
The `Message` table stores direct messages between users. Each message is linked to both the sender and recipient, who are users in the `User` table.

## Constraints

- **Primary Keys**: Each table has a primary key that uniquely identifies records.
- **Foreign Keys**: Foreign keys are used to establish relationships between tables (e.g., `host_id` in `Property` references `user_id` in `User`).
- **Indexes**: Indexes have been created on columns that are frequently queried, such as `email` in the `User` table, `host_id` in the `Property` table, and others for optimizing search performance.

## Future Considerations

- **Normalization**: The schema is normalized to 3NF, eliminating redundancy and ensuring data integrity.
- **Scalability**: Indexes have been implemented to enhance performance as the database grows.
