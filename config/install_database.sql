-- Villas (Apartments) Table
CREATE TABLE gn_villas (
  uuid VARCHAR(36) PRIMARY KEY UNIQUE NOT NULL,       -- Universally Unique Identifier (UUID) for the villa
  website_id INT,                          -- Optional legacy ID for the villa
  legacy_id INT,                          -- Optional legacy ID for the villa
  name VARCHAR(255) NOT NULL,            -- Name of the villa
  description VARCHAR(3000),              -- Optional description of the villa
  resort VARCHAR(255),                   -- Resort where the villa is located
  capacity_adults INT NOT NULL,          -- Maximum number of adults the villa can accommodate
  capacity_children INT NOT NULL,        -- Maximum number of children the villa can accommodate
  price DECIMAL(10,2) NOT NULL,          -- Price of the villa per night
  owner VARCHAR(255) NOT NULL,           -- User UUID of the villa owner
      created_by VARCHAR(255) NOT NULL,      -- User who made added the villa
      amended_by VARCHAR(255),              -- User who last amended the villa
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time the villa was created
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Date and time the villa was last updated
);

-- User Table
CREATE TABLE gn_user (
  uuid VARCHAR(36) PRIMARY KEY unique,   -- Universally Unique Identifier (UUID) for the user
  role VARCHAR(255) NOT NULL,           -- Role of the user (e.g., customer, owner, admin, booking staff)
  name VARCHAR(255) NOT NULL,           -- Name of the user
  email VARCHAR(255) NOT NULL,          -- Email address of the user
  phone VARCHAR(30) NOT NULL,           -- Phone number of the user
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time the user was created
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Date and time the user was last updated
    created_by VARCHAR(255) NOT NULL,      -- User who made added the user
    amended_by VARCHAR(255),              -- User who last amended the user
);

-- Bookings Table
CREATE TABLE gn_bookings (
  id SERIAL PRIMARY KEY,                -- Unique identifier for the booking
  uuid VARCHAR(36) UNIQUE NOT NULL,     -- Universally Unique Identifier (UUID) for the booking
  customer_uuid VARCHAR(36) NOT NULL,   -- User UUID of the customer who made the booking
  villa_uuid VARCHAR(36) NOT NULL,      -- UUID of the villa that was booked
  start_date DATE NOT NULL,             -- Start date of the booking
  end_date DATE NOT NULL,               -- End date of the booking
  adults INT NOT NULL,                  -- Number of adults in the booking
  children INT NOT NULL,                -- Number of children in the booking
  recorded_cost DECIMAL(10,2) NOT NULL, -- Total cost of the booking
  booked_by VARCHAR(255) NOT NULL,      -- User who made the booking
  amended_by VARCHAR(255),              -- User who amended the booking
  status ENUM('pending', 'confirmed', 'cancelled') NOT NULL DEFAULT 'pending', -- Status of the booking
  booking_type ENUM('regular', 'special') NOT NULL DEFAULT 'regular', -- Type of the booking
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time the booking was created
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Date and time the booking was last updated
);
