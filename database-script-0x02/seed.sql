-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
    (UUID(), 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '1234567890', 'guest'),
    (UUID(), 'Alice', 'Smith', 'alice.smith@example.com', 'hashed_password_2', '0987654321', 'host'),
    (UUID(), 'Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_3', '1122334455', 'admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES 
    (UUID(), (SELECT user_id FROM User WHERE email='alice.smith@example.com'), 'Cozy Apartment', 'A nice and cozy apartment downtown.', 'New York, NY', 150.00),
    (UUID(), (SELECT user_id FROM User WHERE email='alice.smith@example.com'), 'Beach House', 'Spacious house near the beach.', 'Malibu, CA', 350.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, status)
VALUES 
    (UUID(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE email='john.doe@example.com'), '2024-01-01', '2024-01-05', 'confirmed'),
    (UUID(), (SELECT property_id FROM Property WHERE name='Beach House'), (SELECT user_id FROM User WHERE email='john.doe@example.com'), '2024-02-10', '2024-02-15', 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES 
    (UUID(), (SELECT booking_id FROM Booking WHERE status='confirmed'), 750.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES 
    (UUID(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE email='john.doe@example.com'), 5, 'Amazing place! Very clean and comfortable.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES 
    (UUID(), (SELECT user_id FROM User WHERE email='john.doe@example.com'), (SELECT user_id FROM User WHERE email='alice.smith@example.com'), 'Hi, is the apartment available for the weekend?'),
    (UUID(), (SELECT user_id FROM User WHERE email='alice.smith@example.com'), (SELECT user_id FROM User WHERE email='john.doe@example.com'), 'Yes, it is available! Let me know if you need any details.');
