-- Inserting user: Tim Dobson
INSERT INTO gn_user (
  uuid,
  name,
  email,
  phone,
  role,
  created_by,
  amended_by,
  created_at,
  updated_at
)
VALUES (
  '6b134067-3813-4bea-84e6-8eeaf755c5ef',
  'Tim Dobson',
  'tim@migratingdragons.com',
  '',
  'Administrator',
  '',
  '',
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP
);

-- Inserting user: Graham Walden
INSERT INTO gn_user (
  uuid,
  name,
  email,
  phone,
  role,
  created_by,
  amended_by,
  created_at,
  updated_at
)
VALUES (
  'e47d1391-f6c4-4188-8aa3-fcc38c3ed8a5',
  'Graham Walden',
  'wal@xebit.net',
  '',
  'Administrator',
  '',
  '',
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP
);
