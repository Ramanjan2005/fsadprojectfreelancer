-- 1. Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS freelance;

-- 2. Use the database
USE freelance;

-- 3. Create the users table
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- 4. Insert sample users
INSERT IGNORE INTO users (username, email, password) VALUES
('veeri.ramanjan', 'veeri.ramanjan@gmail.com', '9948525700'),
('srinivas.kumar', 'srinivas.kumar@gmail.com', '9948525700'),
('adthiya', 'adthiya@gmail.com', '9948525700');

-- 5. Insert another user with placeholder-style values
INSERT IGNORE INTO users (username, email, password) VALUES
('username:varchar', 'xyz@gmail.com', 'password:varchar');

-- 6. View all users
SELECT * FROM users;
