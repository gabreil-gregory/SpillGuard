-- SpillGuard Database Schema
-- Stores dam spillage alerts and community info

-- Create database (if not exists)
CREATE DATABASE IF NOT EXISTS spillguard;
USE spillguard;

-- Table for storing alerts
CREATE TABLE alerts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255) NOT NULL,
    risk_level ENUM('Low','Medium','High') NOT NULL,
    reported_time DATETIME NOT NULL,
    description TEXT
);

-- Table for storing community users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    region VARCHAR(100),
    subscribed BOOLEAN DEFAULT TRUE
);

-- Sample data for testing
INSERT INTO alerts (location, risk_level, reported_time, description)
VALUES 
('Volta Region, Ghana', 'High', '2025-08-24 08:00:00', 'Flooding risk due to dam spillage'),
('Central Region, Ghana', 'Medium', '2025-08-24 09:30:00', 'Rising water levels reported');

INSERT INTO users (name, email, phone, region, subscribed)
VALUES
('John Doe', 'john@example.com', '+233123456789', 'Volta Region', TRUE),
('Jane Smith', 'jane@example.com', '+233987654321', 'Central Region', TRUE);
