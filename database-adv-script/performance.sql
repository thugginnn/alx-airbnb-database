-- Initial Complex Query
SELECT 
    bookings.id AS booking_id,
    users.name AS user_name,
    properties.title AS property_title,
    payments.amount,
    payments.payment_date
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id
WHERE payments.status = 'completed';

-- After identifying inefficiencies, possible optimized query
-- Optimization: Ensure only necessary fields are retrieved, and indexes are utilized
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE pay.status = 'completed';
