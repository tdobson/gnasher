CREATE VIEW gn_vw_booking_details AS
SELECT
  b.id AS booking_id,
  b.uuid AS booking_uuid,
  b.start_date,
  b.end_date,
  b.adults,
  b.children,
  b.recorded_cost,
  b.booked_by,
  b.amended_by,
  b.status,
  b.booking_type,
  b.created_at AS booking_created_at,
  b.updated_at AS booking_updated_at,
  u.uuid AS user_uuid,
  u.name AS user_name,
  u.email AS user_email,
  u.phone AS user_phone,
  u.role AS user_role,
  v.id AS villa_id,
  v.uuid AS villa_uuid,
  v.name AS villa_name,
  v.description AS villa_description,
  v.resort AS villa_resort,
  v.capacity_adults,
  v.capacity_children,
  v.price,
  v.owner AS villa_owner
FROM gn_bookings b
JOIN gn_user u ON b.customer_uuid = u.uuid
JOIN gn_villas v ON b.villa_uuid = v.uuid;
