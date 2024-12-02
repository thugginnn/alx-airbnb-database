-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.id AS booking_id,
    bookings.booking_date,
    users.id AS user_id,
    users.name AS user_name
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.id AS property_id,
    properties.address,
    reviews.id AS review_id,
    reviews.comment
FROM 
    properties
LEFT JOIN 
    reviews ON properties.id = reviews.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Simulated FULL OUTER JOIN using UNION (MySQL doesn't support FULL OUTER JOIN natively)
SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.booking_date
FROM 
    users
LEFT JOIN 
    bookings ON users.id = bookings.user_id

UNION

SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.booking_date
FROM 
    bookings
LEFT JOIN 
    users ON bookings.user_id = users.id;
