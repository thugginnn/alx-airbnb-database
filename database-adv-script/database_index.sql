-- Create index on 'email' column in the 'User' table, as it may be frequently used in WHERE clauses.
CREATE INDEX idx_user_email ON User(email);

-- Create index on 'property_id' column in the 'Booking' table, as it is likely used in JOINs.
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Create index on 'user_id' column in the 'Booking' table, as it is often used in JOINs and WHERE clauses.
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create index on 'start_date' column in the 'Booking' table, as it is commonly used for filtering and sorting.
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Create index on 'property_id' column in the 'Property' table for faster lookups in JOINs or queries filtering by property.
CREATE INDEX idx_property_property_id ON Property(property_id);

-- Create index on 'price' column in the 'Property' table if frequently used in queries for sorting or filtering.
CREATE INDEX idx_property_price ON Property(price);
