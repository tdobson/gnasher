-- Villas (Apartments) Table
CREATE INDEX idx_gn_villas_name ON gn_villas (name);
CREATE INDEX idx_gn_villas_resort ON gn_villas (resort);
CREATE INDEX idx_gn_villas_owner ON gn_villas (owner);
CREATE INDEX idx_gn_villas_created_at ON gn_villas (created_at);
CREATE INDEX idx_gn_villas_updated_at ON gn_villas (updated_at);

-- User Table
CREATE INDEX idx_gn_users_role ON gn_user (role);
CREATE INDEX idx_gn_users_email ON gn_user (email);
CREATE INDEX idx_gn_users_created_at ON gn_user (created_at);
CREATE INDEX idx_gn_users_updated_at ON gn_user (updated_at);

-- Bookings Table
CREATE INDEX idx_gn_bookings_customer_uuid ON gn_bookings (customer_uuid);
CREATE INDEX idx_gn_bookings_villa_uuid ON gn_bookings (villa_uuid);
CREATE INDEX idx_gn_bookings_start_date ON gn_bookings (start_date);
CREATE INDEX idx_gn_bookings_end_date ON gn_bookings (end_date);
CREATE INDEX idx_gn_bookings_status ON gn_bookings (status);
CREATE INDEX idx_gn_bookings_booking_type ON gn_bookings (booking_type);
CREATE INDEX idx_gn_bookings_created_at ON gn_bookings (created_at);
CREATE INDEX idx_gn_bookings_updated_at ON gn_bookings (updated_at);
