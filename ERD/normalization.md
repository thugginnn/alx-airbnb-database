# Normalization to Third Normal Form (3NF)

## First Normal Form (1NF)
The schema satisfies **1NF** as all attributes contain atomic (indivisible) values, and there are no repeating groups or arrays in any of the tables.

## Second Normal Form (2NF)
The schema satisfies **2NF** as there are no partial dependencies. All non-key attributes are fully dependent on the primary key, and since all primary keys are single-column, no partial dependencies exist.

## Third Normal Form (3NF)
The schema is in **3NF** after eliminating transitive dependencies. Below are the key adjustments made:

### 1. Booking Table:
- The `total_price` attribute was removed from the `Booking` table. This value can be derived from `pricepernight`, `start_date`, and `end_date` during application processing rather than being stored in the database, eliminating the transitive dependency between `total_price`, `start_date`, and `end_date`.

### 2. No Other Changes Needed:
- The rest of the tables (User, Property, Payment, Review, and Message) were already in 3NF with no further adjustments required.

## Conclusion
By applying normalization principles up to **3NF**, the schema eliminates redundancy, ensures data integrity, and minimizes the risk of anomalies when inserting, updating, or deleting data.
