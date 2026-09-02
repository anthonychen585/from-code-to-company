CREATE TABLE members (
    id INTEGER,
    name TEXT,
    age INTEGER
);

CREATE TABLE classes (
    id INTEGER,
    name TEXT,
    price REAL
);

CREATE TABLE bookings (
    id INTEGER,
    member_id INTEGER,
    class_id INTEGER
);

INSERT INTO members (id, name, age) VALUES (1, 'Maria', 28);
INSERT INTO members (id, name, age) VALUES (2, 'Devon', 35);
INSERT INTO members (id, name, age) VALUES (3, 'Priya', 22);

INSERT INTO classes (id, name, price) VALUES (1, 'Yoga', 15.00);
INSERT INTO classes (id, name, price) VALUES (2, 'Spin', 20.00);
INSERT INTO classes (id, name, price) VALUES (3, 'Boxing', 25.00);

INSERT INTO bookings (id, member_id, class_id) VALUES (1, 1, 1);
INSERT INTO bookings (id, member_id, class_id) VALUES (2, 1, 2);
INSERT INTO bookings (id, member_id, class_id) VALUES (3, 2, 1);
INSERT INTO bookings (id, member_id, class_id) VALUES (4, 3, 3);
INSERT INTO bookings (id, member_id, class_id) VALUES (5, 2, 3);

SELECT * FROM bookings;