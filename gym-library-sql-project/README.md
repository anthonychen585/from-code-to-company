# Gym Membership Database

A small SQL project modeling a gym's membership system — members, classes, and class bookings — built while learning relational database design and SQL fundamentals.

## Schema

- **members** — gym members (id, name, age)
- **classes** — classes offered by the gym (id, name, price)
- **bookings** — a many-to-many join table linking members to the classes they've booked

## What This Project Demonstrates

- Schema design with primary keys and foreign keys
- CRUD operations (`CREATE TABLE`, `INSERT`, `SELECT`, `UPDATE`, `DELETE`)
- Joins (`JOIN`, `LEFT JOIN`) across multiple tables
- Aggregate functions and `GROUP BY` / `HAVING`
- Subqueries

## Example Queries
```sql
-- Total revenue per class, only showing classes with more than 1 booking,
-- sorted from highest revenue to lowest
SELECT classes.name AS class_name, SUM(classes.price) AS total_revenue, COUNT(bookings.id) AS num_bookings
FROM classes
LEFT JOIN bookings ON bookings.class_id = classes.id
GROUP BY classes.id, classes.name
HAVING COUNT(bookings.id) > 1
ORDER BY total_revenue DESC;
```

## How to Run

This project uses SQLite. Open `gym_schema.sql` in any SQLite client (e.g., [DB Browser for SQLite](https://sqlitebrowser.org/) or VS Code + SQLTools) and run it against `gym.db`.