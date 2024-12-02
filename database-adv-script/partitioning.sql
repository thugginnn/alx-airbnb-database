-- Create the Booking table with partitioning
CREATE TABLE Booking (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(20)
) PARTITION BY RANGE (start_date);

-- Create partitions for each year (example for 2023 and 2024)
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2023-12-31');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2024-12-31');

-- Add more partitions as needed for additional date ranges

EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';

EXPLAIN ANALYZE
SELECT * FROM Booking_2024
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';
