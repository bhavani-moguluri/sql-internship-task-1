-- Create students table with proper data types and constraints
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    DOB TEXT NOT NULL,
    created_at TEXT
);

-- ALTER TABLE operations
ALTER TABLE students ADD COLUMN phone_number TEXT;
ALTER TABLE students RENAME COLUMN full_name TO full_name;
ALTER TABLE students DROP COLUMN phone_number;

-- Valid insert (constraint satisfied)
INSERT INTO students (full_name, email, DOB, created_at)
VALUES ('Bhavya Moguluri', 'bhavya@gmail.com', '2003-05-10', '2026-01-16');

-- Invalid insert (to demonstrate constraint failure)
-- This will fail because full_name is NOT NULL and email must be UNIQUE
-- INSERT INTO students (full_name, email, DOB)
-- VALUES (NULL, 'bhavya@gmail.com', '2003-05-10');